CC = /usr/bin/cc
CFLAGS = -Wall -Wextra -march=native -mtune=native -O3 -fomit-frame-pointer
NISTFLAGS = -O3 -fomit-frame-pointer -march=native -fPIC
#SOURCES = sign.c polyvec.c packing.c poly.c reduce.c ntt.c rounding.c fips202.c
SOURCES = *.c ../../../common/*.c
#HEADERS = api.h params.h sign.h polyvec.h packing.h poly.h reduce.h ntt.h \
  rounding.h fips202.h
HEADERS = *.h ../../../common/*.h

all: PQCgenKAT_sign

PQCgenKAT_sign: $(SOURCES) $(HEADERS)
	$(CC) -I ../../../common $(NISTFLAGS) $(SOURCES) -o $@ -lcrypto


.PHONY: clean

clean:
	rm -f PQCgenKAT_sign
	rm -f a.out
	rm -f output*
