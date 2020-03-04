#include "fips202.h"
#include "packing.h"
#include "params.h"
#include "poly.h"
#include "polyvec.h"
#include "randombytes.h"
#include "sign.h"
#include "symmetric.h"

#include <stdint.h>

/*************************************************
* Name:        expand_mat
*
* Description: Implementation of ExpandA. Generates matrix A with uniformly
*              random coefficients a_{i,j} by performing rejection
*              sampling on the output stream of SHAKE128(rho|i|j).
*
* Arguments:   - polyvecl mat[K]: output matrix
*              - const unsigned char rho[]: byte array containing seed rho
**************************************************/
void PQCLEAN_DILITHIUM2_CLEAN_expand_mat(polyvecl mat[K], const unsigned char rho[SEEDBYTES]) {
    unsigned int i, j;

    for (i = 0; i < K; ++i) {
        for (j = 0; j < L; ++j) {
            PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(&mat[i].vec[j], rho, (uint16_t)((i << 8) + j));
        }
    }
}

/*************************************************
* Name:        challenge
*
* Description: Implementation of H. Samples polynomial with 60 nonzero
*              coefficients in {-1,1} using the output stream of
*              SHAKE256(mu|w1).
*
* Arguments:   - poly *c: pointer to output polynomial
*              - const unsigned char mu[]: byte array containing mu
*              - const polyveck *w1: pointer to vector w1
**************************************************/
void PQCLEAN_DILITHIUM2_CLEAN_challenge(poly *c,
                                        const unsigned char mu[CRHBYTES],
                                        const polyveck *w1) {
    unsigned int i, b, pos;
    uint64_t signs;
    unsigned char inbuf[CRHBYTES + K * POLW1_SIZE_PACKED];
    unsigned char outbuf[SHAKE256_RATE];
    shake256ctx state;

    for (i = 0; i < CRHBYTES; ++i) {
        inbuf[i] = mu[i];
    }
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(inbuf + CRHBYTES + i * POLW1_SIZE_PACKED, &w1->vec[i]);
    }

    shake256_absorb(&state, inbuf, sizeof(inbuf));
    shake256_squeezeblocks(outbuf, 1, &state);

    signs = 0;
    for (i = 0; i < 8; ++i) {
        signs |= (uint64_t)outbuf[i] << 8 * i;
    }

    pos = 8;

    for (i = 0; i < N; ++i) {
        c->coeffs[i] = 0;
    }

    for (i = 196; i < 256; ++i) {
        do {
            if (pos >= SHAKE256_RATE) {
                shake256_squeezeblocks(outbuf, 1, &state);
                pos = 0;
            }

            b = outbuf[pos++];
        } while (b > i);

        c->coeffs[i] = c->coeffs[b];
        c->coeffs[b] = 1;
        c->coeffs[b] ^= -((int32_t)signs & 1) & (1 ^ (Q - 1));
        signs >>= 1;
    }
}

/*************************************************
* Name:        crypto_sign_keypair
*
* Description: Generates public and private key.
*
* Arguments:   - unsigned char *pk: pointer to output public key (allocated
*                                   array of CRYPTO_PUBLICKEYBYTES bytes)
*              - unsigned char *sk: pointer to output private key (allocated
*                                   array of CRYPTO_SECRETKEYBYTES bytes)
*
* Returns 0 (success)
**************************************************/
int PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_keypair(uint8_t *pk, uint8_t *sk) {
    unsigned int i;
    unsigned char seedbuf[3 * SEEDBYTES]= {0x7c, 0x99, 0x35, 0xa0, 0xb0, 0x76, 0x94, 0xaa, 0x0c, 0x6d, 0x10,
                                            0xe4, 0xdb, 0x6b, 0x1a, 0xdd, 0x2f, 0xd8, 0x1a, 0x25, 0xcc, 0xb1,
                                            0x48, 0x03, 0x2d, 0xcd, 0x73, 0x99, 0x36, 0x73, 0x7f, 0x2d, 0xb5,
                                            0x05, 0xd7, 0xcf, 0xad, 0x1b, 0x49, 0x74, 0x99, 0x32, 0x3c, 0x86,
                                            0x86, 0x32, 0x5e, 0x47, 0x92, 0xf2, 0x67, 0xaa, 0xfa, 0x3f, 0x87,
                                            0xca, 0x60, 0xd0, 0x1c, 0xb5, 0x4f, 0x29, 0x20, 0x2a, 0x3e, 0x78,
                                            0x4c, 0xcb, 0x7e, 0xbc, 0xdc, 0xfd, 0x45, 0x54, 0x2b, 0x7f, 0x6a,
                                            0xf7, 0x78, 0x74, 0x2e, 0x0f, 0x44, 0x79, 0x17, 0x50, 0x84, 0xaa,
                                            0x48, 0x8b, 0x3b, 0x74, 0x34, 0x06, 0x78, 0xaa };
    unsigned char tr[CRHBYTES];
    const unsigned char *rho, *rhoprime, *key;
    uint16_t nonce = 0;
    polyvecl mat[K];
    polyvecl s1, s1hat;
    polyveck s2, t, t1, t0;

    /* Expand 32 bytes of randomness into rho, rhoprime and key */
    //randombytes(seedbuf, 3 * SEEDBYTES);
    /*printf("printing seedbuf\n");
    for (int i=0; i<3*SEEDBYTES; i++)
    {
        printf("%02X", seedbuf[i]);
    }
    printf("\n");*/
    rho = seedbuf;
    rhoprime = seedbuf + SEEDBYTES;
    key = seedbuf + 2 * SEEDBYTES;

    /* Expand matrix */
    PQCLEAN_DILITHIUM2_CLEAN_expand_mat(mat, rho);
     /*printf("\n Mat = [");
     for (int s=0; s<K; s++)
     {
     printf("[ \n");
     for(int j=0; j<L; j++)
     {
     printf("[ ");
     for(i=0; i<N; i++)
     {
     printf("%u, ", mat[s].vec[j].coeffs[i]);
     }
     printf("],\n");
     }
     printf("],");
     }
     printf("]\n");*/

    /* Sample short vectors s1 and s2 */
   // printf("Printing S1\n");
    for (i = 0; i < L; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(&s1.vec[i], rhoprime, nonce++);
    }
   
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(&s2.vec[i], rhoprime, nonce++);
    }
    
    
    
    /* Matrix-vector multiplication */
    s1hat = s1;
    PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(&s1hat);
   /* printf("\nprinting s1hat\n");
    for (i = 0; i < L; ++i){
        printf("[\n");
        for (int j=0; j<N; ++j)
            printf("%u,",(s1hat).vec[i].coeffs[j]);
        printf("]\n");
    }*/
    
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(&t.vec[i], &mat[i], &s1hat);
        PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(&t.vec[i]);
        PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(&t.vec[i]);
    }
   /* printf("\n A*S1\n");
    printf("[\n");
    for (int i=0; i< K; ++i)
    {
        printf("[\n");
        for (int j=0; j<N; ++j)
            printf("%02X,", t.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]");*/
    /* Add error vector s2 */
   PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(&t, &t, &s2);

    /* Extract t1 and write public key */
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(&t);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(&t1, &t0, &t);
    PQCLEAN_DILITHIUM2_CLEAN_pack_pk(pk, rho, &t1);
    /*printf("\n Printing PK\n\n");
    for(int i=0; i< CRYPTO_PUBLICKEYBYTES; i++)
        printf("%02X", pk[i]);
    printf("\n\n");*/
    /* Compute CRH(rho, t1) and write secret key */
    crh(tr, pk, CRYPTO_PUBLICKEYBYTES);
   /* printf("\n\nprinting t0 in keyPairGen\n\n[\n");
    for (int i=0; i<K; i++)
    {
        printf("[\n");
        for (int j=0; j<N; j++)
        printf("%u,", t0.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n");*/
    PQCLEAN_DILITHIUM2_CLEAN_pack_sk(sk, rho, key, tr, &s1, &s2, &t0);
    /*printf("\n Printing SK\n\n");
    for(int i=0; i< CRYPTO_SECRETKEYBYTES; i++)
        printf("%02X", sk[i]);
    printf("\n\n");*/

    return 0;
}

int PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(
    uint8_t *sig, size_t *siglen,
    const uint8_t *m, size_t mlen, const uint8_t *sk) {
    unsigned long long i;
    unsigned int n;
    unsigned char seedbuf[2 * SEEDBYTES + 3 * CRHBYTES];
    unsigned char *rho, *tr, *key, *mu, *rhoprime;
    uint16_t nonce = 0;
    poly c, chat;
    polyvecl mat[K], s1, y, yhat, z;
    polyveck t0, s2, w, w1, w0;
    polyveck h, cs2, ct0;
    printf("uint64_t=%02X", (uint64_t)1434191876249964);
    //printf("SEEDBYTES=32, CRHBYTES=48\n", SEEDBYTES, CRHBYTES);
    rho = seedbuf;
    /*printf("\n\n printing rho in signing\n");
    for (int i=0; i<SEEDBYTES; i++)
        printf("%02X", *(rho+i));*/
    tr = rho + SEEDBYTES;
     /*printf("\n\n printing tr in signing\n");
    for (int i=0 ; i<CRHBYTES; i++)
        printf("%02X", *(tr+i));*/
    key = tr + CRHBYTES;
    /*printf("\n\n printing key in signing\n");
    for (int i=0; i<SEEDBYTES; i++)
        printf("%02X", *(key+i));*/
    mu = key + SEEDBYTES;
    /*printf("\n\n printing mu in signing\n");
    for (int i=0; i<CRHBYTES; i++)
        printf("%02X", *(mu+i));*/
    rhoprime = mu + CRHBYTES;
    /*printf("\n\n printing rhoprime in signing\n");
    for (int i=0; i<CRHBYTES; i++)
        printf("%02X", *(rhoprime+i));*/
    PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(rho, key, tr, &s1, &s2, &t0, sk);
   /* printf("\nAfter signing\n");
    printf("\n\n printing rho in signing\n");
    for (int i=0; i<SEEDBYTES; i++)
        printf("%02X", *(rho+i));
    printf("\n\n printing tr in signing\n");
    for (int i=0 ; i<CRHBYTES; i++)
        printf("%02X", *(tr+i));
    printf("\n\n printing key in signing\n");
    for (int i=0; i<SEEDBYTES; i++)
        printf("%02X", *(key + i));*/
    
    /*printf("\n\nprinting t0 before applying ntt\n\n[\n");
    for (int i=0; i<K; i++)
    {
        printf("[\n");
        for (int j=0; j<N; j++)
        printf("%lu,", t0.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n");*/

    // use incremental hash API instead of copying around buffers
    /* Compute CRH(tr, msg) */
    shake256incctx state;
    shake256_inc_init(&state);
    shake256_inc_absorb(&state, tr, CRHBYTES);
    shake256_inc_absorb(&state, m, mlen);
    shake256_inc_finalize(&state);
    // Mu at step 10 in Figure 4
    shake256_inc_squeeze(mu, CRHBYTES, &state);
    
    /*printf("\n\n printing mu\n\n");
    for (int i=0; i<CRHBYTES; i++)
    printf("%02X,", *(mu+i));*/
    //rhoprime at step 12 in Figure 4
    crh(rhoprime, key, SEEDBYTES + CRHBYTES);
    /*printf("\n printing key in CRH \n");
    for (int i=0; i<SEEDBYTES+CRHBYTES; i++)
        printf("%02X,", *(key+i));
   printf("\n\n printing rhoprime after CRH\n");
    for (int i=0; i<CRHBYTES; i++)
        printf("%02X,", *(rhoprime+i));*/

    /* Expand matrix and transform vectors */
    PQCLEAN_DILITHIUM2_CLEAN_expand_mat(mat, rho);
    /*printf("\n Mat = [");
     for (int s=0; s<K; s++)
     {
     printf("[ \n");
     for(int j=0; j<L; j++)
     {
     printf("[ ");
     for(i=0; i<N; i++)
     {
     printf("%u, ", mat[s].vec[j].coeffs[i]);
     }
     printf("],\n");
     }
     printf("],");
     }
     printf("]\n");*/

    PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(&s1);
    /*printf("\nprinting s1\n\n[\n");
     for (int i=0; i<L; i++)
     {
     printf("[\n");
     for (int j=0; j<N; j++)
     printf("%u,", s1.vec[i].coeffs[j]);
     printf("],");
     }
     printf("]");*/
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(&s2);
   // I have doubt on t0, come back to it later
   /* printf("\n\nprinting t0 before applying ntt\n\n[\n");
    for (int i=0; i<K; i++)
    {
        printf("[\n");
        for (int j=0; j<N; j++)
            printf("%u,", t0.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n"); */
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(&t0);
    
    /*printf("\n\nprinting t0 after applying ntt\n\n[\n");
    for (int i=0; i<K; i++)
    {
        printf("[\n");
        for (int j=0; j<N; j++)
        printf("%u,", t0.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n");*/
    
/*************while loop starts here *********/
rej:
    /* Sample intermediate vector y */
    for (i = 0; i < L; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(&y.vec[i], rhoprime, nonce++);
    }
   /* printf("\nprinting y\n\n[\n");
     for (int i=0; i<L; i++)
     {
     printf("[\n");
     for (int j=0; j<N; j++)
     printf("%u,", y.vec[i].coeffs[j]);
     printf("],");
     }
    printf("]");*/

    /* Matrix-vector multiplication */
    yhat = y;
    PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(&yhat);
   
    
   // printf("\n\nprinting w\n\n\n");
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(&w.vec[i], &mat[i], &yhat);
        PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(&w.vec[i]);
        PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(&w.vec[i]);
       // printf("[\n");
       // for(int j=0; j<N; j++)
        //printf("%u,", w.vec[i].coeffs[j]);
       // printf("]\n");
    }
    

    /* Decompose w and call the random oracle */
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(&w);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(&w1, &w0, &w);
    /*printf("\nprinting w1\n\n[\n");
     for (int i=0; i<K; i++)
     {
     printf("[\n");
     for (int j=0; j<N; j++)
     printf("%u,", w1.vec[i].coeffs[j]);
     printf("],");
     }
     printf("]");*/
    PQCLEAN_DILITHIUM2_CLEAN_challenge(&c, mu, &w1);
    
    chat = c;
    PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(&chat);
    printf("\nPrinting before chat\n");
    for (int i=0; i<N; i++)
        printf("%u,", chat.coeffs[i]);
    /* Check that subtracting cs2 does not change high bits of w and low bits
     * do not reveal secret information */
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(&cs2.vec[i], &chat, &s2.vec[i]);
        PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(&cs2.vec[i]);
    }
    printf("\nPrinting after chat\n");
    for (int i=0; i<N; i++)
        printf("%u,", chat.coeffs[i]);
    /*printf("\n\nprinting cs2\n\n[\n");
     for (int i=0; i<K; i++)
     {
     printf("[\n");
     for (int j=0; j<N; j++)
     printf("%u,", cs2.vec[i].coeffs[j]);
     printf("]\n");
     }
     printf("]\n");*/
     /*printf("\n\nprinting w0 before\n\n[\n");
     for (int i=0; i<K; i++)
     {
     printf("[\n");
     for (int j=0; j<N; j++)
     printf("%u,", w0.vec[i].coeffs[j]);
     printf("]\n");
     }
     printf("]\n");*/
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(&w0, &w0, &cs2);
    /*printf("\n\nprinting w0\n\n[\n");
    for (int i=0; i<K; i++)
    {
        printf("[\n");
        for (int j=0; j<N; j++)
            printf("%u,", w0.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n");*/
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(&w0);
    
    if (PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(&w0, GAMMA2 - BETA)) {
        goto rej;
    }
    printf("\n\nnPrinting after after chat\n");
    for (int i=0; i<N; i++)
        printf("%u,", chat.coeffs[i]);
    
   /* printf("\nprinting s1\n\n[\n");
    for (int i=0; i<L; i++)
    {
        printf("[\n");
        for (int j=0; j<N; j++)
            printf("%u,", s1.vec[i].coeffs[j]);
        printf("],");
    }
    printf("]\n\n");*/
    /* Compute z, reject if it reveals secret */
    printf("\n\nInvmontgomery in signing\n\n");
    for (i = 0; i < L; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(&z.vec[i], &chat, &s1.vec[i]);
        /*printf("Printing z.vec[%u] [\n", i);
        for (int j=0; j<N; j++)
            printf("%02X,", z.vec[i].coeffs[j]);
        printf("]\n");*/
        for (int i=0; i<N; i++)
            printf("chat.coeffs[i]=%u,",i, chat.coeffs[i]);
        PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(&z.vec[i]);
    }
   /* printf("\nprinting s1\n\n[\n");
     for (int i=0; i<L; i++)
     {
     printf("[\n");
     for (int j=0; j<N; j++)
     printf("%u,", s1.vec[i].coeffs[j]);
     printf("],");
     }
     printf("]");*/
    
    
   // CS1 doesn't match it seems
    
  /* printf("\nPrinting cs1 (z)\n[");
    for (int i=0; i<L; i++)
    {
        printf(" [\n");
        for (int j=0; j<N; j++)
            printf("%lu,", z.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n\n");*/
    PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(&z, &z, &y);
   
    PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(&z);
    /*printf("\nPrinting Z\n[");
    for (int i=0; i<K; i++)
    {
        printf(" [\n");
        for (int j=0; j<N; j++)
            printf("%lu,", z.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n\n");*/
    if (PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(&z, GAMMA1 - BETA)) {
        goto rej;
    }
    
    /* Compute hints for w1 */
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(&ct0.vec[i], &chat, &t0.vec[i]);
        PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(&ct0.vec[i]);
    }

    PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(&ct0);
    if (PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(&ct0, GAMMA2)) {
        goto rej;
    }

    PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(&w0, &w0, &ct0);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(&w0);
    n = PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(&h, &w0, &w1);
    if (n > OMEGA) {
        goto rej;
    }
   /* printf("\nPrinting Z\n[");
    for (int i=0; i<L; i++)
    {
        printf(" [\n");
        for (int j=0; j<N; j++)
            printf("%lu,", z.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n\n");*/
   /* printf("\nPrinting chat\n[");
    for (int i=0; i<N; i++)
        printf("%u,", chat.coeffs[i]);
    printf("]\n");
    
    printf("\nPrinting h\n[");
    for (int i=0; i<K; i++)
    {
        printf(" [\n");
        for (int j=0; j<N; j++)
            printf("%lu,", h.vec[i].coeffs[j]);
        printf("]\n");
    }
    printf("]\n\n");
    printf("\Printing c \n [\n");
    for (int j=0; j<N; j++)
        printf("%lu,", c.coeffs[j]);
    printf("]\n");*/

    /* Write signature */
    PQCLEAN_DILITHIUM2_CLEAN_pack_sig(sig, &z, &h, &c);
    printf("\n Printing Signature \n");
    for (int i=0; i< 2077; i++)
        printf("%02X", sig[i]);
        
    *siglen = CRYPTO_BYTES;
    return 0;
}

int PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(
    const uint8_t *sig, size_t siglen,
    const uint8_t *m, size_t mlen, const uint8_t *pk) {
    unsigned long long i;
    unsigned char rho[SEEDBYTES];
    unsigned char mu[CRHBYTES];
    poly c, chat, cp;
    polyvecl mat[K], z;
    polyveck t1, w1, h, tmp1, tmp2;

    if (siglen < CRYPTO_BYTES) {
        return -1;
    }

    PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(rho, &t1, pk);
    if (PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(&z, &h, &c, sig)) {
        return -1;
    }
    if (PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(&z, GAMMA1 - BETA)) {
        return -1;
    }

    /* Compute CRH(CRH(rho, t1), msg) */
    crh(mu, pk, CRYPTO_PUBLICKEYBYTES);

    shake256incctx state;
    shake256_inc_init(&state);
    shake256_inc_absorb(&state, mu, CRHBYTES);
    shake256_inc_absorb(&state, m, mlen);
    shake256_inc_finalize(&state);
    shake256_inc_squeeze(mu, CRHBYTES, &state);

    /* Matrix-vector multiplication; compute Az - c2^dt1 */
    PQCLEAN_DILITHIUM2_CLEAN_expand_mat(mat, rho);

    PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(&z);
    for (i = 0; i < K ; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(&tmp1.vec[i], &mat[i], &z);
    }

    chat = c;
    PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(&chat);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(&t1);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(&t1);
    for (i = 0; i < K; ++i) {
        PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(&tmp2.vec[i], &chat, &t1.vec[i]);
    }

    PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(&tmp1, &tmp1, &tmp2);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(&tmp1);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(&tmp1);

    /* Reconstruct w1 */
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(&tmp1);
    PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(&w1, &tmp1, &h);

    /* Call random oracle and verify challenge */
    PQCLEAN_DILITHIUM2_CLEAN_challenge(&cp, mu, &w1);
    for (i = 0; i < N; ++i) {
        if (c.coeffs[i] != cp.coeffs[i]) {
            return -1;
        }
    }

    // All good
    return 0;
}
/*************************************************
* Name:        crypto_sign
*
* Description: Compute signed message.
*
* Arguments:   - unsigned char *sm: pointer to output signed message (allocated
*                                   array with CRYPTO_BYTES + mlen bytes),
*                                   can be equal to m
*              - unsigned long long *smlen: pointer to output length of signed
*                                           message
*              - const unsigned char *m: pointer to message to be signed
*              - unsigned long long mlen: length of message
*              - const unsigned char *sk: pointer to bit-packed secret key
*
* Returns 0 (success)
**************************************************/
int PQCLEAN_DILITHIUM2_CLEAN_crypto_sign(uint8_t *sm,
        size_t *smlen,
        const uint8_t *m,
        size_t mlen,
        const uint8_t *sk) {
    size_t i;
    int rc;
    printf("CRYPTO_BYTES=%u\n", CRYPTO_BYTES);
    for (i = 0; i < mlen; i++) {
        sm[CRYPTO_BYTES + i] = m[i];
    }
    rc = PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(sm, smlen, m, mlen, sk);
    *smlen += mlen;
    return rc;

}

/*************************************************
* Name:        crypto_sign_open
*
* Description: Verify signed message.
*
* Arguments:   - unsigned char *m: pointer to output message (allocated
*                                  array with smlen bytes), can be equal to sm
*              - unsigned long long *mlen: pointer to output length of message
*              - const unsigned char *sm: pointer to signed message
*              - unsigned long long smlen: length of signed message
*              - const unsigned char *pk: pointer to bit-packed public key
*
* Returns 0 if signed message could be verified correctly and -1 otherwise
**************************************************/
int PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_open(uint8_t *m,
        size_t *mlen,
        const uint8_t *sm,
        size_t smlen,
        const uint8_t *pk) {
    size_t i;
    if (smlen < CRYPTO_BYTES) {
        goto badsig;
    }
    *mlen = smlen - CRYPTO_BYTES;

    if (PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(sm, CRYPTO_BYTES,
            sm + CRYPTO_BYTES, *mlen, pk)) {
        goto badsig;
    } else {
        /* All good, copy msg, return 0 */
        for (i = 0; i < *mlen; ++i) {
            m[i] = sm[CRYPTO_BYTES + i];
        }
        return 0;
    }

    /* Signature verification failed */
badsig:
    *mlen = (size_t) -1;
    for (i = 0; i < smlen; ++i) {
        m[i] = 0;
    }

    return -1;
}
int main()
{
    uint8_t pk[CRYPTO_PUBLICKEYBYTES]={0};
    uint8_t sk[CRYPTO_SECRETKEYBYTES]={0};
    uint8_t sm[2077]={0};
    size_t smlen[1]={2077};
    const uint8_t m[33]={0xd8, 0x1c, 0x4d, 0x8d, 0x73, 0x4f, 0xcb, 0xfb, 0xea, 0xde, 0x3d,
                          0x3f, 0x8a, 0x03, 0x9f, 0xaa, 0x2a, 0x2c, 0x99, 0x57, 0xe8, 0x35,
                          0xad, 0x55, 0xb2, 0x2e, 0x75, 0xbf, 0x57, 0xbb, 0x55, 0x6a, 0xc8};
    size_t mlen=33;
    
    PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_keypair(pk, sk);
    
    PQCLEAN_DILITHIUM2_CLEAN_crypto_sign(sm, smlen, m, mlen, sk);
    
    return 0;
}
