; ModuleID = 'libdilithium2_clean.a.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.polyvecl = type { [3 x %struct.poly] }
%struct.poly = type { [256 x i32] }
%struct.polyveck = type { [4 x %struct.poly] }
%struct.shake128ctx = type { [25 x i64] }
%struct.shake256incctx = type { [26 x i64] }

@zetas = internal unnamed_addr constant [256 x i32] [i32 0, i32 25847, i32 5771523, i32 7861508, i32 237124, i32 7602457, i32 7504169, i32 466468, i32 1826347, i32 2353451, i32 8021166, i32 6288512, i32 3119733, i32 5495562, i32 3111497, i32 2680103, i32 2725464, i32 1024112, i32 7300517, i32 3585928, i32 7830929, i32 7260833, i32 2619752, i32 6271868, i32 6262231, i32 4520680, i32 6980856, i32 5102745, i32 1757237, i32 8360995, i32 4010497, i32 280005, i32 2706023, i32 95776, i32 3077325, i32 3530437, i32 6718724, i32 4788269, i32 5842901, i32 3915439, i32 4519302, i32 5336701, i32 3574422, i32 5512770, i32 3539968, i32 8079950, i32 2348700, i32 7841118, i32 6681150, i32 6736599, i32 3505694, i32 4558682, i32 3507263, i32 6239768, i32 6779997, i32 3699596, i32 811944, i32 531354, i32 954230, i32 3881043, i32 3900724, i32 5823537, i32 2071892, i32 5582638, i32 4450022, i32 6851714, i32 4702672, i32 5339162, i32 6927966, i32 3475950, i32 2176455, i32 6795196, i32 7122806, i32 1939314, i32 4296819, i32 7380215, i32 5190273, i32 5223087, i32 4747489, i32 126922, i32 3412210, i32 7396998, i32 2147896, i32 2715295, i32 5412772, i32 4686924, i32 7969390, i32 5903370, i32 7709315, i32 7151892, i32 8357436, i32 7072248, i32 7998430, i32 1349076, i32 1852771, i32 6949987, i32 5037034, i32 264944, i32 508951, i32 3097992, i32 44288, i32 7280319, i32 904516, i32 3958618, i32 4656075, i32 8371839, i32 1653064, i32 5130689, i32 2389356, i32 8169440, i32 759969, i32 7063561, i32 189548, i32 4827145, i32 3159746, i32 6529015, i32 5971092, i32 8202977, i32 1315589, i32 1341330, i32 1285669, i32 6795489, i32 7567685, i32 6940675, i32 5361315, i32 4499357, i32 4751448, i32 3839961, i32 2091667, i32 3407706, i32 2316500, i32 3817976, i32 5037939, i32 2244091, i32 5933984, i32 4817955, i32 266997, i32 2434439, i32 7144689, i32 3513181, i32 4860065, i32 4621053, i32 7183191, i32 5187039, i32 900702, i32 1859098, i32 909542, i32 819034, i32 495491, i32 6767243, i32 8337157, i32 7857917, i32 7725090, i32 5257975, i32 2031748, i32 3207046, i32 4823422, i32 7855319, i32 7611795, i32 4784579, i32 342297, i32 286988, i32 5942594, i32 4108315, i32 3437287, i32 5038140, i32 1735879, i32 203044, i32 2842341, i32 2691481, i32 5790267, i32 1265009, i32 4055324, i32 1247620, i32 2486353, i32 1595974, i32 4613401, i32 1250494, i32 2635921, i32 4832145, i32 5386378, i32 1869119, i32 1903435, i32 7329447, i32 7047359, i32 1237275, i32 5062207, i32 6950192, i32 7929317, i32 1312455, i32 3306115, i32 6417775, i32 7100756, i32 1917081, i32 5834105, i32 7005614, i32 1500165, i32 777191, i32 2235880, i32 3406031, i32 7838005, i32 5548557, i32 6709241, i32 6533464, i32 5796124, i32 4656147, i32 594136, i32 4603424, i32 6366809, i32 2432395, i32 2454455, i32 8215696, i32 1957272, i32 3369112, i32 185531, i32 7173032, i32 5196991, i32 162844, i32 1616392, i32 3014001, i32 810149, i32 1652634, i32 4686184, i32 6581310, i32 5341501, i32 3523897, i32 3866901, i32 269760, i32 2213111, i32 7404533, i32 1717735, i32 472078, i32 7953734, i32 1723600, i32 6577327, i32 1910376, i32 6712985, i32 7276084, i32 8119771, i32 4546524, i32 5441381, i32 6144432, i32 7959518, i32 6094090, i32 183443, i32 7403526, i32 1612842, i32 4834730, i32 7826001, i32 3919660, i32 8332111, i32 7018208, i32 3937738, i32 1400424, i32 7534263, i32 1976782], align 16
@zetas_inv = internal unnamed_addr constant [256 x i32] [i32 6403635, i32 846154, i32 6979993, i32 4442679, i32 1362209, i32 48306, i32 4460757, i32 554416, i32 3545687, i32 6767575, i32 976891, i32 8196974, i32 2286327, i32 420899, i32 2235985, i32 2939036, i32 3833893, i32 260646, i32 1104333, i32 1667432, i32 6470041, i32 1803090, i32 6656817, i32 426683, i32 7908339, i32 6662682, i32 975884, i32 6167306, i32 8110657, i32 4513516, i32 4856520, i32 3038916, i32 1799107, i32 3694233, i32 6727783, i32 7570268, i32 5366416, i32 6764025, i32 8217573, i32 3183426, i32 1207385, i32 8194886, i32 5011305, i32 6423145, i32 164721, i32 5925962, i32 5948022, i32 2013608, i32 3776993, i32 7786281, i32 3724270, i32 2584293, i32 1846953, i32 1671176, i32 2831860, i32 542412, i32 4974386, i32 6144537, i32 7603226, i32 6880252, i32 1374803, i32 2546312, i32 6463336, i32 1279661, i32 1962642, i32 5074302, i32 7067962, i32 451100, i32 1430225, i32 3318210, i32 7143142, i32 1333058, i32 1050970, i32 6476982, i32 6511298, i32 2994039, i32 3548272, i32 5744496, i32 7129923, i32 3767016, i32 6784443, i32 5894064, i32 7132797, i32 4325093, i32 7115408, i32 2590150, i32 5688936, i32 5538076, i32 8177373, i32 6644538, i32 3342277, i32 4943130, i32 4272102, i32 2437823, i32 8093429, i32 8038120, i32 3595838, i32 768622, i32 525098, i32 3556995, i32 5173371, i32 6348669, i32 3122442, i32 655327, i32 522500, i32 43260, i32 1613174, i32 7884926, i32 7561383, i32 7470875, i32 6521319, i32 7479715, i32 3193378, i32 1197226, i32 3759364, i32 3520352, i32 4867236, i32 1235728, i32 5945978, i32 8113420, i32 3562462, i32 2446433, i32 6136326, i32 3342478, i32 4562441, i32 6063917, i32 4972711, i32 6288750, i32 4540456, i32 3628969, i32 3881060, i32 3019102, i32 1439742, i32 812732, i32 1584928, i32 7094748, i32 7039087, i32 7064828, i32 177440, i32 2409325, i32 1851402, i32 5220671, i32 3553272, i32 8190869, i32 1316856, i32 7620448, i32 210977, i32 5991061, i32 3249728, i32 6727353, i32 8578, i32 3724342, i32 4421799, i32 7475901, i32 1100098, i32 8336129, i32 5282425, i32 7871466, i32 8115473, i32 3343383, i32 1430430, i32 6527646, i32 7031341, i32 381987, i32 1308169, i32 22981, i32 1228525, i32 671102, i32 2477047, i32 411027, i32 3693493, i32 2967645, i32 5665122, i32 6232521, i32 983419, i32 4968207, i32 8253495, i32 3632928, i32 3157330, i32 3190144, i32 1000202, i32 4083598, i32 6441103, i32 1257611, i32 1585221, i32 6203962, i32 4904467, i32 1452451, i32 3041255, i32 3677745, i32 1528703, i32 3930395, i32 2797779, i32 6308525, i32 2556880, i32 4479693, i32 4499374, i32 7426187, i32 7849063, i32 7568473, i32 4680821, i32 1600420, i32 2140649, i32 4873154, i32 3821735, i32 4874723, i32 1643818, i32 1699267, i32 539299, i32 6031717, i32 300467, i32 4840449, i32 2867647, i32 4805995, i32 3043716, i32 3861115, i32 4464978, i32 2537516, i32 3592148, i32 1661693, i32 4849980, i32 5303092, i32 8284641, i32 5674394, i32 8100412, i32 4369920, i32 19422, i32 6623180, i32 3277672, i32 1399561, i32 3859737, i32 2118186, i32 2108549, i32 5760665, i32 1119584, i32 549488, i32 4794489, i32 1079900, i32 7356305, i32 5654953, i32 5700314, i32 5268920, i32 2884855, i32 5260684, i32 2091905, i32 359251, i32 6026966, i32 6554070, i32 7913949, i32 876248, i32 777960, i32 8143293, i32 518909, i32 2608894, i32 8354570, i32 0], align 16

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(%struct.polyvecl*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %4) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(%struct.polyvecl*, %struct.polyvecl*, %struct.polyvecl*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 1
  %8 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %10, %struct.poly* %11, %struct.poly* %12) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %4) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly*, %struct.polyvecl*, %struct.polyvecl*) local_unnamed_addr #0 {
  %4 = alloca %struct.poly, align 4
  %5 = bitcast %struct.poly* %4 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %5) #7
  %6 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %0, %struct.poly* %6, %struct.poly* %7) #7
  %8 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %4, %struct.poly* %8, %struct.poly* %9) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %0, %struct.poly* %0, %struct.poly* nonnull %4) #7
  %10 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %4, %struct.poly* %10, %struct.poly* %11) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %0, %struct.poly* %0, %struct.poly* nonnull %4) #7
  call void @llvm.lifetime.end(i64 1024, i8* %5) #7
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 0
  %4 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %3, i32 %1) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 1
  %8 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %7, i32 %1) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %6, %2
  ret i32 1

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 2
  %13 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %12, i32 %1) #7
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(%struct.polyveck*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %4) #7
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %5) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* %4) #7
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* %5) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %4) #7
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %5) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %10, %struct.poly* %11, %struct.poly* %12) #7
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %13, %struct.poly* %14, %struct.poly* %15) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* %10, %struct.poly* %11, %struct.poly* %12) #7
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* %13, %struct.poly* %14, %struct.poly* %15) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(%struct.polyveck*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* %4) #7
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* %5) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %4) #7
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %5) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(%struct.polyveck*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %2) #7
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %3) #7
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %4) #7
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %5) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %4 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %3, i32 %1) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %8 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %7, i32 %1) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %11, %6, %2
  ret i32 1

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %13 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %12, i32 %1) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %10

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %17 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %16, i32 %1) #7
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* %10, %struct.poly* %11, %struct.poly* %12) #7
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* %13, %struct.poly* %14, %struct.poly* %15) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* %10, %struct.poly* %11, %struct.poly* %12) #7
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* %13, %struct.poly* %14, %struct.poly* %15) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  %7 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %10 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  %11 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* %8, %struct.poly* %9, %struct.poly* %10) #7
  %12 = add i32 %11, %7
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  %16 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* %13, %struct.poly* %14, %struct.poly* %15) #7
  %17 = add i32 %16, %12
  %18 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %19 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %20 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  %21 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* %18, %struct.poly* %19, %struct.poly* %20) #7
  %22 = add i32 %21, %17
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* %4, %struct.poly* %5, %struct.poly* %6) #7
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 1
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 2
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* %10, %struct.poly* %11, %struct.poly* %12) #7
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 3
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* %13, %struct.poly* %14, %struct.poly* %15) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_pk(i8*, i8* nocapture readonly, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = load i8, i8* %1, align 1, !tbaa !2
  store i8 %4, i8* %0, align 1, !tbaa !2
  %5 = getelementptr inbounds i8, i8* %1, i64 1
  %6 = load i8, i8* %5, align 1, !tbaa !2
  %7 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %6, i8* %7, align 1, !tbaa !2
  %8 = getelementptr inbounds i8, i8* %1, i64 2
  %9 = load i8, i8* %8, align 1, !tbaa !2
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %9, i8* %10, align 1, !tbaa !2
  %11 = getelementptr inbounds i8, i8* %1, i64 3
  %12 = load i8, i8* %11, align 1, !tbaa !2
  %13 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %12, i8* %13, align 1, !tbaa !2
  %14 = getelementptr inbounds i8, i8* %1, i64 4
  %15 = load i8, i8* %14, align 1, !tbaa !2
  %16 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 %15, i8* %16, align 1, !tbaa !2
  %17 = getelementptr inbounds i8, i8* %1, i64 5
  %18 = load i8, i8* %17, align 1, !tbaa !2
  %19 = getelementptr inbounds i8, i8* %0, i64 5
  store i8 %18, i8* %19, align 1, !tbaa !2
  %20 = getelementptr inbounds i8, i8* %1, i64 6
  %21 = load i8, i8* %20, align 1, !tbaa !2
  %22 = getelementptr inbounds i8, i8* %0, i64 6
  store i8 %21, i8* %22, align 1, !tbaa !2
  %23 = getelementptr inbounds i8, i8* %1, i64 7
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = getelementptr inbounds i8, i8* %0, i64 7
  store i8 %24, i8* %25, align 1, !tbaa !2
  %26 = getelementptr inbounds i8, i8* %1, i64 8
  %27 = load i8, i8* %26, align 1, !tbaa !2
  %28 = getelementptr inbounds i8, i8* %0, i64 8
  store i8 %27, i8* %28, align 1, !tbaa !2
  %29 = getelementptr inbounds i8, i8* %1, i64 9
  %30 = load i8, i8* %29, align 1, !tbaa !2
  %31 = getelementptr inbounds i8, i8* %0, i64 9
  store i8 %30, i8* %31, align 1, !tbaa !2
  %32 = getelementptr inbounds i8, i8* %1, i64 10
  %33 = load i8, i8* %32, align 1, !tbaa !2
  %34 = getelementptr inbounds i8, i8* %0, i64 10
  store i8 %33, i8* %34, align 1, !tbaa !2
  %35 = getelementptr inbounds i8, i8* %1, i64 11
  %36 = load i8, i8* %35, align 1, !tbaa !2
  %37 = getelementptr inbounds i8, i8* %0, i64 11
  store i8 %36, i8* %37, align 1, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %1, i64 12
  %39 = load i8, i8* %38, align 1, !tbaa !2
  %40 = getelementptr inbounds i8, i8* %0, i64 12
  store i8 %39, i8* %40, align 1, !tbaa !2
  %41 = getelementptr inbounds i8, i8* %1, i64 13
  %42 = load i8, i8* %41, align 1, !tbaa !2
  %43 = getelementptr inbounds i8, i8* %0, i64 13
  store i8 %42, i8* %43, align 1, !tbaa !2
  %44 = getelementptr inbounds i8, i8* %1, i64 14
  %45 = load i8, i8* %44, align 1, !tbaa !2
  %46 = getelementptr inbounds i8, i8* %0, i64 14
  store i8 %45, i8* %46, align 1, !tbaa !2
  %47 = getelementptr inbounds i8, i8* %1, i64 15
  %48 = load i8, i8* %47, align 1, !tbaa !2
  %49 = getelementptr inbounds i8, i8* %0, i64 15
  store i8 %48, i8* %49, align 1, !tbaa !2
  %50 = getelementptr inbounds i8, i8* %1, i64 16
  %51 = load i8, i8* %50, align 1, !tbaa !2
  %52 = getelementptr inbounds i8, i8* %0, i64 16
  store i8 %51, i8* %52, align 1, !tbaa !2
  %53 = getelementptr inbounds i8, i8* %1, i64 17
  %54 = load i8, i8* %53, align 1, !tbaa !2
  %55 = getelementptr inbounds i8, i8* %0, i64 17
  store i8 %54, i8* %55, align 1, !tbaa !2
  %56 = getelementptr inbounds i8, i8* %1, i64 18
  %57 = load i8, i8* %56, align 1, !tbaa !2
  %58 = getelementptr inbounds i8, i8* %0, i64 18
  store i8 %57, i8* %58, align 1, !tbaa !2
  %59 = getelementptr inbounds i8, i8* %1, i64 19
  %60 = load i8, i8* %59, align 1, !tbaa !2
  %61 = getelementptr inbounds i8, i8* %0, i64 19
  store i8 %60, i8* %61, align 1, !tbaa !2
  %62 = getelementptr inbounds i8, i8* %1, i64 20
  %63 = load i8, i8* %62, align 1, !tbaa !2
  %64 = getelementptr inbounds i8, i8* %0, i64 20
  store i8 %63, i8* %64, align 1, !tbaa !2
  %65 = getelementptr inbounds i8, i8* %1, i64 21
  %66 = load i8, i8* %65, align 1, !tbaa !2
  %67 = getelementptr inbounds i8, i8* %0, i64 21
  store i8 %66, i8* %67, align 1, !tbaa !2
  %68 = getelementptr inbounds i8, i8* %1, i64 22
  %69 = load i8, i8* %68, align 1, !tbaa !2
  %70 = getelementptr inbounds i8, i8* %0, i64 22
  store i8 %69, i8* %70, align 1, !tbaa !2
  %71 = getelementptr inbounds i8, i8* %1, i64 23
  %72 = load i8, i8* %71, align 1, !tbaa !2
  %73 = getelementptr inbounds i8, i8* %0, i64 23
  store i8 %72, i8* %73, align 1, !tbaa !2
  %74 = getelementptr inbounds i8, i8* %1, i64 24
  %75 = load i8, i8* %74, align 1, !tbaa !2
  %76 = getelementptr inbounds i8, i8* %0, i64 24
  store i8 %75, i8* %76, align 1, !tbaa !2
  %77 = getelementptr inbounds i8, i8* %1, i64 25
  %78 = load i8, i8* %77, align 1, !tbaa !2
  %79 = getelementptr inbounds i8, i8* %0, i64 25
  store i8 %78, i8* %79, align 1, !tbaa !2
  %80 = getelementptr inbounds i8, i8* %1, i64 26
  %81 = load i8, i8* %80, align 1, !tbaa !2
  %82 = getelementptr inbounds i8, i8* %0, i64 26
  store i8 %81, i8* %82, align 1, !tbaa !2
  %83 = getelementptr inbounds i8, i8* %1, i64 27
  %84 = load i8, i8* %83, align 1, !tbaa !2
  %85 = getelementptr inbounds i8, i8* %0, i64 27
  store i8 %84, i8* %85, align 1, !tbaa !2
  %86 = getelementptr inbounds i8, i8* %1, i64 28
  %87 = load i8, i8* %86, align 1, !tbaa !2
  %88 = getelementptr inbounds i8, i8* %0, i64 28
  store i8 %87, i8* %88, align 1, !tbaa !2
  %89 = getelementptr inbounds i8, i8* %1, i64 29
  %90 = load i8, i8* %89, align 1, !tbaa !2
  %91 = getelementptr inbounds i8, i8* %0, i64 29
  store i8 %90, i8* %91, align 1, !tbaa !2
  %92 = getelementptr inbounds i8, i8* %1, i64 30
  %93 = load i8, i8* %92, align 1, !tbaa !2
  %94 = getelementptr inbounds i8, i8* %0, i64 30
  store i8 %93, i8* %94, align 1, !tbaa !2
  %95 = getelementptr inbounds i8, i8* %1, i64 31
  %96 = load i8, i8* %95, align 1, !tbaa !2
  %97 = getelementptr inbounds i8, i8* %0, i64 31
  store i8 %96, i8* %97, align 1, !tbaa !2
  %98 = getelementptr inbounds i8, i8* %0, i64 32
  %99 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* %98, %struct.poly* %99) #7
  %100 = getelementptr inbounds i8, i8* %0, i64 320
  %101 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* %100, %struct.poly* %101) #7
  %102 = getelementptr inbounds i8, i8* %0, i64 608
  %103 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* %102, %struct.poly* %103) #7
  %104 = getelementptr inbounds i8, i8* %0, i64 896
  %105 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* %104, %struct.poly* %105) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(i8* nocapture, %struct.polyveck*, i8*) local_unnamed_addr #0 {
  %4 = load i8, i8* %2, align 1, !tbaa !2
  store i8 %4, i8* %0, align 1, !tbaa !2
  %5 = getelementptr inbounds i8, i8* %2, i64 1
  %6 = load i8, i8* %5, align 1, !tbaa !2
  %7 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %6, i8* %7, align 1, !tbaa !2
  %8 = getelementptr inbounds i8, i8* %2, i64 2
  %9 = load i8, i8* %8, align 1, !tbaa !2
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %9, i8* %10, align 1, !tbaa !2
  %11 = getelementptr inbounds i8, i8* %2, i64 3
  %12 = load i8, i8* %11, align 1, !tbaa !2
  %13 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %12, i8* %13, align 1, !tbaa !2
  %14 = getelementptr inbounds i8, i8* %2, i64 4
  %15 = load i8, i8* %14, align 1, !tbaa !2
  %16 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 %15, i8* %16, align 1, !tbaa !2
  %17 = getelementptr inbounds i8, i8* %2, i64 5
  %18 = load i8, i8* %17, align 1, !tbaa !2
  %19 = getelementptr inbounds i8, i8* %0, i64 5
  store i8 %18, i8* %19, align 1, !tbaa !2
  %20 = getelementptr inbounds i8, i8* %2, i64 6
  %21 = load i8, i8* %20, align 1, !tbaa !2
  %22 = getelementptr inbounds i8, i8* %0, i64 6
  store i8 %21, i8* %22, align 1, !tbaa !2
  %23 = getelementptr inbounds i8, i8* %2, i64 7
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = getelementptr inbounds i8, i8* %0, i64 7
  store i8 %24, i8* %25, align 1, !tbaa !2
  %26 = getelementptr inbounds i8, i8* %2, i64 8
  %27 = load i8, i8* %26, align 1, !tbaa !2
  %28 = getelementptr inbounds i8, i8* %0, i64 8
  store i8 %27, i8* %28, align 1, !tbaa !2
  %29 = getelementptr inbounds i8, i8* %2, i64 9
  %30 = load i8, i8* %29, align 1, !tbaa !2
  %31 = getelementptr inbounds i8, i8* %0, i64 9
  store i8 %30, i8* %31, align 1, !tbaa !2
  %32 = getelementptr inbounds i8, i8* %2, i64 10
  %33 = load i8, i8* %32, align 1, !tbaa !2
  %34 = getelementptr inbounds i8, i8* %0, i64 10
  store i8 %33, i8* %34, align 1, !tbaa !2
  %35 = getelementptr inbounds i8, i8* %2, i64 11
  %36 = load i8, i8* %35, align 1, !tbaa !2
  %37 = getelementptr inbounds i8, i8* %0, i64 11
  store i8 %36, i8* %37, align 1, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %2, i64 12
  %39 = load i8, i8* %38, align 1, !tbaa !2
  %40 = getelementptr inbounds i8, i8* %0, i64 12
  store i8 %39, i8* %40, align 1, !tbaa !2
  %41 = getelementptr inbounds i8, i8* %2, i64 13
  %42 = load i8, i8* %41, align 1, !tbaa !2
  %43 = getelementptr inbounds i8, i8* %0, i64 13
  store i8 %42, i8* %43, align 1, !tbaa !2
  %44 = getelementptr inbounds i8, i8* %2, i64 14
  %45 = load i8, i8* %44, align 1, !tbaa !2
  %46 = getelementptr inbounds i8, i8* %0, i64 14
  store i8 %45, i8* %46, align 1, !tbaa !2
  %47 = getelementptr inbounds i8, i8* %2, i64 15
  %48 = load i8, i8* %47, align 1, !tbaa !2
  %49 = getelementptr inbounds i8, i8* %0, i64 15
  store i8 %48, i8* %49, align 1, !tbaa !2
  %50 = getelementptr inbounds i8, i8* %2, i64 16
  %51 = load i8, i8* %50, align 1, !tbaa !2
  %52 = getelementptr inbounds i8, i8* %0, i64 16
  store i8 %51, i8* %52, align 1, !tbaa !2
  %53 = getelementptr inbounds i8, i8* %2, i64 17
  %54 = load i8, i8* %53, align 1, !tbaa !2
  %55 = getelementptr inbounds i8, i8* %0, i64 17
  store i8 %54, i8* %55, align 1, !tbaa !2
  %56 = getelementptr inbounds i8, i8* %2, i64 18
  %57 = load i8, i8* %56, align 1, !tbaa !2
  %58 = getelementptr inbounds i8, i8* %0, i64 18
  store i8 %57, i8* %58, align 1, !tbaa !2
  %59 = getelementptr inbounds i8, i8* %2, i64 19
  %60 = load i8, i8* %59, align 1, !tbaa !2
  %61 = getelementptr inbounds i8, i8* %0, i64 19
  store i8 %60, i8* %61, align 1, !tbaa !2
  %62 = getelementptr inbounds i8, i8* %2, i64 20
  %63 = load i8, i8* %62, align 1, !tbaa !2
  %64 = getelementptr inbounds i8, i8* %0, i64 20
  store i8 %63, i8* %64, align 1, !tbaa !2
  %65 = getelementptr inbounds i8, i8* %2, i64 21
  %66 = load i8, i8* %65, align 1, !tbaa !2
  %67 = getelementptr inbounds i8, i8* %0, i64 21
  store i8 %66, i8* %67, align 1, !tbaa !2
  %68 = getelementptr inbounds i8, i8* %2, i64 22
  %69 = load i8, i8* %68, align 1, !tbaa !2
  %70 = getelementptr inbounds i8, i8* %0, i64 22
  store i8 %69, i8* %70, align 1, !tbaa !2
  %71 = getelementptr inbounds i8, i8* %2, i64 23
  %72 = load i8, i8* %71, align 1, !tbaa !2
  %73 = getelementptr inbounds i8, i8* %0, i64 23
  store i8 %72, i8* %73, align 1, !tbaa !2
  %74 = getelementptr inbounds i8, i8* %2, i64 24
  %75 = load i8, i8* %74, align 1, !tbaa !2
  %76 = getelementptr inbounds i8, i8* %0, i64 24
  store i8 %75, i8* %76, align 1, !tbaa !2
  %77 = getelementptr inbounds i8, i8* %2, i64 25
  %78 = load i8, i8* %77, align 1, !tbaa !2
  %79 = getelementptr inbounds i8, i8* %0, i64 25
  store i8 %78, i8* %79, align 1, !tbaa !2
  %80 = getelementptr inbounds i8, i8* %2, i64 26
  %81 = load i8, i8* %80, align 1, !tbaa !2
  %82 = getelementptr inbounds i8, i8* %0, i64 26
  store i8 %81, i8* %82, align 1, !tbaa !2
  %83 = getelementptr inbounds i8, i8* %2, i64 27
  %84 = load i8, i8* %83, align 1, !tbaa !2
  %85 = getelementptr inbounds i8, i8* %0, i64 27
  store i8 %84, i8* %85, align 1, !tbaa !2
  %86 = getelementptr inbounds i8, i8* %2, i64 28
  %87 = load i8, i8* %86, align 1, !tbaa !2
  %88 = getelementptr inbounds i8, i8* %0, i64 28
  store i8 %87, i8* %88, align 1, !tbaa !2
  %89 = getelementptr inbounds i8, i8* %2, i64 29
  %90 = load i8, i8* %89, align 1, !tbaa !2
  %91 = getelementptr inbounds i8, i8* %0, i64 29
  store i8 %90, i8* %91, align 1, !tbaa !2
  %92 = getelementptr inbounds i8, i8* %2, i64 30
  %93 = load i8, i8* %92, align 1, !tbaa !2
  %94 = getelementptr inbounds i8, i8* %0, i64 30
  store i8 %93, i8* %94, align 1, !tbaa !2
  %95 = getelementptr inbounds i8, i8* %2, i64 31
  %96 = load i8, i8* %95, align 1, !tbaa !2
  %97 = getelementptr inbounds i8, i8* %0, i64 31
  store i8 %96, i8* %97, align 1, !tbaa !2
  %98 = getelementptr inbounds i8, i8* %2, i64 32
  %99 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* %99, i8* %98) #7
  %100 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %101 = getelementptr inbounds i8, i8* %2, i64 320
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* %100, i8* %101) #7
  %102 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %103 = getelementptr inbounds i8, i8* %2, i64 608
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* %102, i8* %103) #7
  %104 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %105 = getelementptr inbounds i8, i8* %2, i64 896
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* %104, i8* %105) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_sk(i8*, i8* nocapture readonly, i8* nocapture readonly, i8* nocapture readonly, %struct.polyvecl*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 {
  %8 = load i8, i8* %1, align 1, !tbaa !2
  store i8 %8, i8* %0, align 1, !tbaa !2
  %9 = getelementptr inbounds i8, i8* %1, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !2
  %11 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %10, i8* %11, align 1, !tbaa !2
  %12 = getelementptr inbounds i8, i8* %1, i64 2
  %13 = load i8, i8* %12, align 1, !tbaa !2
  %14 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %13, i8* %14, align 1, !tbaa !2
  %15 = getelementptr inbounds i8, i8* %1, i64 3
  %16 = load i8, i8* %15, align 1, !tbaa !2
  %17 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %16, i8* %17, align 1, !tbaa !2
  %18 = getelementptr inbounds i8, i8* %1, i64 4
  %19 = load i8, i8* %18, align 1, !tbaa !2
  %20 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 %19, i8* %20, align 1, !tbaa !2
  %21 = getelementptr inbounds i8, i8* %1, i64 5
  %22 = load i8, i8* %21, align 1, !tbaa !2
  %23 = getelementptr inbounds i8, i8* %0, i64 5
  store i8 %22, i8* %23, align 1, !tbaa !2
  %24 = getelementptr inbounds i8, i8* %1, i64 6
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %26 = getelementptr inbounds i8, i8* %0, i64 6
  store i8 %25, i8* %26, align 1, !tbaa !2
  %27 = getelementptr inbounds i8, i8* %1, i64 7
  %28 = load i8, i8* %27, align 1, !tbaa !2
  %29 = getelementptr inbounds i8, i8* %0, i64 7
  store i8 %28, i8* %29, align 1, !tbaa !2
  %30 = getelementptr inbounds i8, i8* %1, i64 8
  %31 = load i8, i8* %30, align 1, !tbaa !2
  %32 = getelementptr inbounds i8, i8* %0, i64 8
  store i8 %31, i8* %32, align 1, !tbaa !2
  %33 = getelementptr inbounds i8, i8* %1, i64 9
  %34 = load i8, i8* %33, align 1, !tbaa !2
  %35 = getelementptr inbounds i8, i8* %0, i64 9
  store i8 %34, i8* %35, align 1, !tbaa !2
  %36 = getelementptr inbounds i8, i8* %1, i64 10
  %37 = load i8, i8* %36, align 1, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %0, i64 10
  store i8 %37, i8* %38, align 1, !tbaa !2
  %39 = getelementptr inbounds i8, i8* %1, i64 11
  %40 = load i8, i8* %39, align 1, !tbaa !2
  %41 = getelementptr inbounds i8, i8* %0, i64 11
  store i8 %40, i8* %41, align 1, !tbaa !2
  %42 = getelementptr inbounds i8, i8* %1, i64 12
  %43 = load i8, i8* %42, align 1, !tbaa !2
  %44 = getelementptr inbounds i8, i8* %0, i64 12
  store i8 %43, i8* %44, align 1, !tbaa !2
  %45 = getelementptr inbounds i8, i8* %1, i64 13
  %46 = load i8, i8* %45, align 1, !tbaa !2
  %47 = getelementptr inbounds i8, i8* %0, i64 13
  store i8 %46, i8* %47, align 1, !tbaa !2
  %48 = getelementptr inbounds i8, i8* %1, i64 14
  %49 = load i8, i8* %48, align 1, !tbaa !2
  %50 = getelementptr inbounds i8, i8* %0, i64 14
  store i8 %49, i8* %50, align 1, !tbaa !2
  %51 = getelementptr inbounds i8, i8* %1, i64 15
  %52 = load i8, i8* %51, align 1, !tbaa !2
  %53 = getelementptr inbounds i8, i8* %0, i64 15
  store i8 %52, i8* %53, align 1, !tbaa !2
  %54 = getelementptr inbounds i8, i8* %1, i64 16
  %55 = load i8, i8* %54, align 1, !tbaa !2
  %56 = getelementptr inbounds i8, i8* %0, i64 16
  store i8 %55, i8* %56, align 1, !tbaa !2
  %57 = getelementptr inbounds i8, i8* %1, i64 17
  %58 = load i8, i8* %57, align 1, !tbaa !2
  %59 = getelementptr inbounds i8, i8* %0, i64 17
  store i8 %58, i8* %59, align 1, !tbaa !2
  %60 = getelementptr inbounds i8, i8* %1, i64 18
  %61 = load i8, i8* %60, align 1, !tbaa !2
  %62 = getelementptr inbounds i8, i8* %0, i64 18
  store i8 %61, i8* %62, align 1, !tbaa !2
  %63 = getelementptr inbounds i8, i8* %1, i64 19
  %64 = load i8, i8* %63, align 1, !tbaa !2
  %65 = getelementptr inbounds i8, i8* %0, i64 19
  store i8 %64, i8* %65, align 1, !tbaa !2
  %66 = getelementptr inbounds i8, i8* %1, i64 20
  %67 = load i8, i8* %66, align 1, !tbaa !2
  %68 = getelementptr inbounds i8, i8* %0, i64 20
  store i8 %67, i8* %68, align 1, !tbaa !2
  %69 = getelementptr inbounds i8, i8* %1, i64 21
  %70 = load i8, i8* %69, align 1, !tbaa !2
  %71 = getelementptr inbounds i8, i8* %0, i64 21
  store i8 %70, i8* %71, align 1, !tbaa !2
  %72 = getelementptr inbounds i8, i8* %1, i64 22
  %73 = load i8, i8* %72, align 1, !tbaa !2
  %74 = getelementptr inbounds i8, i8* %0, i64 22
  store i8 %73, i8* %74, align 1, !tbaa !2
  %75 = getelementptr inbounds i8, i8* %1, i64 23
  %76 = load i8, i8* %75, align 1, !tbaa !2
  %77 = getelementptr inbounds i8, i8* %0, i64 23
  store i8 %76, i8* %77, align 1, !tbaa !2
  %78 = getelementptr inbounds i8, i8* %1, i64 24
  %79 = load i8, i8* %78, align 1, !tbaa !2
  %80 = getelementptr inbounds i8, i8* %0, i64 24
  store i8 %79, i8* %80, align 1, !tbaa !2
  %81 = getelementptr inbounds i8, i8* %1, i64 25
  %82 = load i8, i8* %81, align 1, !tbaa !2
  %83 = getelementptr inbounds i8, i8* %0, i64 25
  store i8 %82, i8* %83, align 1, !tbaa !2
  %84 = getelementptr inbounds i8, i8* %1, i64 26
  %85 = load i8, i8* %84, align 1, !tbaa !2
  %86 = getelementptr inbounds i8, i8* %0, i64 26
  store i8 %85, i8* %86, align 1, !tbaa !2
  %87 = getelementptr inbounds i8, i8* %1, i64 27
  %88 = load i8, i8* %87, align 1, !tbaa !2
  %89 = getelementptr inbounds i8, i8* %0, i64 27
  store i8 %88, i8* %89, align 1, !tbaa !2
  %90 = getelementptr inbounds i8, i8* %1, i64 28
  %91 = load i8, i8* %90, align 1, !tbaa !2
  %92 = getelementptr inbounds i8, i8* %0, i64 28
  store i8 %91, i8* %92, align 1, !tbaa !2
  %93 = getelementptr inbounds i8, i8* %1, i64 29
  %94 = load i8, i8* %93, align 1, !tbaa !2
  %95 = getelementptr inbounds i8, i8* %0, i64 29
  store i8 %94, i8* %95, align 1, !tbaa !2
  %96 = getelementptr inbounds i8, i8* %1, i64 30
  %97 = load i8, i8* %96, align 1, !tbaa !2
  %98 = getelementptr inbounds i8, i8* %0, i64 30
  store i8 %97, i8* %98, align 1, !tbaa !2
  %99 = getelementptr inbounds i8, i8* %1, i64 31
  %100 = load i8, i8* %99, align 1, !tbaa !2
  %101 = getelementptr inbounds i8, i8* %0, i64 31
  store i8 %100, i8* %101, align 1, !tbaa !2
  %102 = getelementptr inbounds i8, i8* %0, i64 32
  %103 = load i8, i8* %2, align 1, !tbaa !2
  store i8 %103, i8* %102, align 1, !tbaa !2
  %104 = getelementptr inbounds i8, i8* %2, i64 1
  %105 = load i8, i8* %104, align 1, !tbaa !2
  %106 = getelementptr inbounds i8, i8* %0, i64 33
  store i8 %105, i8* %106, align 1, !tbaa !2
  %107 = getelementptr inbounds i8, i8* %2, i64 2
  %108 = load i8, i8* %107, align 1, !tbaa !2
  %109 = getelementptr inbounds i8, i8* %0, i64 34
  store i8 %108, i8* %109, align 1, !tbaa !2
  %110 = getelementptr inbounds i8, i8* %2, i64 3
  %111 = load i8, i8* %110, align 1, !tbaa !2
  %112 = getelementptr inbounds i8, i8* %0, i64 35
  store i8 %111, i8* %112, align 1, !tbaa !2
  %113 = getelementptr inbounds i8, i8* %2, i64 4
  %114 = load i8, i8* %113, align 1, !tbaa !2
  %115 = getelementptr inbounds i8, i8* %0, i64 36
  store i8 %114, i8* %115, align 1, !tbaa !2
  %116 = getelementptr inbounds i8, i8* %2, i64 5
  %117 = load i8, i8* %116, align 1, !tbaa !2
  %118 = getelementptr inbounds i8, i8* %0, i64 37
  store i8 %117, i8* %118, align 1, !tbaa !2
  %119 = getelementptr inbounds i8, i8* %2, i64 6
  %120 = load i8, i8* %119, align 1, !tbaa !2
  %121 = getelementptr inbounds i8, i8* %0, i64 38
  store i8 %120, i8* %121, align 1, !tbaa !2
  %122 = getelementptr inbounds i8, i8* %2, i64 7
  %123 = load i8, i8* %122, align 1, !tbaa !2
  %124 = getelementptr inbounds i8, i8* %0, i64 39
  store i8 %123, i8* %124, align 1, !tbaa !2
  %125 = getelementptr inbounds i8, i8* %2, i64 8
  %126 = load i8, i8* %125, align 1, !tbaa !2
  %127 = getelementptr inbounds i8, i8* %0, i64 40
  store i8 %126, i8* %127, align 1, !tbaa !2
  %128 = getelementptr inbounds i8, i8* %2, i64 9
  %129 = load i8, i8* %128, align 1, !tbaa !2
  %130 = getelementptr inbounds i8, i8* %0, i64 41
  store i8 %129, i8* %130, align 1, !tbaa !2
  %131 = getelementptr inbounds i8, i8* %2, i64 10
  %132 = load i8, i8* %131, align 1, !tbaa !2
  %133 = getelementptr inbounds i8, i8* %0, i64 42
  store i8 %132, i8* %133, align 1, !tbaa !2
  %134 = getelementptr inbounds i8, i8* %2, i64 11
  %135 = load i8, i8* %134, align 1, !tbaa !2
  %136 = getelementptr inbounds i8, i8* %0, i64 43
  store i8 %135, i8* %136, align 1, !tbaa !2
  %137 = getelementptr inbounds i8, i8* %2, i64 12
  %138 = load i8, i8* %137, align 1, !tbaa !2
  %139 = getelementptr inbounds i8, i8* %0, i64 44
  store i8 %138, i8* %139, align 1, !tbaa !2
  %140 = getelementptr inbounds i8, i8* %2, i64 13
  %141 = load i8, i8* %140, align 1, !tbaa !2
  %142 = getelementptr inbounds i8, i8* %0, i64 45
  store i8 %141, i8* %142, align 1, !tbaa !2
  %143 = getelementptr inbounds i8, i8* %2, i64 14
  %144 = load i8, i8* %143, align 1, !tbaa !2
  %145 = getelementptr inbounds i8, i8* %0, i64 46
  store i8 %144, i8* %145, align 1, !tbaa !2
  %146 = getelementptr inbounds i8, i8* %2, i64 15
  %147 = load i8, i8* %146, align 1, !tbaa !2
  %148 = getelementptr inbounds i8, i8* %0, i64 47
  store i8 %147, i8* %148, align 1, !tbaa !2
  %149 = getelementptr inbounds i8, i8* %2, i64 16
  %150 = load i8, i8* %149, align 1, !tbaa !2
  %151 = getelementptr inbounds i8, i8* %0, i64 48
  store i8 %150, i8* %151, align 1, !tbaa !2
  %152 = getelementptr inbounds i8, i8* %2, i64 17
  %153 = load i8, i8* %152, align 1, !tbaa !2
  %154 = getelementptr inbounds i8, i8* %0, i64 49
  store i8 %153, i8* %154, align 1, !tbaa !2
  %155 = getelementptr inbounds i8, i8* %2, i64 18
  %156 = load i8, i8* %155, align 1, !tbaa !2
  %157 = getelementptr inbounds i8, i8* %0, i64 50
  store i8 %156, i8* %157, align 1, !tbaa !2
  %158 = getelementptr inbounds i8, i8* %2, i64 19
  %159 = load i8, i8* %158, align 1, !tbaa !2
  %160 = getelementptr inbounds i8, i8* %0, i64 51
  store i8 %159, i8* %160, align 1, !tbaa !2
  %161 = getelementptr inbounds i8, i8* %2, i64 20
  %162 = load i8, i8* %161, align 1, !tbaa !2
  %163 = getelementptr inbounds i8, i8* %0, i64 52
  store i8 %162, i8* %163, align 1, !tbaa !2
  %164 = getelementptr inbounds i8, i8* %2, i64 21
  %165 = load i8, i8* %164, align 1, !tbaa !2
  %166 = getelementptr inbounds i8, i8* %0, i64 53
  store i8 %165, i8* %166, align 1, !tbaa !2
  %167 = getelementptr inbounds i8, i8* %2, i64 22
  %168 = load i8, i8* %167, align 1, !tbaa !2
  %169 = getelementptr inbounds i8, i8* %0, i64 54
  store i8 %168, i8* %169, align 1, !tbaa !2
  %170 = getelementptr inbounds i8, i8* %2, i64 23
  %171 = load i8, i8* %170, align 1, !tbaa !2
  %172 = getelementptr inbounds i8, i8* %0, i64 55
  store i8 %171, i8* %172, align 1, !tbaa !2
  %173 = getelementptr inbounds i8, i8* %2, i64 24
  %174 = load i8, i8* %173, align 1, !tbaa !2
  %175 = getelementptr inbounds i8, i8* %0, i64 56
  store i8 %174, i8* %175, align 1, !tbaa !2
  %176 = getelementptr inbounds i8, i8* %2, i64 25
  %177 = load i8, i8* %176, align 1, !tbaa !2
  %178 = getelementptr inbounds i8, i8* %0, i64 57
  store i8 %177, i8* %178, align 1, !tbaa !2
  %179 = getelementptr inbounds i8, i8* %2, i64 26
  %180 = load i8, i8* %179, align 1, !tbaa !2
  %181 = getelementptr inbounds i8, i8* %0, i64 58
  store i8 %180, i8* %181, align 1, !tbaa !2
  %182 = getelementptr inbounds i8, i8* %2, i64 27
  %183 = load i8, i8* %182, align 1, !tbaa !2
  %184 = getelementptr inbounds i8, i8* %0, i64 59
  store i8 %183, i8* %184, align 1, !tbaa !2
  %185 = getelementptr inbounds i8, i8* %2, i64 28
  %186 = load i8, i8* %185, align 1, !tbaa !2
  %187 = getelementptr inbounds i8, i8* %0, i64 60
  store i8 %186, i8* %187, align 1, !tbaa !2
  %188 = getelementptr inbounds i8, i8* %2, i64 29
  %189 = load i8, i8* %188, align 1, !tbaa !2
  %190 = getelementptr inbounds i8, i8* %0, i64 61
  store i8 %189, i8* %190, align 1, !tbaa !2
  %191 = getelementptr inbounds i8, i8* %2, i64 30
  %192 = load i8, i8* %191, align 1, !tbaa !2
  %193 = getelementptr inbounds i8, i8* %0, i64 62
  store i8 %192, i8* %193, align 1, !tbaa !2
  %194 = getelementptr inbounds i8, i8* %2, i64 31
  %195 = load i8, i8* %194, align 1, !tbaa !2
  %196 = getelementptr inbounds i8, i8* %0, i64 63
  store i8 %195, i8* %196, align 1, !tbaa !2
  %197 = getelementptr inbounds i8, i8* %0, i64 64
  %198 = load i8, i8* %3, align 1, !tbaa !2
  store i8 %198, i8* %197, align 1, !tbaa !2
  %199 = getelementptr inbounds i8, i8* %3, i64 1
  %200 = load i8, i8* %199, align 1, !tbaa !2
  %201 = getelementptr inbounds i8, i8* %0, i64 65
  store i8 %200, i8* %201, align 1, !tbaa !2
  %202 = getelementptr inbounds i8, i8* %3, i64 2
  %203 = load i8, i8* %202, align 1, !tbaa !2
  %204 = getelementptr inbounds i8, i8* %0, i64 66
  store i8 %203, i8* %204, align 1, !tbaa !2
  %205 = getelementptr inbounds i8, i8* %3, i64 3
  %206 = load i8, i8* %205, align 1, !tbaa !2
  %207 = getelementptr inbounds i8, i8* %0, i64 67
  store i8 %206, i8* %207, align 1, !tbaa !2
  %208 = getelementptr inbounds i8, i8* %3, i64 4
  %209 = load i8, i8* %208, align 1, !tbaa !2
  %210 = getelementptr inbounds i8, i8* %0, i64 68
  store i8 %209, i8* %210, align 1, !tbaa !2
  %211 = getelementptr inbounds i8, i8* %3, i64 5
  %212 = load i8, i8* %211, align 1, !tbaa !2
  %213 = getelementptr inbounds i8, i8* %0, i64 69
  store i8 %212, i8* %213, align 1, !tbaa !2
  %214 = getelementptr inbounds i8, i8* %3, i64 6
  %215 = load i8, i8* %214, align 1, !tbaa !2
  %216 = getelementptr inbounds i8, i8* %0, i64 70
  store i8 %215, i8* %216, align 1, !tbaa !2
  %217 = getelementptr inbounds i8, i8* %3, i64 7
  %218 = load i8, i8* %217, align 1, !tbaa !2
  %219 = getelementptr inbounds i8, i8* %0, i64 71
  store i8 %218, i8* %219, align 1, !tbaa !2
  %220 = getelementptr inbounds i8, i8* %3, i64 8
  %221 = load i8, i8* %220, align 1, !tbaa !2
  %222 = getelementptr inbounds i8, i8* %0, i64 72
  store i8 %221, i8* %222, align 1, !tbaa !2
  %223 = getelementptr inbounds i8, i8* %3, i64 9
  %224 = load i8, i8* %223, align 1, !tbaa !2
  %225 = getelementptr inbounds i8, i8* %0, i64 73
  store i8 %224, i8* %225, align 1, !tbaa !2
  %226 = getelementptr inbounds i8, i8* %3, i64 10
  %227 = load i8, i8* %226, align 1, !tbaa !2
  %228 = getelementptr inbounds i8, i8* %0, i64 74
  store i8 %227, i8* %228, align 1, !tbaa !2
  %229 = getelementptr inbounds i8, i8* %3, i64 11
  %230 = load i8, i8* %229, align 1, !tbaa !2
  %231 = getelementptr inbounds i8, i8* %0, i64 75
  store i8 %230, i8* %231, align 1, !tbaa !2
  %232 = getelementptr inbounds i8, i8* %3, i64 12
  %233 = load i8, i8* %232, align 1, !tbaa !2
  %234 = getelementptr inbounds i8, i8* %0, i64 76
  store i8 %233, i8* %234, align 1, !tbaa !2
  %235 = getelementptr inbounds i8, i8* %3, i64 13
  %236 = load i8, i8* %235, align 1, !tbaa !2
  %237 = getelementptr inbounds i8, i8* %0, i64 77
  store i8 %236, i8* %237, align 1, !tbaa !2
  %238 = getelementptr inbounds i8, i8* %3, i64 14
  %239 = load i8, i8* %238, align 1, !tbaa !2
  %240 = getelementptr inbounds i8, i8* %0, i64 78
  store i8 %239, i8* %240, align 1, !tbaa !2
  %241 = getelementptr inbounds i8, i8* %3, i64 15
  %242 = load i8, i8* %241, align 1, !tbaa !2
  %243 = getelementptr inbounds i8, i8* %0, i64 79
  store i8 %242, i8* %243, align 1, !tbaa !2
  %244 = getelementptr inbounds i8, i8* %3, i64 16
  %245 = load i8, i8* %244, align 1, !tbaa !2
  %246 = getelementptr inbounds i8, i8* %0, i64 80
  store i8 %245, i8* %246, align 1, !tbaa !2
  %247 = getelementptr inbounds i8, i8* %3, i64 17
  %248 = load i8, i8* %247, align 1, !tbaa !2
  %249 = getelementptr inbounds i8, i8* %0, i64 81
  store i8 %248, i8* %249, align 1, !tbaa !2
  %250 = getelementptr inbounds i8, i8* %3, i64 18
  %251 = load i8, i8* %250, align 1, !tbaa !2
  %252 = getelementptr inbounds i8, i8* %0, i64 82
  store i8 %251, i8* %252, align 1, !tbaa !2
  %253 = getelementptr inbounds i8, i8* %3, i64 19
  %254 = load i8, i8* %253, align 1, !tbaa !2
  %255 = getelementptr inbounds i8, i8* %0, i64 83
  store i8 %254, i8* %255, align 1, !tbaa !2
  %256 = getelementptr inbounds i8, i8* %3, i64 20
  %257 = load i8, i8* %256, align 1, !tbaa !2
  %258 = getelementptr inbounds i8, i8* %0, i64 84
  store i8 %257, i8* %258, align 1, !tbaa !2
  %259 = getelementptr inbounds i8, i8* %3, i64 21
  %260 = load i8, i8* %259, align 1, !tbaa !2
  %261 = getelementptr inbounds i8, i8* %0, i64 85
  store i8 %260, i8* %261, align 1, !tbaa !2
  %262 = getelementptr inbounds i8, i8* %3, i64 22
  %263 = load i8, i8* %262, align 1, !tbaa !2
  %264 = getelementptr inbounds i8, i8* %0, i64 86
  store i8 %263, i8* %264, align 1, !tbaa !2
  %265 = getelementptr inbounds i8, i8* %3, i64 23
  %266 = load i8, i8* %265, align 1, !tbaa !2
  %267 = getelementptr inbounds i8, i8* %0, i64 87
  store i8 %266, i8* %267, align 1, !tbaa !2
  %268 = getelementptr inbounds i8, i8* %3, i64 24
  %269 = load i8, i8* %268, align 1, !tbaa !2
  %270 = getelementptr inbounds i8, i8* %0, i64 88
  store i8 %269, i8* %270, align 1, !tbaa !2
  %271 = getelementptr inbounds i8, i8* %3, i64 25
  %272 = load i8, i8* %271, align 1, !tbaa !2
  %273 = getelementptr inbounds i8, i8* %0, i64 89
  store i8 %272, i8* %273, align 1, !tbaa !2
  %274 = getelementptr inbounds i8, i8* %3, i64 26
  %275 = load i8, i8* %274, align 1, !tbaa !2
  %276 = getelementptr inbounds i8, i8* %0, i64 90
  store i8 %275, i8* %276, align 1, !tbaa !2
  %277 = getelementptr inbounds i8, i8* %3, i64 27
  %278 = load i8, i8* %277, align 1, !tbaa !2
  %279 = getelementptr inbounds i8, i8* %0, i64 91
  store i8 %278, i8* %279, align 1, !tbaa !2
  %280 = getelementptr inbounds i8, i8* %3, i64 28
  %281 = load i8, i8* %280, align 1, !tbaa !2
  %282 = getelementptr inbounds i8, i8* %0, i64 92
  store i8 %281, i8* %282, align 1, !tbaa !2
  %283 = getelementptr inbounds i8, i8* %3, i64 29
  %284 = load i8, i8* %283, align 1, !tbaa !2
  %285 = getelementptr inbounds i8, i8* %0, i64 93
  store i8 %284, i8* %285, align 1, !tbaa !2
  %286 = getelementptr inbounds i8, i8* %3, i64 30
  %287 = load i8, i8* %286, align 1, !tbaa !2
  %288 = getelementptr inbounds i8, i8* %0, i64 94
  store i8 %287, i8* %288, align 1, !tbaa !2
  %289 = getelementptr inbounds i8, i8* %3, i64 31
  %290 = load i8, i8* %289, align 1, !tbaa !2
  %291 = getelementptr inbounds i8, i8* %0, i64 95
  store i8 %290, i8* %291, align 1, !tbaa !2
  %292 = getelementptr inbounds i8, i8* %3, i64 32
  %293 = load i8, i8* %292, align 1, !tbaa !2
  %294 = getelementptr inbounds i8, i8* %0, i64 96
  store i8 %293, i8* %294, align 1, !tbaa !2
  %295 = getelementptr inbounds i8, i8* %3, i64 33
  %296 = load i8, i8* %295, align 1, !tbaa !2
  %297 = getelementptr inbounds i8, i8* %0, i64 97
  store i8 %296, i8* %297, align 1, !tbaa !2
  %298 = getelementptr inbounds i8, i8* %3, i64 34
  %299 = load i8, i8* %298, align 1, !tbaa !2
  %300 = getelementptr inbounds i8, i8* %0, i64 98
  store i8 %299, i8* %300, align 1, !tbaa !2
  %301 = getelementptr inbounds i8, i8* %3, i64 35
  %302 = load i8, i8* %301, align 1, !tbaa !2
  %303 = getelementptr inbounds i8, i8* %0, i64 99
  store i8 %302, i8* %303, align 1, !tbaa !2
  %304 = getelementptr inbounds i8, i8* %3, i64 36
  %305 = load i8, i8* %304, align 1, !tbaa !2
  %306 = getelementptr inbounds i8, i8* %0, i64 100
  store i8 %305, i8* %306, align 1, !tbaa !2
  %307 = getelementptr inbounds i8, i8* %3, i64 37
  %308 = load i8, i8* %307, align 1, !tbaa !2
  %309 = getelementptr inbounds i8, i8* %0, i64 101
  store i8 %308, i8* %309, align 1, !tbaa !2
  %310 = getelementptr inbounds i8, i8* %3, i64 38
  %311 = load i8, i8* %310, align 1, !tbaa !2
  %312 = getelementptr inbounds i8, i8* %0, i64 102
  store i8 %311, i8* %312, align 1, !tbaa !2
  %313 = getelementptr inbounds i8, i8* %3, i64 39
  %314 = load i8, i8* %313, align 1, !tbaa !2
  %315 = getelementptr inbounds i8, i8* %0, i64 103
  store i8 %314, i8* %315, align 1, !tbaa !2
  %316 = getelementptr inbounds i8, i8* %3, i64 40
  %317 = load i8, i8* %316, align 1, !tbaa !2
  %318 = getelementptr inbounds i8, i8* %0, i64 104
  store i8 %317, i8* %318, align 1, !tbaa !2
  %319 = getelementptr inbounds i8, i8* %3, i64 41
  %320 = load i8, i8* %319, align 1, !tbaa !2
  %321 = getelementptr inbounds i8, i8* %0, i64 105
  store i8 %320, i8* %321, align 1, !tbaa !2
  %322 = getelementptr inbounds i8, i8* %3, i64 42
  %323 = load i8, i8* %322, align 1, !tbaa !2
  %324 = getelementptr inbounds i8, i8* %0, i64 106
  store i8 %323, i8* %324, align 1, !tbaa !2
  %325 = getelementptr inbounds i8, i8* %3, i64 43
  %326 = load i8, i8* %325, align 1, !tbaa !2
  %327 = getelementptr inbounds i8, i8* %0, i64 107
  store i8 %326, i8* %327, align 1, !tbaa !2
  %328 = getelementptr inbounds i8, i8* %3, i64 44
  %329 = load i8, i8* %328, align 1, !tbaa !2
  %330 = getelementptr inbounds i8, i8* %0, i64 108
  store i8 %329, i8* %330, align 1, !tbaa !2
  %331 = getelementptr inbounds i8, i8* %3, i64 45
  %332 = load i8, i8* %331, align 1, !tbaa !2
  %333 = getelementptr inbounds i8, i8* %0, i64 109
  store i8 %332, i8* %333, align 1, !tbaa !2
  %334 = getelementptr inbounds i8, i8* %3, i64 46
  %335 = load i8, i8* %334, align 1, !tbaa !2
  %336 = getelementptr inbounds i8, i8* %0, i64 110
  store i8 %335, i8* %336, align 1, !tbaa !2
  %337 = getelementptr inbounds i8, i8* %3, i64 47
  %338 = load i8, i8* %337, align 1, !tbaa !2
  %339 = getelementptr inbounds i8, i8* %0, i64 111
  store i8 %338, i8* %339, align 1, !tbaa !2
  %340 = getelementptr inbounds i8, i8* %0, i64 112
  %341 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %4, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %340, %struct.poly* %341) #7
  %342 = getelementptr inbounds i8, i8* %0, i64 240
  %343 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %4, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %342, %struct.poly* %343) #7
  %344 = getelementptr inbounds i8, i8* %0, i64 368
  %345 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %4, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %344, %struct.poly* %345) #7
  %346 = getelementptr inbounds i8, i8* %0, i64 496
  %347 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %346, %struct.poly* %347) #7
  %348 = getelementptr inbounds i8, i8* %0, i64 624
  %349 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %348, %struct.poly* %349) #7
  %350 = getelementptr inbounds i8, i8* %0, i64 752
  %351 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %350, %struct.poly* %351) #7
  %352 = getelementptr inbounds i8, i8* %0, i64 880
  %353 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %352, %struct.poly* %353) #7
  %354 = getelementptr inbounds i8, i8* %0, i64 1008
  %355 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %6, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* %354, %struct.poly* %355) #7
  %356 = getelementptr inbounds i8, i8* %0, i64 1456
  %357 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %6, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* %356, %struct.poly* %357) #7
  %358 = getelementptr inbounds i8, i8* %0, i64 1904
  %359 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %6, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* %358, %struct.poly* %359) #7
  %360 = getelementptr inbounds i8, i8* %0, i64 2352
  %361 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %6, i64 0, i32 0, i64 3
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* %360, %struct.poly* %361) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(i8* nocapture, i8* nocapture, i8* nocapture, %struct.polyvecl*, %struct.polyveck*, %struct.polyveck*, i8*) local_unnamed_addr #0 {
  %8 = load i8, i8* %6, align 1, !tbaa !2
  store i8 %8, i8* %0, align 1, !tbaa !2
  %9 = getelementptr inbounds i8, i8* %6, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !2
  %11 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %10, i8* %11, align 1, !tbaa !2
  %12 = getelementptr inbounds i8, i8* %6, i64 2
  %13 = load i8, i8* %12, align 1, !tbaa !2
  %14 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %13, i8* %14, align 1, !tbaa !2
  %15 = getelementptr inbounds i8, i8* %6, i64 3
  %16 = load i8, i8* %15, align 1, !tbaa !2
  %17 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %16, i8* %17, align 1, !tbaa !2
  %18 = getelementptr inbounds i8, i8* %6, i64 4
  %19 = load i8, i8* %18, align 1, !tbaa !2
  %20 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 %19, i8* %20, align 1, !tbaa !2
  %21 = getelementptr inbounds i8, i8* %6, i64 5
  %22 = load i8, i8* %21, align 1, !tbaa !2
  %23 = getelementptr inbounds i8, i8* %0, i64 5
  store i8 %22, i8* %23, align 1, !tbaa !2
  %24 = getelementptr inbounds i8, i8* %6, i64 6
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %26 = getelementptr inbounds i8, i8* %0, i64 6
  store i8 %25, i8* %26, align 1, !tbaa !2
  %27 = getelementptr inbounds i8, i8* %6, i64 7
  %28 = load i8, i8* %27, align 1, !tbaa !2
  %29 = getelementptr inbounds i8, i8* %0, i64 7
  store i8 %28, i8* %29, align 1, !tbaa !2
  %30 = getelementptr inbounds i8, i8* %6, i64 8
  %31 = load i8, i8* %30, align 1, !tbaa !2
  %32 = getelementptr inbounds i8, i8* %0, i64 8
  store i8 %31, i8* %32, align 1, !tbaa !2
  %33 = getelementptr inbounds i8, i8* %6, i64 9
  %34 = load i8, i8* %33, align 1, !tbaa !2
  %35 = getelementptr inbounds i8, i8* %0, i64 9
  store i8 %34, i8* %35, align 1, !tbaa !2
  %36 = getelementptr inbounds i8, i8* %6, i64 10
  %37 = load i8, i8* %36, align 1, !tbaa !2
  %38 = getelementptr inbounds i8, i8* %0, i64 10
  store i8 %37, i8* %38, align 1, !tbaa !2
  %39 = getelementptr inbounds i8, i8* %6, i64 11
  %40 = load i8, i8* %39, align 1, !tbaa !2
  %41 = getelementptr inbounds i8, i8* %0, i64 11
  store i8 %40, i8* %41, align 1, !tbaa !2
  %42 = getelementptr inbounds i8, i8* %6, i64 12
  %43 = load i8, i8* %42, align 1, !tbaa !2
  %44 = getelementptr inbounds i8, i8* %0, i64 12
  store i8 %43, i8* %44, align 1, !tbaa !2
  %45 = getelementptr inbounds i8, i8* %6, i64 13
  %46 = load i8, i8* %45, align 1, !tbaa !2
  %47 = getelementptr inbounds i8, i8* %0, i64 13
  store i8 %46, i8* %47, align 1, !tbaa !2
  %48 = getelementptr inbounds i8, i8* %6, i64 14
  %49 = load i8, i8* %48, align 1, !tbaa !2
  %50 = getelementptr inbounds i8, i8* %0, i64 14
  store i8 %49, i8* %50, align 1, !tbaa !2
  %51 = getelementptr inbounds i8, i8* %6, i64 15
  %52 = load i8, i8* %51, align 1, !tbaa !2
  %53 = getelementptr inbounds i8, i8* %0, i64 15
  store i8 %52, i8* %53, align 1, !tbaa !2
  %54 = getelementptr inbounds i8, i8* %6, i64 16
  %55 = load i8, i8* %54, align 1, !tbaa !2
  %56 = getelementptr inbounds i8, i8* %0, i64 16
  store i8 %55, i8* %56, align 1, !tbaa !2
  %57 = getelementptr inbounds i8, i8* %6, i64 17
  %58 = load i8, i8* %57, align 1, !tbaa !2
  %59 = getelementptr inbounds i8, i8* %0, i64 17
  store i8 %58, i8* %59, align 1, !tbaa !2
  %60 = getelementptr inbounds i8, i8* %6, i64 18
  %61 = load i8, i8* %60, align 1, !tbaa !2
  %62 = getelementptr inbounds i8, i8* %0, i64 18
  store i8 %61, i8* %62, align 1, !tbaa !2
  %63 = getelementptr inbounds i8, i8* %6, i64 19
  %64 = load i8, i8* %63, align 1, !tbaa !2
  %65 = getelementptr inbounds i8, i8* %0, i64 19
  store i8 %64, i8* %65, align 1, !tbaa !2
  %66 = getelementptr inbounds i8, i8* %6, i64 20
  %67 = load i8, i8* %66, align 1, !tbaa !2
  %68 = getelementptr inbounds i8, i8* %0, i64 20
  store i8 %67, i8* %68, align 1, !tbaa !2
  %69 = getelementptr inbounds i8, i8* %6, i64 21
  %70 = load i8, i8* %69, align 1, !tbaa !2
  %71 = getelementptr inbounds i8, i8* %0, i64 21
  store i8 %70, i8* %71, align 1, !tbaa !2
  %72 = getelementptr inbounds i8, i8* %6, i64 22
  %73 = load i8, i8* %72, align 1, !tbaa !2
  %74 = getelementptr inbounds i8, i8* %0, i64 22
  store i8 %73, i8* %74, align 1, !tbaa !2
  %75 = getelementptr inbounds i8, i8* %6, i64 23
  %76 = load i8, i8* %75, align 1, !tbaa !2
  %77 = getelementptr inbounds i8, i8* %0, i64 23
  store i8 %76, i8* %77, align 1, !tbaa !2
  %78 = getelementptr inbounds i8, i8* %6, i64 24
  %79 = load i8, i8* %78, align 1, !tbaa !2
  %80 = getelementptr inbounds i8, i8* %0, i64 24
  store i8 %79, i8* %80, align 1, !tbaa !2
  %81 = getelementptr inbounds i8, i8* %6, i64 25
  %82 = load i8, i8* %81, align 1, !tbaa !2
  %83 = getelementptr inbounds i8, i8* %0, i64 25
  store i8 %82, i8* %83, align 1, !tbaa !2
  %84 = getelementptr inbounds i8, i8* %6, i64 26
  %85 = load i8, i8* %84, align 1, !tbaa !2
  %86 = getelementptr inbounds i8, i8* %0, i64 26
  store i8 %85, i8* %86, align 1, !tbaa !2
  %87 = getelementptr inbounds i8, i8* %6, i64 27
  %88 = load i8, i8* %87, align 1, !tbaa !2
  %89 = getelementptr inbounds i8, i8* %0, i64 27
  store i8 %88, i8* %89, align 1, !tbaa !2
  %90 = getelementptr inbounds i8, i8* %6, i64 28
  %91 = load i8, i8* %90, align 1, !tbaa !2
  %92 = getelementptr inbounds i8, i8* %0, i64 28
  store i8 %91, i8* %92, align 1, !tbaa !2
  %93 = getelementptr inbounds i8, i8* %6, i64 29
  %94 = load i8, i8* %93, align 1, !tbaa !2
  %95 = getelementptr inbounds i8, i8* %0, i64 29
  store i8 %94, i8* %95, align 1, !tbaa !2
  %96 = getelementptr inbounds i8, i8* %6, i64 30
  %97 = load i8, i8* %96, align 1, !tbaa !2
  %98 = getelementptr inbounds i8, i8* %0, i64 30
  store i8 %97, i8* %98, align 1, !tbaa !2
  %99 = getelementptr inbounds i8, i8* %6, i64 31
  %100 = load i8, i8* %99, align 1, !tbaa !2
  %101 = getelementptr inbounds i8, i8* %0, i64 31
  store i8 %100, i8* %101, align 1, !tbaa !2
  %102 = getelementptr inbounds i8, i8* %6, i64 32
  %103 = load i8, i8* %102, align 1, !tbaa !2
  store i8 %103, i8* %1, align 1, !tbaa !2
  %104 = getelementptr inbounds i8, i8* %6, i64 33
  %105 = load i8, i8* %104, align 1, !tbaa !2
  %106 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %105, i8* %106, align 1, !tbaa !2
  %107 = getelementptr inbounds i8, i8* %6, i64 34
  %108 = load i8, i8* %107, align 1, !tbaa !2
  %109 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %108, i8* %109, align 1, !tbaa !2
  %110 = getelementptr inbounds i8, i8* %6, i64 35
  %111 = load i8, i8* %110, align 1, !tbaa !2
  %112 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %111, i8* %112, align 1, !tbaa !2
  %113 = getelementptr inbounds i8, i8* %6, i64 36
  %114 = load i8, i8* %113, align 1, !tbaa !2
  %115 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %114, i8* %115, align 1, !tbaa !2
  %116 = getelementptr inbounds i8, i8* %6, i64 37
  %117 = load i8, i8* %116, align 1, !tbaa !2
  %118 = getelementptr inbounds i8, i8* %1, i64 5
  store i8 %117, i8* %118, align 1, !tbaa !2
  %119 = getelementptr inbounds i8, i8* %6, i64 38
  %120 = load i8, i8* %119, align 1, !tbaa !2
  %121 = getelementptr inbounds i8, i8* %1, i64 6
  store i8 %120, i8* %121, align 1, !tbaa !2
  %122 = getelementptr inbounds i8, i8* %6, i64 39
  %123 = load i8, i8* %122, align 1, !tbaa !2
  %124 = getelementptr inbounds i8, i8* %1, i64 7
  store i8 %123, i8* %124, align 1, !tbaa !2
  %125 = getelementptr inbounds i8, i8* %6, i64 40
  %126 = load i8, i8* %125, align 1, !tbaa !2
  %127 = getelementptr inbounds i8, i8* %1, i64 8
  store i8 %126, i8* %127, align 1, !tbaa !2
  %128 = getelementptr inbounds i8, i8* %6, i64 41
  %129 = load i8, i8* %128, align 1, !tbaa !2
  %130 = getelementptr inbounds i8, i8* %1, i64 9
  store i8 %129, i8* %130, align 1, !tbaa !2
  %131 = getelementptr inbounds i8, i8* %6, i64 42
  %132 = load i8, i8* %131, align 1, !tbaa !2
  %133 = getelementptr inbounds i8, i8* %1, i64 10
  store i8 %132, i8* %133, align 1, !tbaa !2
  %134 = getelementptr inbounds i8, i8* %6, i64 43
  %135 = load i8, i8* %134, align 1, !tbaa !2
  %136 = getelementptr inbounds i8, i8* %1, i64 11
  store i8 %135, i8* %136, align 1, !tbaa !2
  %137 = getelementptr inbounds i8, i8* %6, i64 44
  %138 = load i8, i8* %137, align 1, !tbaa !2
  %139 = getelementptr inbounds i8, i8* %1, i64 12
  store i8 %138, i8* %139, align 1, !tbaa !2
  %140 = getelementptr inbounds i8, i8* %6, i64 45
  %141 = load i8, i8* %140, align 1, !tbaa !2
  %142 = getelementptr inbounds i8, i8* %1, i64 13
  store i8 %141, i8* %142, align 1, !tbaa !2
  %143 = getelementptr inbounds i8, i8* %6, i64 46
  %144 = load i8, i8* %143, align 1, !tbaa !2
  %145 = getelementptr inbounds i8, i8* %1, i64 14
  store i8 %144, i8* %145, align 1, !tbaa !2
  %146 = getelementptr inbounds i8, i8* %6, i64 47
  %147 = load i8, i8* %146, align 1, !tbaa !2
  %148 = getelementptr inbounds i8, i8* %1, i64 15
  store i8 %147, i8* %148, align 1, !tbaa !2
  %149 = getelementptr inbounds i8, i8* %6, i64 48
  %150 = load i8, i8* %149, align 1, !tbaa !2
  %151 = getelementptr inbounds i8, i8* %1, i64 16
  store i8 %150, i8* %151, align 1, !tbaa !2
  %152 = getelementptr inbounds i8, i8* %6, i64 49
  %153 = load i8, i8* %152, align 1, !tbaa !2
  %154 = getelementptr inbounds i8, i8* %1, i64 17
  store i8 %153, i8* %154, align 1, !tbaa !2
  %155 = getelementptr inbounds i8, i8* %6, i64 50
  %156 = load i8, i8* %155, align 1, !tbaa !2
  %157 = getelementptr inbounds i8, i8* %1, i64 18
  store i8 %156, i8* %157, align 1, !tbaa !2
  %158 = getelementptr inbounds i8, i8* %6, i64 51
  %159 = load i8, i8* %158, align 1, !tbaa !2
  %160 = getelementptr inbounds i8, i8* %1, i64 19
  store i8 %159, i8* %160, align 1, !tbaa !2
  %161 = getelementptr inbounds i8, i8* %6, i64 52
  %162 = load i8, i8* %161, align 1, !tbaa !2
  %163 = getelementptr inbounds i8, i8* %1, i64 20
  store i8 %162, i8* %163, align 1, !tbaa !2
  %164 = getelementptr inbounds i8, i8* %6, i64 53
  %165 = load i8, i8* %164, align 1, !tbaa !2
  %166 = getelementptr inbounds i8, i8* %1, i64 21
  store i8 %165, i8* %166, align 1, !tbaa !2
  %167 = getelementptr inbounds i8, i8* %6, i64 54
  %168 = load i8, i8* %167, align 1, !tbaa !2
  %169 = getelementptr inbounds i8, i8* %1, i64 22
  store i8 %168, i8* %169, align 1, !tbaa !2
  %170 = getelementptr inbounds i8, i8* %6, i64 55
  %171 = load i8, i8* %170, align 1, !tbaa !2
  %172 = getelementptr inbounds i8, i8* %1, i64 23
  store i8 %171, i8* %172, align 1, !tbaa !2
  %173 = getelementptr inbounds i8, i8* %6, i64 56
  %174 = load i8, i8* %173, align 1, !tbaa !2
  %175 = getelementptr inbounds i8, i8* %1, i64 24
  store i8 %174, i8* %175, align 1, !tbaa !2
  %176 = getelementptr inbounds i8, i8* %6, i64 57
  %177 = load i8, i8* %176, align 1, !tbaa !2
  %178 = getelementptr inbounds i8, i8* %1, i64 25
  store i8 %177, i8* %178, align 1, !tbaa !2
  %179 = getelementptr inbounds i8, i8* %6, i64 58
  %180 = load i8, i8* %179, align 1, !tbaa !2
  %181 = getelementptr inbounds i8, i8* %1, i64 26
  store i8 %180, i8* %181, align 1, !tbaa !2
  %182 = getelementptr inbounds i8, i8* %6, i64 59
  %183 = load i8, i8* %182, align 1, !tbaa !2
  %184 = getelementptr inbounds i8, i8* %1, i64 27
  store i8 %183, i8* %184, align 1, !tbaa !2
  %185 = getelementptr inbounds i8, i8* %6, i64 60
  %186 = load i8, i8* %185, align 1, !tbaa !2
  %187 = getelementptr inbounds i8, i8* %1, i64 28
  store i8 %186, i8* %187, align 1, !tbaa !2
  %188 = getelementptr inbounds i8, i8* %6, i64 61
  %189 = load i8, i8* %188, align 1, !tbaa !2
  %190 = getelementptr inbounds i8, i8* %1, i64 29
  store i8 %189, i8* %190, align 1, !tbaa !2
  %191 = getelementptr inbounds i8, i8* %6, i64 62
  %192 = load i8, i8* %191, align 1, !tbaa !2
  %193 = getelementptr inbounds i8, i8* %1, i64 30
  store i8 %192, i8* %193, align 1, !tbaa !2
  %194 = getelementptr inbounds i8, i8* %6, i64 63
  %195 = load i8, i8* %194, align 1, !tbaa !2
  %196 = getelementptr inbounds i8, i8* %1, i64 31
  store i8 %195, i8* %196, align 1, !tbaa !2
  %197 = getelementptr inbounds i8, i8* %6, i64 64
  %198 = load i8, i8* %197, align 1, !tbaa !2
  store i8 %198, i8* %2, align 1, !tbaa !2
  %199 = getelementptr inbounds i8, i8* %6, i64 65
  %200 = load i8, i8* %199, align 1, !tbaa !2
  %201 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %200, i8* %201, align 1, !tbaa !2
  %202 = getelementptr inbounds i8, i8* %6, i64 66
  %203 = load i8, i8* %202, align 1, !tbaa !2
  %204 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %203, i8* %204, align 1, !tbaa !2
  %205 = getelementptr inbounds i8, i8* %6, i64 67
  %206 = load i8, i8* %205, align 1, !tbaa !2
  %207 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %206, i8* %207, align 1, !tbaa !2
  %208 = getelementptr inbounds i8, i8* %6, i64 68
  %209 = load i8, i8* %208, align 1, !tbaa !2
  %210 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %209, i8* %210, align 1, !tbaa !2
  %211 = getelementptr inbounds i8, i8* %6, i64 69
  %212 = load i8, i8* %211, align 1, !tbaa !2
  %213 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %212, i8* %213, align 1, !tbaa !2
  %214 = getelementptr inbounds i8, i8* %6, i64 70
  %215 = load i8, i8* %214, align 1, !tbaa !2
  %216 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %215, i8* %216, align 1, !tbaa !2
  %217 = getelementptr inbounds i8, i8* %6, i64 71
  %218 = load i8, i8* %217, align 1, !tbaa !2
  %219 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %218, i8* %219, align 1, !tbaa !2
  %220 = getelementptr inbounds i8, i8* %6, i64 72
  %221 = load i8, i8* %220, align 1, !tbaa !2
  %222 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %221, i8* %222, align 1, !tbaa !2
  %223 = getelementptr inbounds i8, i8* %6, i64 73
  %224 = load i8, i8* %223, align 1, !tbaa !2
  %225 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %224, i8* %225, align 1, !tbaa !2
  %226 = getelementptr inbounds i8, i8* %6, i64 74
  %227 = load i8, i8* %226, align 1, !tbaa !2
  %228 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %227, i8* %228, align 1, !tbaa !2
  %229 = getelementptr inbounds i8, i8* %6, i64 75
  %230 = load i8, i8* %229, align 1, !tbaa !2
  %231 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %230, i8* %231, align 1, !tbaa !2
  %232 = getelementptr inbounds i8, i8* %6, i64 76
  %233 = load i8, i8* %232, align 1, !tbaa !2
  %234 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %233, i8* %234, align 1, !tbaa !2
  %235 = getelementptr inbounds i8, i8* %6, i64 77
  %236 = load i8, i8* %235, align 1, !tbaa !2
  %237 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %236, i8* %237, align 1, !tbaa !2
  %238 = getelementptr inbounds i8, i8* %6, i64 78
  %239 = load i8, i8* %238, align 1, !tbaa !2
  %240 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %239, i8* %240, align 1, !tbaa !2
  %241 = getelementptr inbounds i8, i8* %6, i64 79
  %242 = load i8, i8* %241, align 1, !tbaa !2
  %243 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %242, i8* %243, align 1, !tbaa !2
  %244 = getelementptr inbounds i8, i8* %6, i64 80
  %245 = load i8, i8* %244, align 1, !tbaa !2
  %246 = getelementptr inbounds i8, i8* %2, i64 16
  store i8 %245, i8* %246, align 1, !tbaa !2
  %247 = getelementptr inbounds i8, i8* %6, i64 81
  %248 = load i8, i8* %247, align 1, !tbaa !2
  %249 = getelementptr inbounds i8, i8* %2, i64 17
  store i8 %248, i8* %249, align 1, !tbaa !2
  %250 = getelementptr inbounds i8, i8* %6, i64 82
  %251 = load i8, i8* %250, align 1, !tbaa !2
  %252 = getelementptr inbounds i8, i8* %2, i64 18
  store i8 %251, i8* %252, align 1, !tbaa !2
  %253 = getelementptr inbounds i8, i8* %6, i64 83
  %254 = load i8, i8* %253, align 1, !tbaa !2
  %255 = getelementptr inbounds i8, i8* %2, i64 19
  store i8 %254, i8* %255, align 1, !tbaa !2
  %256 = getelementptr inbounds i8, i8* %6, i64 84
  %257 = load i8, i8* %256, align 1, !tbaa !2
  %258 = getelementptr inbounds i8, i8* %2, i64 20
  store i8 %257, i8* %258, align 1, !tbaa !2
  %259 = getelementptr inbounds i8, i8* %6, i64 85
  %260 = load i8, i8* %259, align 1, !tbaa !2
  %261 = getelementptr inbounds i8, i8* %2, i64 21
  store i8 %260, i8* %261, align 1, !tbaa !2
  %262 = getelementptr inbounds i8, i8* %6, i64 86
  %263 = load i8, i8* %262, align 1, !tbaa !2
  %264 = getelementptr inbounds i8, i8* %2, i64 22
  store i8 %263, i8* %264, align 1, !tbaa !2
  %265 = getelementptr inbounds i8, i8* %6, i64 87
  %266 = load i8, i8* %265, align 1, !tbaa !2
  %267 = getelementptr inbounds i8, i8* %2, i64 23
  store i8 %266, i8* %267, align 1, !tbaa !2
  %268 = getelementptr inbounds i8, i8* %6, i64 88
  %269 = load i8, i8* %268, align 1, !tbaa !2
  %270 = getelementptr inbounds i8, i8* %2, i64 24
  store i8 %269, i8* %270, align 1, !tbaa !2
  %271 = getelementptr inbounds i8, i8* %6, i64 89
  %272 = load i8, i8* %271, align 1, !tbaa !2
  %273 = getelementptr inbounds i8, i8* %2, i64 25
  store i8 %272, i8* %273, align 1, !tbaa !2
  %274 = getelementptr inbounds i8, i8* %6, i64 90
  %275 = load i8, i8* %274, align 1, !tbaa !2
  %276 = getelementptr inbounds i8, i8* %2, i64 26
  store i8 %275, i8* %276, align 1, !tbaa !2
  %277 = getelementptr inbounds i8, i8* %6, i64 91
  %278 = load i8, i8* %277, align 1, !tbaa !2
  %279 = getelementptr inbounds i8, i8* %2, i64 27
  store i8 %278, i8* %279, align 1, !tbaa !2
  %280 = getelementptr inbounds i8, i8* %6, i64 92
  %281 = load i8, i8* %280, align 1, !tbaa !2
  %282 = getelementptr inbounds i8, i8* %2, i64 28
  store i8 %281, i8* %282, align 1, !tbaa !2
  %283 = getelementptr inbounds i8, i8* %6, i64 93
  %284 = load i8, i8* %283, align 1, !tbaa !2
  %285 = getelementptr inbounds i8, i8* %2, i64 29
  store i8 %284, i8* %285, align 1, !tbaa !2
  %286 = getelementptr inbounds i8, i8* %6, i64 94
  %287 = load i8, i8* %286, align 1, !tbaa !2
  %288 = getelementptr inbounds i8, i8* %2, i64 30
  store i8 %287, i8* %288, align 1, !tbaa !2
  %289 = getelementptr inbounds i8, i8* %6, i64 95
  %290 = load i8, i8* %289, align 1, !tbaa !2
  %291 = getelementptr inbounds i8, i8* %2, i64 31
  store i8 %290, i8* %291, align 1, !tbaa !2
  %292 = getelementptr inbounds i8, i8* %6, i64 96
  %293 = load i8, i8* %292, align 1, !tbaa !2
  %294 = getelementptr inbounds i8, i8* %2, i64 32
  store i8 %293, i8* %294, align 1, !tbaa !2
  %295 = getelementptr inbounds i8, i8* %6, i64 97
  %296 = load i8, i8* %295, align 1, !tbaa !2
  %297 = getelementptr inbounds i8, i8* %2, i64 33
  store i8 %296, i8* %297, align 1, !tbaa !2
  %298 = getelementptr inbounds i8, i8* %6, i64 98
  %299 = load i8, i8* %298, align 1, !tbaa !2
  %300 = getelementptr inbounds i8, i8* %2, i64 34
  store i8 %299, i8* %300, align 1, !tbaa !2
  %301 = getelementptr inbounds i8, i8* %6, i64 99
  %302 = load i8, i8* %301, align 1, !tbaa !2
  %303 = getelementptr inbounds i8, i8* %2, i64 35
  store i8 %302, i8* %303, align 1, !tbaa !2
  %304 = getelementptr inbounds i8, i8* %6, i64 100
  %305 = load i8, i8* %304, align 1, !tbaa !2
  %306 = getelementptr inbounds i8, i8* %2, i64 36
  store i8 %305, i8* %306, align 1, !tbaa !2
  %307 = getelementptr inbounds i8, i8* %6, i64 101
  %308 = load i8, i8* %307, align 1, !tbaa !2
  %309 = getelementptr inbounds i8, i8* %2, i64 37
  store i8 %308, i8* %309, align 1, !tbaa !2
  %310 = getelementptr inbounds i8, i8* %6, i64 102
  %311 = load i8, i8* %310, align 1, !tbaa !2
  %312 = getelementptr inbounds i8, i8* %2, i64 38
  store i8 %311, i8* %312, align 1, !tbaa !2
  %313 = getelementptr inbounds i8, i8* %6, i64 103
  %314 = load i8, i8* %313, align 1, !tbaa !2
  %315 = getelementptr inbounds i8, i8* %2, i64 39
  store i8 %314, i8* %315, align 1, !tbaa !2
  %316 = getelementptr inbounds i8, i8* %6, i64 104
  %317 = load i8, i8* %316, align 1, !tbaa !2
  %318 = getelementptr inbounds i8, i8* %2, i64 40
  store i8 %317, i8* %318, align 1, !tbaa !2
  %319 = getelementptr inbounds i8, i8* %6, i64 105
  %320 = load i8, i8* %319, align 1, !tbaa !2
  %321 = getelementptr inbounds i8, i8* %2, i64 41
  store i8 %320, i8* %321, align 1, !tbaa !2
  %322 = getelementptr inbounds i8, i8* %6, i64 106
  %323 = load i8, i8* %322, align 1, !tbaa !2
  %324 = getelementptr inbounds i8, i8* %2, i64 42
  store i8 %323, i8* %324, align 1, !tbaa !2
  %325 = getelementptr inbounds i8, i8* %6, i64 107
  %326 = load i8, i8* %325, align 1, !tbaa !2
  %327 = getelementptr inbounds i8, i8* %2, i64 43
  store i8 %326, i8* %327, align 1, !tbaa !2
  %328 = getelementptr inbounds i8, i8* %6, i64 108
  %329 = load i8, i8* %328, align 1, !tbaa !2
  %330 = getelementptr inbounds i8, i8* %2, i64 44
  store i8 %329, i8* %330, align 1, !tbaa !2
  %331 = getelementptr inbounds i8, i8* %6, i64 109
  %332 = load i8, i8* %331, align 1, !tbaa !2
  %333 = getelementptr inbounds i8, i8* %2, i64 45
  store i8 %332, i8* %333, align 1, !tbaa !2
  %334 = getelementptr inbounds i8, i8* %6, i64 110
  %335 = load i8, i8* %334, align 1, !tbaa !2
  %336 = getelementptr inbounds i8, i8* %2, i64 46
  store i8 %335, i8* %336, align 1, !tbaa !2
  %337 = getelementptr inbounds i8, i8* %6, i64 111
  %338 = load i8, i8* %337, align 1, !tbaa !2
  %339 = getelementptr inbounds i8, i8* %2, i64 47
  store i8 %338, i8* %339, align 1, !tbaa !2
  %340 = getelementptr inbounds i8, i8* %6, i64 112
  %341 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %3, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %341, i8* %340) #7
  %342 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %3, i64 0, i32 0, i64 1
  %343 = getelementptr inbounds i8, i8* %6, i64 240
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %342, i8* %343) #7
  %344 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %3, i64 0, i32 0, i64 2
  %345 = getelementptr inbounds i8, i8* %6, i64 368
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %344, i8* %345) #7
  %346 = getelementptr inbounds i8, i8* %6, i64 496
  %347 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %4, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %347, i8* %346) #7
  %348 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %4, i64 0, i32 0, i64 1
  %349 = getelementptr inbounds i8, i8* %6, i64 624
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %348, i8* %349) #7
  %350 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %4, i64 0, i32 0, i64 2
  %351 = getelementptr inbounds i8, i8* %6, i64 752
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %350, i8* %351) #7
  %352 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %4, i64 0, i32 0, i64 3
  %353 = getelementptr inbounds i8, i8* %6, i64 880
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %352, i8* %353) #7
  %354 = getelementptr inbounds i8, i8* %6, i64 1008
  %355 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* %355, i8* %354) #7
  %356 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 1
  %357 = getelementptr inbounds i8, i8* %6, i64 1456
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* %356, i8* %357) #7
  %358 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 2
  %359 = getelementptr inbounds i8, i8* %6, i64 1904
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* %358, i8* %359) #7
  %360 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 3
  %361 = getelementptr inbounds i8, i8* %6, i64 2352
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* %360, i8* %361) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_sig(i8*, %struct.polyvecl*, %struct.polyveck* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* %0, %struct.poly* %5) #7
  %6 = getelementptr inbounds i8, i8* %0, i64 640
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* %6, %struct.poly* %7) #7
  %8 = getelementptr inbounds i8, i8* %0, i64 1280
  %9 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* %8, %struct.poly* %9) #7
  %10 = getelementptr inbounds i8, i8* %0, i64 1920
  br label %18

; <label>:11:                                     ; preds = %250
  %12 = zext i32 %261 to i64
  %13 = add nuw nsw i64 %12, 1920
  %14 = getelementptr i8, i8* %0, i64 %13
  %15 = sub i32 79, %261
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %17, i32 1, i1 false)
  br label %39

; <label>:18:                                     ; preds = %293, %4
  %19 = phi i64 [ 0, %4 ], [ %295, %293 ]
  %20 = phi i32 [ 0, %4 ], [ %294, %293 ]
  %21 = phi i32 [ 0, %4 ], [ %296, %293 ]
  %22 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0, i32 0, i64 %19
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

; <label>:25:                                     ; preds = %18
  %26 = trunc i32 %21 to i8
  %27 = add i32 %20, 1
  %28 = zext i32 %20 to i64
  %29 = getelementptr inbounds i8, i8* %10, i64 %28
  store i8 %26, i8* %29, align 1, !tbaa !2
  br label %30

; <label>:30:                                     ; preds = %18, %25
  %31 = phi i32 [ %27, %25 ], [ %20, %18 ]
  %32 = or i64 %19, 1
  %33 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0, i32 0, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %293, label %287

; <label>:36:                                     ; preds = %293
  %37 = trunc i32 %294 to i8
  %38 = getelementptr inbounds i8, i8* %0, i64 2000
  store i8 %37, i8* %38, align 1, !tbaa !2
  br label %190

; <label>:39:                                     ; preds = %11, %250
  %40 = getelementptr inbounds i8, i8* %0, i64 2004
  br label %41

; <label>:41:                                     ; preds = %185, %39
  %42 = phi i64 [ 0, %39 ], [ %188, %185 ]
  %43 = phi i64 [ 1, %39 ], [ %187, %185 ]
  %44 = phi i64 [ 0, %39 ], [ %186, %185 ]
  %45 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %45, align 1, !tbaa !2
  %46 = shl i64 %42, 3
  %47 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

; <label>:50:                                     ; preds = %41
  store i8 1, i8* %45, align 1, !tbaa !2
  %51 = load i32, i32* %47, align 4, !tbaa !5
  %52 = icmp eq i32 %51, 8380416
  %53 = select i1 %52, i64 %43, i64 0
  %54 = or i64 %53, %44
  %55 = shl i64 %43, 1
  br label %56

; <label>:56:                                     ; preds = %41, %50
  %57 = phi i8 [ 1, %50 ], [ 0, %41 ]
  %58 = phi i64 [ %54, %50 ], [ %44, %41 ]
  %59 = phi i64 [ %55, %50 ], [ %43, %41 ]
  %60 = or i64 %46, 1
  %61 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %95, label %88

; <label>:64:                                     ; preds = %185
  %65 = getelementptr inbounds i8, i8* %0, i64 2036
  %66 = trunc i64 %186 to i8
  store i8 %66, i8* %65, align 1, !tbaa !2
  %67 = lshr i64 %186, 8
  %68 = trunc i64 %67 to i8
  %69 = getelementptr inbounds i8, i8* %0, i64 2037
  store i8 %68, i8* %69, align 1, !tbaa !2
  %70 = lshr i64 %186, 16
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds i8, i8* %0, i64 2038
  store i8 %71, i8* %72, align 1, !tbaa !2
  %73 = lshr i64 %186, 24
  %74 = trunc i64 %73 to i8
  %75 = getelementptr inbounds i8, i8* %0, i64 2039
  store i8 %74, i8* %75, align 1, !tbaa !2
  %76 = lshr i64 %186, 32
  %77 = trunc i64 %76 to i8
  %78 = getelementptr inbounds i8, i8* %0, i64 2040
  store i8 %77, i8* %78, align 1, !tbaa !2
  %79 = lshr i64 %186, 40
  %80 = trunc i64 %79 to i8
  %81 = getelementptr inbounds i8, i8* %0, i64 2041
  store i8 %80, i8* %81, align 1, !tbaa !2
  %82 = lshr i64 %186, 48
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds i8, i8* %0, i64 2042
  store i8 %83, i8* %84, align 1, !tbaa !2
  %85 = lshr i64 %186, 56
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds i8, i8* %0, i64 2043
  store i8 %86, i8* %87, align 1, !tbaa !2
  ret void

; <label>:88:                                     ; preds = %56
  %89 = or i8 %57, 2
  store i8 %89, i8* %45, align 1, !tbaa !2
  %90 = load i32, i32* %61, align 4, !tbaa !5
  %91 = icmp eq i32 %90, 8380416
  %92 = select i1 %91, i64 %59, i64 0
  %93 = or i64 %92, %58
  %94 = shl i64 %59, 1
  br label %95

; <label>:95:                                     ; preds = %88, %56
  %96 = phi i8 [ %89, %88 ], [ %57, %56 ]
  %97 = phi i64 [ %93, %88 ], [ %58, %56 ]
  %98 = phi i64 [ %94, %88 ], [ %59, %56 ]
  %99 = or i64 %46, 2
  %100 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

; <label>:103:                                    ; preds = %95
  %104 = or i8 %96, 4
  store i8 %104, i8* %45, align 1, !tbaa !2
  %105 = load i32, i32* %100, align 4, !tbaa !5
  %106 = icmp eq i32 %105, 8380416
  %107 = select i1 %106, i64 %98, i64 0
  %108 = or i64 %107, %97
  %109 = shl i64 %98, 1
  br label %110

; <label>:110:                                    ; preds = %103, %95
  %111 = phi i8 [ %104, %103 ], [ %96, %95 ]
  %112 = phi i64 [ %108, %103 ], [ %97, %95 ]
  %113 = phi i64 [ %109, %103 ], [ %98, %95 ]
  %114 = or i64 %46, 3
  %115 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !5
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

; <label>:118:                                    ; preds = %110
  %119 = or i8 %111, 8
  store i8 %119, i8* %45, align 1, !tbaa !2
  %120 = load i32, i32* %115, align 4, !tbaa !5
  %121 = icmp eq i32 %120, 8380416
  %122 = select i1 %121, i64 %113, i64 0
  %123 = or i64 %122, %112
  %124 = shl i64 %113, 1
  br label %125

; <label>:125:                                    ; preds = %118, %110
  %126 = phi i8 [ %119, %118 ], [ %111, %110 ]
  %127 = phi i64 [ %123, %118 ], [ %112, %110 ]
  %128 = phi i64 [ %124, %118 ], [ %113, %110 ]
  %129 = or i64 %46, 4
  %130 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !5
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

; <label>:133:                                    ; preds = %125
  %134 = or i8 %126, 16
  store i8 %134, i8* %45, align 1, !tbaa !2
  %135 = load i32, i32* %130, align 4, !tbaa !5
  %136 = icmp eq i32 %135, 8380416
  %137 = select i1 %136, i64 %128, i64 0
  %138 = or i64 %137, %127
  %139 = shl i64 %128, 1
  br label %140

; <label>:140:                                    ; preds = %133, %125
  %141 = phi i8 [ %134, %133 ], [ %126, %125 ]
  %142 = phi i64 [ %138, %133 ], [ %127, %125 ]
  %143 = phi i64 [ %139, %133 ], [ %128, %125 ]
  %144 = or i64 %46, 5
  %145 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !5
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %140
  %149 = or i8 %141, 32
  store i8 %149, i8* %45, align 1, !tbaa !2
  %150 = load i32, i32* %145, align 4, !tbaa !5
  %151 = icmp eq i32 %150, 8380416
  %152 = select i1 %151, i64 %143, i64 0
  %153 = or i64 %152, %142
  %154 = shl i64 %143, 1
  br label %155

; <label>:155:                                    ; preds = %148, %140
  %156 = phi i8 [ %149, %148 ], [ %141, %140 ]
  %157 = phi i64 [ %153, %148 ], [ %142, %140 ]
  %158 = phi i64 [ %154, %148 ], [ %143, %140 ]
  %159 = or i64 %46, 6
  %160 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !5
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

; <label>:163:                                    ; preds = %155
  %164 = or i8 %156, 64
  store i8 %164, i8* %45, align 1, !tbaa !2
  %165 = load i32, i32* %160, align 4, !tbaa !5
  %166 = icmp eq i32 %165, 8380416
  %167 = select i1 %166, i64 %158, i64 0
  %168 = or i64 %167, %157
  %169 = shl i64 %158, 1
  br label %170

; <label>:170:                                    ; preds = %163, %155
  %171 = phi i8 [ %164, %163 ], [ %156, %155 ]
  %172 = phi i64 [ %168, %163 ], [ %157, %155 ]
  %173 = phi i64 [ %169, %163 ], [ %158, %155 ]
  %174 = or i64 %46, 7
  %175 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %174
  %176 = load i32, i32* %175, align 4, !tbaa !5
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

; <label>:178:                                    ; preds = %170
  %179 = or i8 %171, -128
  store i8 %179, i8* %45, align 1, !tbaa !2
  %180 = load i32, i32* %175, align 4, !tbaa !5
  %181 = icmp eq i32 %180, 8380416
  %182 = select i1 %181, i64 %173, i64 0
  %183 = or i64 %182, %172
  %184 = shl i64 %173, 1
  br label %185

; <label>:185:                                    ; preds = %178, %170
  %186 = phi i64 [ %183, %178 ], [ %172, %170 ]
  %187 = phi i64 [ %184, %178 ], [ %173, %170 ]
  %188 = add nuw nsw i64 %42, 1
  %189 = icmp eq i64 %188, 32
  br i1 %189, label %64, label %41

; <label>:190:                                    ; preds = %282, %36
  %191 = phi i64 [ 0, %36 ], [ %284, %282 ]
  %192 = phi i32 [ %294, %36 ], [ %283, %282 ]
  %193 = phi i32 [ 0, %36 ], [ %285, %282 ]
  %194 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1, i32 0, i64 %191
  %195 = load i32, i32* %194, align 4, !tbaa !5
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %202, label %197

; <label>:197:                                    ; preds = %190
  %198 = trunc i32 %193 to i8
  %199 = add i32 %192, 1
  %200 = zext i32 %192 to i64
  %201 = getelementptr inbounds i8, i8* %10, i64 %200
  store i8 %198, i8* %201, align 1, !tbaa !2
  br label %202

; <label>:202:                                    ; preds = %197, %190
  %203 = phi i32 [ %199, %197 ], [ %192, %190 ]
  %204 = or i64 %191, 1
  %205 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1, i32 0, i64 %204
  %206 = load i32, i32* %205, align 4, !tbaa !5
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %282, label %276

; <label>:208:                                    ; preds = %282
  %209 = trunc i32 %283 to i8
  %210 = getelementptr inbounds i8, i8* %0, i64 2001
  store i8 %209, i8* %210, align 1, !tbaa !2
  br label %211

; <label>:211:                                    ; preds = %271, %208
  %212 = phi i64 [ 0, %208 ], [ %273, %271 ]
  %213 = phi i32 [ %283, %208 ], [ %272, %271 ]
  %214 = phi i32 [ 0, %208 ], [ %274, %271 ]
  %215 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2, i32 0, i64 %212
  %216 = load i32, i32* %215, align 4, !tbaa !5
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %223, label %218

; <label>:218:                                    ; preds = %211
  %219 = trunc i32 %214 to i8
  %220 = add i32 %213, 1
  %221 = zext i32 %213 to i64
  %222 = getelementptr inbounds i8, i8* %10, i64 %221
  store i8 %219, i8* %222, align 1, !tbaa !2
  br label %223

; <label>:223:                                    ; preds = %218, %211
  %224 = phi i32 [ %220, %218 ], [ %213, %211 ]
  %225 = or i64 %212, 1
  %226 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2, i32 0, i64 %225
  %227 = load i32, i32* %226, align 4, !tbaa !5
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %271, label %265

; <label>:229:                                    ; preds = %271
  %230 = trunc i32 %272 to i8
  %231 = getelementptr inbounds i8, i8* %0, i64 2002
  store i8 %230, i8* %231, align 1, !tbaa !2
  br label %232

; <label>:232:                                    ; preds = %260, %229
  %233 = phi i64 [ 0, %229 ], [ %262, %260 ]
  %234 = phi i32 [ %272, %229 ], [ %261, %260 ]
  %235 = phi i32 [ 0, %229 ], [ %263, %260 ]
  %236 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3, i32 0, i64 %233
  %237 = load i32, i32* %236, align 4, !tbaa !5
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

; <label>:239:                                    ; preds = %232
  %240 = trunc i32 %235 to i8
  %241 = add i32 %234, 1
  %242 = zext i32 %234 to i64
  %243 = getelementptr inbounds i8, i8* %10, i64 %242
  store i8 %240, i8* %243, align 1, !tbaa !2
  br label %244

; <label>:244:                                    ; preds = %239, %232
  %245 = phi i32 [ %241, %239 ], [ %234, %232 ]
  %246 = or i64 %233, 1
  %247 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3, i32 0, i64 %246
  %248 = load i32, i32* %247, align 4, !tbaa !5
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %260, label %254

; <label>:250:                                    ; preds = %260
  %251 = trunc i32 %261 to i8
  %252 = getelementptr inbounds i8, i8* %0, i64 2003
  store i8 %251, i8* %252, align 1, !tbaa !2
  %253 = icmp ult i32 %261, 80
  br i1 %253, label %11, label %39

; <label>:254:                                    ; preds = %244
  %255 = or i32 %235, 1
  %256 = trunc i32 %255 to i8
  %257 = add i32 %245, 1
  %258 = zext i32 %245 to i64
  %259 = getelementptr inbounds i8, i8* %10, i64 %258
  store i8 %256, i8* %259, align 1, !tbaa !2
  br label %260

; <label>:260:                                    ; preds = %254, %244
  %261 = phi i32 [ %257, %254 ], [ %245, %244 ]
  %262 = add nsw i64 %233, 2
  %263 = add nsw i32 %235, 2
  %264 = icmp eq i64 %262, 256
  br i1 %264, label %250, label %232

; <label>:265:                                    ; preds = %223
  %266 = or i32 %214, 1
  %267 = trunc i32 %266 to i8
  %268 = add i32 %224, 1
  %269 = zext i32 %224 to i64
  %270 = getelementptr inbounds i8, i8* %10, i64 %269
  store i8 %267, i8* %270, align 1, !tbaa !2
  br label %271

; <label>:271:                                    ; preds = %265, %223
  %272 = phi i32 [ %268, %265 ], [ %224, %223 ]
  %273 = add nsw i64 %212, 2
  %274 = add nsw i32 %214, 2
  %275 = icmp eq i64 %273, 256
  br i1 %275, label %229, label %211

; <label>:276:                                    ; preds = %202
  %277 = or i32 %193, 1
  %278 = trunc i32 %277 to i8
  %279 = add i32 %203, 1
  %280 = zext i32 %203 to i64
  %281 = getelementptr inbounds i8, i8* %10, i64 %280
  store i8 %278, i8* %281, align 1, !tbaa !2
  br label %282

; <label>:282:                                    ; preds = %276, %202
  %283 = phi i32 [ %279, %276 ], [ %203, %202 ]
  %284 = add nsw i64 %191, 2
  %285 = add nsw i32 %193, 2
  %286 = icmp eq i64 %284, 256
  br i1 %286, label %208, label %190

; <label>:287:                                    ; preds = %30
  %288 = or i32 %21, 1
  %289 = trunc i32 %288 to i8
  %290 = add i32 %31, 1
  %291 = zext i32 %31 to i64
  %292 = getelementptr inbounds i8, i8* %10, i64 %291
  store i8 %289, i8* %292, align 1, !tbaa !2
  br label %293

; <label>:293:                                    ; preds = %287, %30
  %294 = phi i32 [ %290, %287 ], [ %31, %30 ]
  %295 = add nsw i64 %19, 2
  %296 = add nsw i32 %21, 2
  %297 = icmp eq i64 %295, 256
  br i1 %297, label %36, label %18
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(%struct.polyvecl*, %struct.polyveck* nocapture, %struct.poly* nocapture, i8*) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* %5, i8* %3) #7
  %6 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 1
  %7 = getelementptr inbounds i8, i8* %3, i64 640
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* %6, i8* %7) #7
  %8 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 2
  %9 = getelementptr inbounds i8, i8* %3, i64 1280
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* %8, i8* %9) #7
  %10 = bitcast %struct.poly* %2 to i8*
  %11 = getelementptr inbounds i8, i8* %3, i64 1920
  %12 = bitcast %struct.polyveck* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 1024, i32 4, i1 false)
  %13 = getelementptr inbounds i8, i8* %3, i64 2000
  %14 = load i8, i8* %13, align 1, !tbaa !2
  %15 = icmp ugt i8 %14, 80
  br i1 %15, label %130, label %16

; <label>:16:                                     ; preds = %4
  %17 = zext i8 %14 to i32
  %18 = icmp eq i8 %14, 0
  br i1 %18, label %40, label %19

; <label>:19:                                     ; preds = %16
  br label %20

; <label>:20:                                     ; preds = %19, %32
  %21 = phi i32 [ %35, %32 ], [ 0, %19 ]
  %22 = icmp eq i32 %21, 0
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %11, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !2
  br i1 %22, label %32, label %26

; <label>:26:                                     ; preds = %20
  %27 = add i32 %21, -1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %11, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !2
  %31 = icmp ugt i8 %25, %30
  br i1 %31, label %32, label %129

; <label>:32:                                     ; preds = %20, %26
  %33 = zext i8 %25 to i64
  %34 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 0, i32 0, i64 %33
  store i32 1, i32* %34, align 4, !tbaa !5
  %35 = add i32 %21, 1
  %36 = load i8, i8* %13, align 1, !tbaa !2
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %20, label %39

; <label>:39:                                     ; preds = %32
  br label %40

; <label>:40:                                     ; preds = %39, %16
  %41 = phi i32 [ %17, %16 ], [ %37, %39 ]
  %42 = getelementptr %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1
  %43 = bitcast %struct.poly* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 1024, i32 4, i1 false)
  %44 = getelementptr inbounds i8, i8* %3, i64 2001
  %45 = load i8, i8* %44, align 1, !tbaa !2
  %46 = zext i8 %45 to i32
  %47 = icmp ult i32 %46, %41
  %48 = icmp ugt i8 %45, 80
  %49 = or i1 %48, %47
  br i1 %49, label %130, label %234

; <label>:50:                                     ; preds = %52
  %51 = icmp ult i32 %58, 80
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %326, %50
  %53 = phi i32 [ %58, %50 ], [ %324, %326 ]
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %11, i64 %54
  %56 = load i8, i8* %55, align 1, !tbaa !2
  %57 = icmp eq i8 %56, 0
  %58 = add nsw i32 %53, 1
  br i1 %57, label %50, label %125

; <label>:59:                                     ; preds = %50
  br label %60

; <label>:60:                                     ; preds = %59, %323
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 1024, i32 4, i1 false)
  %61 = getelementptr inbounds i8, i8* %3, i64 2004
  %62 = getelementptr inbounds i8, i8* %3, i64 2036
  %63 = load i8, i8* %62, align 1, !tbaa !2
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i8, i8* %3, i64 2037
  %66 = load i8, i8* %65, align 1, !tbaa !2
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 8
  %69 = or i64 %68, %64
  %70 = getelementptr inbounds i8, i8* %3, i64 2038
  %71 = load i8, i8* %70, align 1, !tbaa !2
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 16
  %74 = or i64 %73, %69
  %75 = getelementptr inbounds i8, i8* %3, i64 2039
  %76 = load i8, i8* %75, align 1, !tbaa !2
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 24
  %79 = or i64 %78, %74
  %80 = getelementptr inbounds i8, i8* %3, i64 2040
  %81 = load i8, i8* %80, align 1, !tbaa !2
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 32
  %84 = or i64 %83, %79
  %85 = getelementptr inbounds i8, i8* %3, i64 2041
  %86 = load i8, i8* %85, align 1, !tbaa !2
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 40
  %89 = or i64 %88, %84
  %90 = getelementptr inbounds i8, i8* %3, i64 2042
  %91 = load i8, i8* %90, align 1, !tbaa !2
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 48
  %94 = or i64 %93, %89
  %95 = getelementptr inbounds i8, i8* %3, i64 2043
  %96 = load i8, i8* %95, align 1, !tbaa !2
  %97 = zext i8 %96 to i64
  %98 = shl nuw i64 %97, 56
  %99 = or i64 %98, %94
  %100 = icmp ugt i64 %99, 1152921504606846975
  br i1 %100, label %130, label %101

; <label>:101:                                    ; preds = %60
  br label %102

; <label>:102:                                    ; preds = %101, %230
  %103 = phi i64 [ %232, %230 ], [ 0, %101 ]
  %104 = phi i64 [ %231, %230 ], [ %99, %101 ]
  %105 = getelementptr inbounds i8, i8* %61, i64 %103
  %106 = shl i64 %103, 3
  %107 = load i8, i8* %105, align 1, !tbaa !2
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110

; <label>:110:                                    ; preds = %102
  %111 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %106
  %112 = trunc i64 %104 to i32
  %113 = and i32 %112, 1
  %114 = sub nsw i32 0, %113
  %115 = and i32 %114, 8380417
  %116 = xor i32 %115, 1
  store i32 %116, i32* %111, align 4, !tbaa !5
  %117 = lshr i64 %104, 1
  %118 = load i8, i8* %105, align 1, !tbaa !2
  br label %119

; <label>:119:                                    ; preds = %102, %110
  %120 = phi i8 [ %118, %110 ], [ %107, %102 ]
  %121 = phi i64 [ %117, %110 ], [ %104, %102 ]
  %122 = and i8 %120, 2
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %142, label %132

; <label>:124:                                    ; preds = %230
  br label %130

; <label>:125:                                    ; preds = %52
  br label %130

; <label>:126:                                    ; preds = %309
  br label %130

; <label>:127:                                    ; preds = %276
  br label %130

; <label>:128:                                    ; preds = %243
  br label %130

; <label>:129:                                    ; preds = %26
  br label %130

; <label>:130:                                    ; preds = %129, %128, %127, %126, %125, %124, %4, %40, %257, %290, %60
  %131 = phi i32 [ 1, %60 ], [ 1, %290 ], [ 1, %257 ], [ 1, %40 ], [ 1, %4 ], [ 0, %124 ], [ 1, %125 ], [ 1, %126 ], [ 1, %127 ], [ 1, %128 ], [ 1, %129 ]
  ret i32 %131

; <label>:132:                                    ; preds = %119
  %133 = or i64 %106, 1
  %134 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %133
  %135 = trunc i64 %121 to i32
  %136 = and i32 %135, 1
  %137 = sub nsw i32 0, %136
  %138 = and i32 %137, 8380417
  %139 = xor i32 %138, 1
  store i32 %139, i32* %134, align 4, !tbaa !5
  %140 = lshr i64 %121, 1
  %141 = load i8, i8* %105, align 1, !tbaa !2
  br label %142

; <label>:142:                                    ; preds = %132, %119
  %143 = phi i8 [ %141, %132 ], [ %120, %119 ]
  %144 = phi i64 [ %140, %132 ], [ %121, %119 ]
  %145 = and i8 %143, 4
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %157, label %147

; <label>:147:                                    ; preds = %142
  %148 = or i64 %106, 2
  %149 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %148
  %150 = trunc i64 %144 to i32
  %151 = and i32 %150, 1
  %152 = sub nsw i32 0, %151
  %153 = and i32 %152, 8380417
  %154 = xor i32 %153, 1
  store i32 %154, i32* %149, align 4, !tbaa !5
  %155 = lshr i64 %144, 1
  %156 = load i8, i8* %105, align 1, !tbaa !2
  br label %157

; <label>:157:                                    ; preds = %147, %142
  %158 = phi i8 [ %156, %147 ], [ %143, %142 ]
  %159 = phi i64 [ %155, %147 ], [ %144, %142 ]
  %160 = and i8 %158, 8
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %172, label %162

; <label>:162:                                    ; preds = %157
  %163 = or i64 %106, 3
  %164 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %163
  %165 = trunc i64 %159 to i32
  %166 = and i32 %165, 1
  %167 = sub nsw i32 0, %166
  %168 = and i32 %167, 8380417
  %169 = xor i32 %168, 1
  store i32 %169, i32* %164, align 4, !tbaa !5
  %170 = lshr i64 %159, 1
  %171 = load i8, i8* %105, align 1, !tbaa !2
  br label %172

; <label>:172:                                    ; preds = %162, %157
  %173 = phi i8 [ %171, %162 ], [ %158, %157 ]
  %174 = phi i64 [ %170, %162 ], [ %159, %157 ]
  %175 = and i8 %173, 16
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %187, label %177

; <label>:177:                                    ; preds = %172
  %178 = or i64 %106, 4
  %179 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %178
  %180 = trunc i64 %174 to i32
  %181 = and i32 %180, 1
  %182 = sub nsw i32 0, %181
  %183 = and i32 %182, 8380417
  %184 = xor i32 %183, 1
  store i32 %184, i32* %179, align 4, !tbaa !5
  %185 = lshr i64 %174, 1
  %186 = load i8, i8* %105, align 1, !tbaa !2
  br label %187

; <label>:187:                                    ; preds = %177, %172
  %188 = phi i8 [ %186, %177 ], [ %173, %172 ]
  %189 = phi i64 [ %185, %177 ], [ %174, %172 ]
  %190 = and i8 %188, 32
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %202, label %192

; <label>:192:                                    ; preds = %187
  %193 = or i64 %106, 5
  %194 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %193
  %195 = trunc i64 %189 to i32
  %196 = and i32 %195, 1
  %197 = sub nsw i32 0, %196
  %198 = and i32 %197, 8380417
  %199 = xor i32 %198, 1
  store i32 %199, i32* %194, align 4, !tbaa !5
  %200 = lshr i64 %189, 1
  %201 = load i8, i8* %105, align 1, !tbaa !2
  br label %202

; <label>:202:                                    ; preds = %192, %187
  %203 = phi i8 [ %201, %192 ], [ %188, %187 ]
  %204 = phi i64 [ %200, %192 ], [ %189, %187 ]
  %205 = and i8 %203, 64
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %217, label %207

; <label>:207:                                    ; preds = %202
  %208 = or i64 %106, 6
  %209 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %208
  %210 = trunc i64 %204 to i32
  %211 = and i32 %210, 1
  %212 = sub nsw i32 0, %211
  %213 = and i32 %212, 8380417
  %214 = xor i32 %213, 1
  store i32 %214, i32* %209, align 4, !tbaa !5
  %215 = lshr i64 %204, 1
  %216 = load i8, i8* %105, align 1, !tbaa !2
  br label %217

; <label>:217:                                    ; preds = %207, %202
  %218 = phi i8 [ %216, %207 ], [ %203, %202 ]
  %219 = phi i64 [ %215, %207 ], [ %204, %202 ]
  %220 = icmp sgt i8 %218, -1
  br i1 %220, label %230, label %221

; <label>:221:                                    ; preds = %217
  %222 = or i64 %106, 7
  %223 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %222
  %224 = trunc i64 %219 to i32
  %225 = and i32 %224, 1
  %226 = sub nsw i32 0, %225
  %227 = and i32 %226, 8380417
  %228 = xor i32 %227, 1
  store i32 %228, i32* %223, align 4, !tbaa !5
  %229 = lshr i64 %219, 1
  br label %230

; <label>:230:                                    ; preds = %221, %217
  %231 = phi i64 [ %229, %221 ], [ %219, %217 ]
  %232 = add nuw nsw i64 %103, 1
  %233 = icmp eq i64 %232, 32
  br i1 %233, label %124, label %102

; <label>:234:                                    ; preds = %40
  %235 = icmp ult i32 %41, %46
  br i1 %235, label %236, label %257

; <label>:236:                                    ; preds = %234
  br label %237

; <label>:237:                                    ; preds = %236, %249
  %238 = phi i32 [ %252, %249 ], [ %41, %236 ]
  %239 = icmp ugt i32 %238, %41
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %11, i64 %240
  %242 = load i8, i8* %241, align 1, !tbaa !2
  br i1 %239, label %243, label %249

; <label>:243:                                    ; preds = %237
  %244 = add i32 %238, -1
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %11, i64 %245
  %247 = load i8, i8* %246, align 1, !tbaa !2
  %248 = icmp ugt i8 %242, %247
  br i1 %248, label %249, label %128

; <label>:249:                                    ; preds = %237, %243
  %250 = zext i8 %242 to i64
  %251 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 1, i32 0, i64 %250
  store i32 1, i32* %251, align 4, !tbaa !5
  %252 = add i32 %238, 1
  %253 = load i8, i8* %44, align 1, !tbaa !2
  %254 = zext i8 %253 to i32
  %255 = icmp ult i32 %252, %254
  br i1 %255, label %237, label %256

; <label>:256:                                    ; preds = %249
  br label %257

; <label>:257:                                    ; preds = %256, %234
  %258 = phi i32 [ %46, %234 ], [ %254, %256 ]
  %259 = getelementptr %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2
  %260 = bitcast %struct.poly* %259 to i8*
  call void @llvm.memset.p0i8.i64(i8* %260, i8 0, i64 1024, i32 4, i1 false)
  %261 = getelementptr inbounds i8, i8* %3, i64 2002
  %262 = load i8, i8* %261, align 1, !tbaa !2
  %263 = zext i8 %262 to i32
  %264 = icmp ult i32 %263, %258
  %265 = icmp ugt i8 %262, 80
  %266 = or i1 %265, %264
  br i1 %266, label %130, label %267

; <label>:267:                                    ; preds = %257
  %268 = icmp ult i32 %258, %263
  br i1 %268, label %269, label %290

; <label>:269:                                    ; preds = %267
  br label %270

; <label>:270:                                    ; preds = %269, %282
  %271 = phi i32 [ %285, %282 ], [ %258, %269 ]
  %272 = icmp ugt i32 %271, %258
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %11, i64 %273
  %275 = load i8, i8* %274, align 1, !tbaa !2
  br i1 %272, label %276, label %282

; <label>:276:                                    ; preds = %270
  %277 = add i32 %271, -1
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %11, i64 %278
  %280 = load i8, i8* %279, align 1, !tbaa !2
  %281 = icmp ugt i8 %275, %280
  br i1 %281, label %282, label %127

; <label>:282:                                    ; preds = %270, %276
  %283 = zext i8 %275 to i64
  %284 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 2, i32 0, i64 %283
  store i32 1, i32* %284, align 4, !tbaa !5
  %285 = add i32 %271, 1
  %286 = load i8, i8* %261, align 1, !tbaa !2
  %287 = zext i8 %286 to i32
  %288 = icmp ult i32 %285, %287
  br i1 %288, label %270, label %289

; <label>:289:                                    ; preds = %282
  br label %290

; <label>:290:                                    ; preds = %289, %267
  %291 = phi i32 [ %263, %267 ], [ %287, %289 ]
  %292 = getelementptr %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3
  %293 = bitcast %struct.poly* %292 to i8*
  call void @llvm.memset.p0i8.i64(i8* %293, i8 0, i64 1024, i32 4, i1 false)
  %294 = getelementptr inbounds i8, i8* %3, i64 2003
  %295 = load i8, i8* %294, align 1, !tbaa !2
  %296 = zext i8 %295 to i32
  %297 = icmp ult i32 %296, %291
  %298 = icmp ugt i8 %295, 80
  %299 = or i1 %298, %297
  br i1 %299, label %130, label %300

; <label>:300:                                    ; preds = %290
  %301 = icmp ult i32 %291, %296
  br i1 %301, label %302, label %323

; <label>:302:                                    ; preds = %300
  br label %303

; <label>:303:                                    ; preds = %302, %315
  %304 = phi i32 [ %318, %315 ], [ %291, %302 ]
  %305 = icmp ugt i32 %304, %291
  %306 = zext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %11, i64 %306
  %308 = load i8, i8* %307, align 1, !tbaa !2
  br i1 %305, label %309, label %315

; <label>:309:                                    ; preds = %303
  %310 = add i32 %304, -1
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %11, i64 %311
  %313 = load i8, i8* %312, align 1, !tbaa !2
  %314 = icmp ugt i8 %308, %313
  br i1 %314, label %315, label %126

; <label>:315:                                    ; preds = %303, %309
  %316 = zext i8 %308 to i64
  %317 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 3, i32 0, i64 %316
  store i32 1, i32* %317, align 4, !tbaa !5
  %318 = add i32 %304, 1
  %319 = load i8, i8* %294, align 1, !tbaa !2
  %320 = zext i8 %319 to i32
  %321 = icmp ult i32 %318, %320
  br i1 %321, label %303, label %322

; <label>:322:                                    ; preds = %315
  br label %323

; <label>:323:                                    ; preds = %322, %300
  %324 = phi i32 [ %296, %300 ], [ %320, %322 ]
  %325 = icmp ult i32 %324, 80
  br i1 %325, label %326, label %60

; <label>:326:                                    ; preds = %323
  br label %52
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx*, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 {
  %4 = alloca [34 x i8], align 16
  %5 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 0
  %6 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 34, i8* %6) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %1, i64 32, i32 1, i1 false)
  %7 = trunc i16 %2 to i8
  %8 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 32
  store i8 %7, i8* %8, align 16, !tbaa !2
  %9 = lshr i16 %2, 8
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 33
  store i8 %10, i8* %11, align 1, !tbaa !2
  call void @shake128_absorb(%struct.shake128ctx* %0, i8* %6, i64 34) #7
  call void @llvm.lifetime.end(i64 34, i8* %6) #7
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare void @shake128_absorb(%struct.shake128ctx*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init(%struct.shake128ctx*, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 {
  %4 = alloca [50 x i8], align 16
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %6 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 50, i8* %6) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %1, i64 48, i32 1, i1 false)
  %7 = trunc i16 %2 to i8
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 48
  store i8 %7, i8* %8, align 16, !tbaa !2
  %9 = lshr i16 %2, 8
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 49
  store i8 %10, i8* %11, align 1, !tbaa !2
  call void @shake256_absorb(%struct.shake128ctx* %0, i8* %6, i64 50) #7
  call void @llvm.lifetime.end(i64 50, i8* %6) #7
  ret void
}

declare void @shake256_absorb(%struct.shake128ctx*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_ntt(i32* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %1, %42
  %3 = phi i32 [ 128, %1 ], [ %43, %42 ]
  %4 = phi i32 [ 1, %1 ], [ %8, %42 ]
  br label %5

; <label>:5:                                      ; preds = %2, %38
  %6 = phi i32 [ 0, %2 ], [ %40, %38 ]
  %7 = phi i32 [ %4, %2 ], [ %8, %38 ]
  %8 = add i32 %7, 1
  %9 = add i32 %6, %3
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %38

; <label>:11:                                     ; preds = %5
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* @zetas, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = zext i32 %14 to i64
  %16 = zext i32 %6 to i64
  br label %17

; <label>:17:                                     ; preds = %17, %11
  %18 = phi i64 [ %16, %11 ], [ %33, %17 ]
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, %3
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = zext i32 %23 to i64
  %25 = mul nuw i64 %24, %15
  %26 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %25) #7
  %27 = getelementptr inbounds i32, i32* %0, i64 %18
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = sub i32 16760834, %26
  %30 = add i32 %29, %28
  store i32 %30, i32* %22, align 4, !tbaa !5
  %31 = load i32, i32* %27, align 4, !tbaa !5
  %32 = add i32 %31, %26
  store i32 %32, i32* %27, align 4, !tbaa !5
  %33 = add nuw nsw i64 %18, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %34, %9
  br i1 %35, label %36, label %17

; <label>:36:                                     ; preds = %17
  %37 = add i32 %3, %6
  br label %38

; <label>:38:                                     ; preds = %36, %5
  %39 = phi i32 [ %6, %5 ], [ %37, %36 ]
  %40 = add i32 %39, %3
  %41 = icmp ult i32 %40, 256
  br i1 %41, label %5, label %42

; <label>:42:                                     ; preds = %38
  %43 = lshr i32 %3, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %2

; <label>:45:                                     ; preds = %42
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont(i32* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %1, %42
  %3 = phi i32 [ 1, %1 ], [ %43, %42 ]
  %4 = phi i32 [ 0, %1 ], [ %8, %42 ]
  br label %5

; <label>:5:                                      ; preds = %2, %38
  %6 = phi i32 [ 0, %2 ], [ %40, %38 ]
  %7 = phi i32 [ %4, %2 ], [ %8, %38 ]
  %8 = add i32 %7, 1
  %9 = add i32 %6, %3
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %38

; <label>:11:                                     ; preds = %5
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* @zetas_inv, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = zext i32 %14 to i64
  %16 = zext i32 %6 to i64
  br label %17

; <label>:17:                                     ; preds = %17, %11
  %18 = phi i64 [ %16, %11 ], [ %33, %17 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = trunc i64 %18 to i32
  %22 = add i32 %21, %3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add i32 %25, %20
  store i32 %26, i32* %19, align 4, !tbaa !5
  %27 = add i32 %20, 2145386752
  %28 = load i32, i32* %24, align 4, !tbaa !5
  %29 = sub i32 %27, %28
  store i32 %29, i32* %24, align 4, !tbaa !5
  %30 = zext i32 %29 to i64
  %31 = mul nuw i64 %30, %15
  %32 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %31) #7
  store i32 %32, i32* %24, align 4, !tbaa !5
  %33 = add nuw nsw i64 %18, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %34, %9
  br i1 %35, label %36, label %17

; <label>:36:                                     ; preds = %17
  %37 = add i32 %3, %6
  br label %38

; <label>:38:                                     ; preds = %36, %5
  %39 = phi i32 [ %6, %5 ], [ %37, %36 ]
  %40 = add i32 %39, %3
  %41 = icmp ult i32 %40, 256
  br i1 %41, label %5, label %42

; <label>:42:                                     ; preds = %38
  %43 = shl i32 %3, 1
  %44 = icmp ult i32 %43, 256
  br i1 %44, label %2, label %45

; <label>:45:                                     ; preds = %42
  br label %46

; <label>:46:                                     ; preds = %45, %46
  %47 = phi i64 [ %53, %46 ], [ 0, %45 ]
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = zext i32 %49 to i64
  %51 = mul nuw nsw i64 %50, 41978
  %52 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %51) #7
  store i32 %52, i32* %48, align 4, !tbaa !5
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, 256
  br i1 %54, label %55, label %46

; <label>:55:                                     ; preds = %46
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64) local_unnamed_addr #3 {
  %2 = mul i64 %0, 4236238847
  %3 = and i64 %2, 4294967295
  %4 = mul nuw nsw i64 %3, 8380417
  %5 = add i64 %4, %0
  %6 = lshr i64 %5, 32
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32) local_unnamed_addr #3 {
  %2 = and i32 %0, 8388607
  %3 = lshr i32 %0, 23
  %4 = mul nuw nsw i32 %3, 8191
  %5 = add nuw nsw i32 %4, %2
  ret i32 %5
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32) local_unnamed_addr #3 {
  %2 = add i32 %0, -8380417
  %3 = ashr i32 %2, 31
  %4 = and i32 %3, 8380417
  %5 = add i32 %4, %2
  ret i32 %5
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_freeze(i32) local_unnamed_addr #3 {
  %2 = and i32 %0, 8388607
  %3 = lshr i32 %0, 23
  %4 = mul nuw nsw i32 %3, 8191
  %5 = add nsw i32 %2, -8380417
  %6 = add nsw i32 %5, %4
  %7 = ashr i32 %6, 31
  %8 = and i32 %7, 8380417
  %9 = add nsw i32 %8, %6
  ret i32 %9
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_power2round(i32, i32* nocapture) local_unnamed_addr #4 {
  %3 = and i32 %0, 16383
  %4 = add nsw i32 %3, -8193
  %5 = ashr i32 %4, 31
  %6 = and i32 %5, 16384
  %7 = add nsw i32 %6, %4
  %8 = add nsw i32 %7, 8372226
  store i32 %8, i32* %1, align 4, !tbaa !5
  %9 = add i32 %0, 8191
  %10 = sub i32 %9, %7
  %11 = lshr i32 %10, 14
  ret i32 %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32, i32* nocapture) local_unnamed_addr #4 {
  %3 = and i32 %0, 524287
  %4 = lshr i32 %0, 19
  %5 = shl nuw nsw i32 %4, 9
  %6 = add nsw i32 %3, -261889
  %7 = add nsw i32 %6, %5
  %8 = ashr i32 %7, 31
  %9 = and i32 %8, 523776
  %10 = add nsw i32 %9, %7
  %11 = add i32 %0, 261887
  %12 = sub i32 %11, %10
  %13 = add nsw i32 %12, -1
  %14 = lshr i32 %12, 19
  %15 = add nuw nsw i32 %14, 1
  %16 = ashr i32 %13, 31
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %10, 8118530
  %19 = lshr i32 %17, 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %1, align 4, !tbaa !5
  %21 = and i32 %17, 15
  ret i32 %21
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_make_hint(i32, i32) local_unnamed_addr #3 {
  %3 = add i32 %0, -261889
  %4 = icmp ugt i32 %3, 7856640
  br i1 %4, label %11, label %5

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %0, 8118529
  %7 = icmp eq i32 %1, 0
  %8 = and i1 %6, %7
  %9 = zext i1 %8 to i32
  %10 = xor i32 %9, 1
  ret i32 %10

; <label>:11:                                     ; preds = %2
  ret i32 0
}

; Function Attrs: nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_use_hint(i32, i32) local_unnamed_addr #5 {
  %3 = and i32 %0, 524287
  %4 = lshr i32 %0, 19
  %5 = shl nuw nsw i32 %4, 9
  %6 = add nsw i32 %3, -261889
  %7 = add nsw i32 %6, %5
  %8 = ashr i32 %7, 31
  %9 = and i32 %8, 523776
  %10 = add nsw i32 %9, %7
  %11 = add i32 %0, 261887
  %12 = sub i32 %11, %10
  %13 = add nsw i32 %12, -1
  %14 = lshr i32 %12, 19
  %15 = add nuw nsw i32 %14, 1
  %16 = ashr i32 %13, 31
  %17 = add nsw i32 %15, %16
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %2
  %20 = add nsw i32 %10, 8118530
  %21 = lshr i32 %17, 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp ugt i32 %22, 8380417
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %19
  %25 = add nsw i32 %17, 1
  br label %28

; <label>:26:                                     ; preds = %19
  %27 = add nsw i32 %17, 15
  br label %28

; <label>:28:                                     ; preds = %2, %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ], [ %17, %2 ]
  %30 = and i32 %29, 15
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32 %5) #7
  store i32 %6, i32* %4, align 4, !tbaa !5
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 256
  br i1 %8, label %9, label %2

; <label>:9:                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32 %5) #7
  store i32 %6, i32* %4, align 4, !tbaa !5
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 256
  br i1 %8, label %9, label %2

; <label>:9:                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_freeze(i32 %5) #7
  store i32 %6, i32* %4, align 4, !tbaa !5
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 256
  br i1 %8, label %9, label %2

; <label>:9:                                      ; preds = %2
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  %4 = getelementptr %struct.poly, %struct.poly* %0, i64 1
  %5 = getelementptr %struct.poly, %struct.poly* %1, i64 1
  %6 = getelementptr %struct.poly, %struct.poly* %2, i64 1
  %7 = icmp ugt %struct.poly* %5, %0
  %8 = icmp ugt %struct.poly* %4, %1
  %9 = and i1 %7, %8
  %10 = icmp ugt %struct.poly* %6, %0
  %11 = icmp ugt %struct.poly* %4, %2
  %12 = and i1 %10, %11
  %13 = or i1 %9, %12
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %3
  br label %16

; <label>:15:                                     ; preds = %3
  br label %57

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %55, %16 ]
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %17
  %19 = bitcast i32* %18 to <4 x i32>*
  %20 = load <4 x i32>, <4 x i32>* %19, align 4, !tbaa !5, !alias.scope !7
  %21 = getelementptr i32, i32* %18, i64 4
  %22 = bitcast i32* %21 to <4 x i32>*
  %23 = load <4 x i32>, <4 x i32>* %22, align 4, !tbaa !5, !alias.scope !7
  %24 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %17
  %25 = bitcast i32* %24 to <4 x i32>*
  %26 = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !5, !alias.scope !10
  %27 = getelementptr i32, i32* %24, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  %29 = load <4 x i32>, <4 x i32>* %28, align 4, !tbaa !5, !alias.scope !10
  %30 = add <4 x i32> %26, %20
  %31 = add <4 x i32> %29, %23
  %32 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %17
  %33 = bitcast i32* %32 to <4 x i32>*
  store <4 x i32> %30, <4 x i32>* %33, align 4, !tbaa !5, !alias.scope !12, !noalias !14
  %34 = getelementptr i32, i32* %32, i64 4
  %35 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> %31, <4 x i32>* %35, align 4, !tbaa !5, !alias.scope !12, !noalias !14
  %36 = or i64 %17, 8
  %37 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %36
  %38 = bitcast i32* %37 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 4, !tbaa !5, !alias.scope !7
  %40 = getelementptr i32, i32* %37, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  %42 = load <4 x i32>, <4 x i32>* %41, align 4, !tbaa !5, !alias.scope !7
  %43 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %36
  %44 = bitcast i32* %43 to <4 x i32>*
  %45 = load <4 x i32>, <4 x i32>* %44, align 4, !tbaa !5, !alias.scope !10
  %46 = getelementptr i32, i32* %43, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  %48 = load <4 x i32>, <4 x i32>* %47, align 4, !tbaa !5, !alias.scope !10
  %49 = add <4 x i32> %45, %39
  %50 = add <4 x i32> %48, %42
  %51 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %36
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %49, <4 x i32>* %52, align 4, !tbaa !5, !alias.scope !12, !noalias !14
  %53 = getelementptr i32, i32* %51, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %50, <4 x i32>* %54, align 4, !tbaa !5, !alias.scope !12, !noalias !14
  %55 = add nsw i64 %17, 16
  %56 = icmp eq i64 %55, 256
  br i1 %56, label %89, label %16, !llvm.loop !15

; <label>:57:                                     ; preds = %57, %15
  %58 = phi i64 [ 0, %15 ], [ %86, %57 ]
  %59 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %58
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = add i32 %62, %60
  %64 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %58
  store i32 %63, i32* %64, align 4, !tbaa !5
  %65 = or i64 %58, 1
  %66 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %65
  %69 = load i32, i32* %68, align 4, !tbaa !5
  %70 = add i32 %69, %67
  %71 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %65
  store i32 %70, i32* %71, align 4, !tbaa !5
  %72 = or i64 %58, 2
  %73 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !5
  %75 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %72
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = add i32 %76, %74
  %78 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %72
  store i32 %77, i32* %78, align 4, !tbaa !5
  %79 = or i64 %58, 3
  %80 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %79
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = add i32 %83, %81
  %85 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %79
  store i32 %84, i32* %85, align 4, !tbaa !5
  %86 = add nsw i64 %58, 4
  %87 = icmp eq i64 %86, 256
  br i1 %87, label %88, label %57, !llvm.loop !18

; <label>:88:                                     ; preds = %57
  br label %90

; <label>:89:                                     ; preds = %16
  br label %90

; <label>:90:                                     ; preds = %89, %88
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  %4 = getelementptr %struct.poly, %struct.poly* %0, i64 1
  %5 = getelementptr %struct.poly, %struct.poly* %1, i64 1
  %6 = getelementptr %struct.poly, %struct.poly* %2, i64 1
  %7 = icmp ugt %struct.poly* %5, %0
  %8 = icmp ugt %struct.poly* %4, %1
  %9 = and i1 %7, %8
  %10 = icmp ugt %struct.poly* %6, %0
  %11 = icmp ugt %struct.poly* %4, %2
  %12 = and i1 %10, %11
  %13 = or i1 %9, %12
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %3
  br label %16

; <label>:15:                                     ; preds = %3
  br label %61

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %59, %16 ]
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %17
  %19 = bitcast i32* %18 to <4 x i32>*
  %20 = load <4 x i32>, <4 x i32>* %19, align 4, !tbaa !5, !alias.scope !19
  %21 = getelementptr i32, i32* %18, i64 4
  %22 = bitcast i32* %21 to <4 x i32>*
  %23 = load <4 x i32>, <4 x i32>* %22, align 4, !tbaa !5, !alias.scope !19
  %24 = add <4 x i32> %20, <i32 16760834, i32 16760834, i32 16760834, i32 16760834>
  %25 = add <4 x i32> %23, <i32 16760834, i32 16760834, i32 16760834, i32 16760834>
  %26 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %17
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5, !alias.scope !22
  %29 = getelementptr i32, i32* %26, i64 4
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5, !alias.scope !22
  %32 = sub <4 x i32> %24, %28
  %33 = sub <4 x i32> %25, %31
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %17
  %35 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %35, align 4, !tbaa !5, !alias.scope !24, !noalias !26
  %36 = getelementptr i32, i32* %34, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %37, align 4, !tbaa !5, !alias.scope !24, !noalias !26
  %38 = or i64 %17, 8
  %39 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5, !alias.scope !19
  %42 = getelementptr i32, i32* %39, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !5, !alias.scope !19
  %45 = add <4 x i32> %41, <i32 16760834, i32 16760834, i32 16760834, i32 16760834>
  %46 = add <4 x i32> %44, <i32 16760834, i32 16760834, i32 16760834, i32 16760834>
  %47 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %38
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5, !alias.scope !22
  %50 = getelementptr i32, i32* %47, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !5, !alias.scope !22
  %53 = sub <4 x i32> %45, %49
  %54 = sub <4 x i32> %46, %52
  %55 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %38
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> %53, <4 x i32>* %56, align 4, !tbaa !5, !alias.scope !24, !noalias !26
  %57 = getelementptr i32, i32* %55, i64 4
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> %54, <4 x i32>* %58, align 4, !tbaa !5, !alias.scope !24, !noalias !26
  %59 = add nsw i64 %17, 16
  %60 = icmp eq i64 %59, 256
  br i1 %60, label %97, label %16, !llvm.loop !27

; <label>:61:                                     ; preds = %61, %15
  %62 = phi i64 [ 0, %15 ], [ %94, %61 ]
  %63 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = add i32 %64, 16760834
  %66 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %62
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = sub i32 %65, %67
  %69 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %62
  store i32 %68, i32* %69, align 4, !tbaa !5
  %70 = or i64 %62, 1
  %71 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %73 = add i32 %72, 16760834
  %74 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %70
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = sub i32 %73, %75
  %77 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %70
  store i32 %76, i32* %77, align 4, !tbaa !5
  %78 = or i64 %62, 2
  %79 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = add i32 %80, 16760834
  %82 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %78
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = sub i32 %81, %83
  %85 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %78
  store i32 %84, i32* %85, align 4, !tbaa !5
  %86 = or i64 %62, 3
  %87 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %86
  %88 = load i32, i32* %87, align 4, !tbaa !5
  %89 = add i32 %88, 16760834
  %90 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %86
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = sub i32 %89, %91
  %93 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %86
  store i32 %92, i32* %93, align 4, !tbaa !5
  %94 = add nsw i64 %62, 4
  %95 = icmp eq i64 %94, 256
  br i1 %95, label %96, label %61, !llvm.loop !28

; <label>:96:                                     ; preds = %61
  br label %98

; <label>:97:                                     ; preds = %16
  br label %98

; <label>:98:                                     ; preds = %97, %96
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* nocapture) local_unnamed_addr #4 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %25, %2 ]
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3
  %5 = bitcast i32* %4 to <4 x i32>*
  %6 = load <4 x i32>, <4 x i32>* %5, align 4, !tbaa !5
  %7 = getelementptr i32, i32* %4, i64 4
  %8 = bitcast i32* %7 to <4 x i32>*
  %9 = load <4 x i32>, <4 x i32>* %8, align 4, !tbaa !5
  %10 = shl <4 x i32> %6, <i32 14, i32 14, i32 14, i32 14>
  %11 = shl <4 x i32> %9, <i32 14, i32 14, i32 14, i32 14>
  %12 = bitcast i32* %4 to <4 x i32>*
  store <4 x i32> %10, <4 x i32>* %12, align 4, !tbaa !5
  %13 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %13, align 4, !tbaa !5
  %14 = or i64 %3, 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %14
  %16 = bitcast i32* %15 to <4 x i32>*
  %17 = load <4 x i32>, <4 x i32>* %16, align 4, !tbaa !5
  %18 = getelementptr i32, i32* %15, i64 4
  %19 = bitcast i32* %18 to <4 x i32>*
  %20 = load <4 x i32>, <4 x i32>* %19, align 4, !tbaa !5
  %21 = shl <4 x i32> %17, <i32 14, i32 14, i32 14, i32 14>
  %22 = shl <4 x i32> %20, <i32 14, i32 14, i32 14, i32 14>
  %23 = bitcast i32* %15 to <4 x i32>*
  store <4 x i32> %21, <4 x i32>* %23, align 4, !tbaa !5
  %24 = bitcast i32* %18 to <4 x i32>*
  store <4 x i32> %22, <4 x i32>* %24, align 4, !tbaa !5
  %25 = add nsw i64 %3, 16
  %26 = icmp eq i64 %25, 256
  br i1 %26, label %27, label %2, !llvm.loop !29

; <label>:27:                                     ; preds = %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_ntt(i32* %2) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont(i32* %2) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %15, %4 ]
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = mul nuw i64 %11, %8
  %13 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %12) #7
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5
  store i32 %13, i32* %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 256
  br i1 %16, label %17, label %4

; <label>:17:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* nocapture, %struct.poly*, %struct.poly* nocapture readonly) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %11, %4 ]
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %9 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_power2round(i32 %7, i32* %8) #7
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 256
  br i1 %12, label %13, label %4

; <label>:13:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* nocapture, %struct.poly*, %struct.poly* nocapture readonly) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %11, %4 ]
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %9 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32 %7, i32* %8) #7
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 256
  br i1 %12, label %13, label %4

; <label>:13:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %14, %4 ]
  %6 = phi i32 [ 0, %3 ], [ %13, %4 ]
  %7 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_make_hint(i32 %8, i32 %10) #7
  %12 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5
  store i32 %11, i32* %12, align 4, !tbaa !5
  %13 = add i32 %11, %6
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %16, label %4

; <label>:16:                                     ; preds = %4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_use_hint(i32 %7, i32 %9) #7
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5
  store i32 %10, i32* %11, align 4, !tbaa !5
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 256
  br i1 %13, label %14, label %4

; <label>:14:                                     ; preds = %4
  ret void
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* nocapture readonly, i32) local_unnamed_addr #6 {
  br label %14

; <label>:3:                                      ; preds = %14
  %4 = or i32 %15, 1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = sub i32 4190208, %7
  %9 = ashr i32 %8, 31
  %10 = xor i32 %9, %8
  %11 = sub nsw i32 4190208, %10
  %12 = icmp ult i32 %11, %1
  %13 = add nsw i32 %15, 2
  br i1 %12, label %26, label %24

; <label>:14:                                     ; preds = %26, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %26 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = sub i32 4190208, %18
  %20 = ashr i32 %19, 31
  %21 = xor i32 %20, %19
  %22 = sub nsw i32 4190208, %21
  %23 = icmp ult i32 %22, %1
  br i1 %23, label %3, label %24

; <label>:24:                                     ; preds = %26, %3, %14
  %25 = phi i32 [ 1, %14 ], [ 1, %3 ], [ 0, %26 ]
  ret i32 %25

; <label>:26:                                     ; preds = %3
  %27 = icmp ult i32 %13, 256
  br i1 %27, label %14, label %24
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* nocapture, i8*, i16 zeroext) local_unnamed_addr #0 {
  %4 = alloca [842 x i8], align 16
  %5 = alloca %struct.shake128ctx, align 8
  %6 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 842, i8* %6) #7
  %7 = bitcast %struct.shake128ctx* %5 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx* nonnull %5, i8* %1, i16 zeroext %2) #7
  call void @shake128_squeezeblocks(i8* %6, i64 5, %struct.shake128ctx* nonnull %5) #7
  br label %8

; <label>:8:                                      ; preds = %3, %36
  %9 = phi i32 [ 0, %3 ], [ %13, %36 ]
  %10 = phi i64 [ 0, %3 ], [ %38, %36 ]
  br label %11

; <label>:11:                                     ; preds = %8, %15
  %12 = phi i32 [ %13, %15 ], [ %9, %8 ]
  %13 = add i32 %12, 3
  %14 = icmp ugt i32 %13, 840
  br i1 %14, label %40, label %15

; <label>:15:                                     ; preds = %11
  %16 = add i32 %12, 1
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !2
  %20 = zext i8 %19 to i32
  %21 = add i32 %12, 2
  %22 = zext i32 %16 to i64
  %23 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or i32 %26, %20
  %28 = zext i32 %21 to i64
  %29 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !2
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = and i32 %32, 8323072
  %34 = or i32 %27, %33
  %35 = icmp ult i32 %34, 8380417
  br i1 %35, label %36, label %11

; <label>:36:                                     ; preds = %15
  %37 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %10
  store i32 %34, i32* %37, align 4, !tbaa !5
  %38 = add nuw nsw i64 %10, 1
  %39 = icmp ult i64 %38, 256
  br i1 %39, label %8, label %41

; <label>:40:                                     ; preds = %11
  br label %42

; <label>:41:                                     ; preds = %36
  br label %42

; <label>:42:                                     ; preds = %41, %40
  %43 = phi i64 [ %10, %40 ], [ %38, %41 ]
  %44 = trunc i64 %43 to i32
  %45 = icmp ult i32 %44, 256
  br i1 %45, label %46, label %159

; <label>:46:                                     ; preds = %42
  br label %47

; <label>:47:                                     ; preds = %46, %153
  %48 = phi i32 [ %110, %153 ], [ 840, %46 ]
  %49 = phi i32 [ %156, %153 ], [ %44, %46 ]
  %50 = urem i32 %48, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %109, label %52

; <label>:52:                                     ; preds = %47
  %53 = sub nsw i32 %48, %50
  %54 = add nsw i32 %50, -1
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %91, label %56

; <label>:56:                                     ; preds = %52
  br label %57

; <label>:57:                                     ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %87, %57 ]
  %59 = phi i32 [ 0, %56 ], [ %88, %57 ]
  %60 = trunc i64 %58 to i32
  %61 = add nsw i32 %53, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !2
  %65 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %58
  store i8 %64, i8* %65, align 4, !tbaa !2
  %66 = or i64 %58, 1
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %53, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !2
  %72 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %66
  store i8 %71, i8* %72, align 1, !tbaa !2
  %73 = or i64 %58, 2
  %74 = trunc i64 %73 to i32
  %75 = add nsw i32 %53, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1, !tbaa !2
  %79 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %73
  store i8 %78, i8* %79, align 2, !tbaa !2
  %80 = or i64 %58, 3
  %81 = trunc i64 %80 to i32
  %82 = add nsw i32 %53, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !2
  %86 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %80
  store i8 %85, i8* %86, align 1, !tbaa !2
  %87 = add nsw i64 %58, 4
  %88 = add i32 %59, -4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %57

; <label>:90:                                     ; preds = %57
  br label %91

; <label>:91:                                     ; preds = %90, %52
  %92 = phi i64 [ 0, %52 ], [ %87, %90 ]
  %93 = icmp eq i32 %50, 0
  br i1 %93, label %108, label %94

; <label>:94:                                     ; preds = %91
  br label %95

; <label>:95:                                     ; preds = %95, %94
  %96 = phi i64 [ %92, %94 ], [ %104, %95 ]
  %97 = phi i32 [ %50, %94 ], [ %105, %95 ]
  %98 = trunc i64 %96 to i32
  %99 = add nsw i32 %53, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !2
  %103 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %96
  store i8 %102, i8* %103, align 1, !tbaa !2
  %104 = add nuw nsw i64 %96, 1
  %105 = add i32 %97, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %95, !llvm.loop !30

; <label>:107:                                    ; preds = %95
  br label %108

; <label>:108:                                    ; preds = %91, %107
  br label %109

; <label>:109:                                    ; preds = %108, %47
  %110 = or i32 %50, 168
  %111 = zext i32 %50 to i64
  %112 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %111
  call void @shake128_squeezeblocks(i8* %112, i64 1, %struct.shake128ctx* nonnull %5) #7
  %113 = zext i32 %49 to i64
  %114 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %113
  %115 = sub i32 256, %49
  %116 = zext i32 %115 to i64
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %153, label %118

; <label>:118:                                    ; preds = %109
  br label %119

; <label>:119:                                    ; preds = %118, %147
  %120 = phi i32 [ %124, %147 ], [ 0, %118 ]
  %121 = phi i64 [ %149, %147 ], [ 0, %118 ]
  br label %122

; <label>:122:                                    ; preds = %119, %126
  %123 = phi i32 [ %124, %126 ], [ %120, %119 ]
  %124 = add i32 %123, 3
  %125 = icmp ugt i32 %124, %110
  br i1 %125, label %151, label %126

; <label>:126:                                    ; preds = %122
  %127 = add i32 %123, 1
  %128 = zext i32 %123 to i64
  %129 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1, !tbaa !2
  %131 = zext i8 %130 to i32
  %132 = add i32 %123, 2
  %133 = zext i32 %127 to i64
  %134 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !2
  %136 = zext i8 %135 to i32
  %137 = shl nuw nsw i32 %136, 8
  %138 = or i32 %137, %131
  %139 = zext i32 %132 to i64
  %140 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1, !tbaa !2
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 16
  %144 = and i32 %143, 8323072
  %145 = or i32 %138, %144
  %146 = icmp ult i32 %145, 8380417
  br i1 %146, label %147, label %122

; <label>:147:                                    ; preds = %126
  %148 = getelementptr inbounds i32, i32* %114, i64 %121
  store i32 %145, i32* %148, align 4, !tbaa !5
  %149 = add nuw nsw i64 %121, 1
  %150 = icmp ult i64 %149, %116
  br i1 %150, label %119, label %152

; <label>:151:                                    ; preds = %122
  br label %153

; <label>:152:                                    ; preds = %147
  br label %153

; <label>:153:                                    ; preds = %152, %151, %109
  %154 = phi i64 [ 0, %109 ], [ %121, %151 ], [ %149, %152 ]
  %155 = trunc i64 %154 to i32
  %156 = add i32 %155, %49
  %157 = icmp ult i32 %156, 256
  br i1 %157, label %47, label %158

; <label>:158:                                    ; preds = %153
  br label %159

; <label>:159:                                    ; preds = %158, %42
  call void @llvm.lifetime.end(i64 200, i8* %7) #7
  call void @llvm.lifetime.end(i64 842, i8* %6) #7
  ret void
}

declare void @shake128_squeezeblocks(i8*, i64, %struct.shake128ctx*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* nocapture, i8*, i16 zeroext) local_unnamed_addr #0 {
  %4 = alloca [168 x i8], align 16
  %5 = alloca %struct.shake128ctx, align 8
  %6 = getelementptr inbounds [168 x i8], [168 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 168, i8* %6) #7
  %7 = bitcast %struct.shake128ctx* %5 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx* nonnull %5, i8* %1, i16 zeroext %2) #7
  call void @shake128_squeezeblocks(i8* %6, i64 1, %struct.shake128ctx* nonnull %5) #7
  br label %8

; <label>:8:                                      ; preds = %33, %3
  %9 = phi i64 [ %15, %33 ], [ 0, %3 ]
  %10 = phi i32 [ %34, %33 ], [ 0, %3 ]
  %11 = getelementptr inbounds [168 x i8], [168 x i8]* %4, i64 0, i64 %9
  %12 = load i8, i8* %11, align 1, !tbaa !2
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 15
  %15 = add nuw nsw i64 %9, 1
  %16 = lshr i32 %13, 4
  %17 = icmp ult i32 %14, 13
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %8
  %19 = sub nsw i32 8380423, %14
  %20 = add i32 %10, 1
  %21 = zext i32 %10 to i64
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %21
  store i32 %19, i32* %22, align 4, !tbaa !5
  br label %23

; <label>:23:                                     ; preds = %18, %8
  %24 = phi i32 [ %20, %18 ], [ %10, %8 ]
  %25 = icmp ult i8 %12, -48
  %26 = icmp ult i32 %24, 256
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %23
  %29 = sub nsw i32 8380423, %16
  %30 = add i32 %24, 1
  %31 = zext i32 %24 to i64
  %32 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !5
  br label %33

; <label>:33:                                     ; preds = %28, %23
  %34 = phi i32 [ %30, %28 ], [ %24, %23 ]
  %35 = icmp ult i32 %34, 256
  %36 = icmp ult i64 %15, 168
  %37 = and i1 %36, %35
  br i1 %37, label %8, label %38

; <label>:38:                                     ; preds = %33
  br i1 %35, label %39, label %83

; <label>:39:                                     ; preds = %38
  br label %40

; <label>:40:                                     ; preds = %39, %78
  %41 = phi i32 [ %80, %78 ], [ %34, %39 ]
  call void @shake128_squeezeblocks(i8* %6, i64 1, %struct.shake128ctx* nonnull %5) #7
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %42
  %44 = sub i32 256, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %78, label %46

; <label>:46:                                     ; preds = %40
  br label %47

; <label>:47:                                     ; preds = %46, %72
  %48 = phi i64 [ %54, %72 ], [ 0, %46 ]
  %49 = phi i32 [ %73, %72 ], [ 0, %46 ]
  %50 = getelementptr inbounds [168 x i8], [168 x i8]* %4, i64 0, i64 %48
  %51 = load i8, i8* %50, align 1, !tbaa !2
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 15
  %54 = add nuw nsw i64 %48, 1
  %55 = lshr i32 %52, 4
  %56 = icmp ult i32 %53, 13
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %47
  %58 = sub nsw i32 8380423, %53
  %59 = add i32 %49, 1
  %60 = zext i32 %49 to i64
  %61 = getelementptr inbounds i32, i32* %43, i64 %60
  store i32 %58, i32* %61, align 4, !tbaa !5
  br label %62

; <label>:62:                                     ; preds = %57, %47
  %63 = phi i32 [ %59, %57 ], [ %49, %47 ]
  %64 = icmp ult i8 %51, -48
  %65 = icmp ult i32 %63, %44
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %62
  %68 = sub nsw i32 8380423, %55
  %69 = add i32 %63, 1
  %70 = zext i32 %63 to i64
  %71 = getelementptr inbounds i32, i32* %43, i64 %70
  store i32 %68, i32* %71, align 4, !tbaa !5
  br label %72

; <label>:72:                                     ; preds = %67, %62
  %73 = phi i32 [ %69, %67 ], [ %63, %62 ]
  %74 = icmp ult i32 %73, %44
  %75 = icmp ult i64 %54, 168
  %76 = and i1 %75, %74
  br i1 %76, label %47, label %77

; <label>:77:                                     ; preds = %72
  br label %78

; <label>:78:                                     ; preds = %77, %40
  %79 = phi i32 [ 0, %40 ], [ %73, %77 ]
  %80 = add i32 %79, %41
  %81 = icmp ult i32 %80, 256
  br i1 %81, label %40, label %82

; <label>:82:                                     ; preds = %78
  br label %83

; <label>:83:                                     ; preds = %82, %38
  call void @llvm.lifetime.end(i64 200, i8* %7) #7
  call void @llvm.lifetime.end(i64 168, i8* %6) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* nocapture, i8*, i16 zeroext) local_unnamed_addr #0 {
  %4 = alloca [684 x i8], align 16
  %5 = alloca %struct.shake128ctx, align 8
  %6 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 684, i8* %6) #7
  %7 = bitcast %struct.shake128ctx* %5 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init(%struct.shake128ctx* nonnull %5, i8* %1, i16 zeroext %2) #7
  call void @shake256_squeezeblocks(i8* %6, i64 5, %struct.shake128ctx* nonnull %5) #7
  br label %8

; <label>:8:                                      ; preds = %60, %3
  %9 = phi i64 [ %11, %60 ], [ 0, %3 ]
  %10 = phi i32 [ %61, %60 ], [ 0, %3 ]
  %11 = add nuw nsw i64 %9, 5
  %12 = icmp ugt i64 %11, 680
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %8
  br label %63

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %9
  %16 = load i8, i8* %15, align 1, !tbaa !2
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i64 %9, 1
  %19 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !2
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %22, %17
  %24 = add nuw nsw i64 %9, 2
  %25 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !2
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = and i32 %28, 983040
  %30 = or i32 %23, %29
  %31 = lshr i32 %27, 4
  %32 = add nuw nsw i64 %9, 3
  %33 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1, !tbaa !2
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 4
  %37 = or i32 %36, %31
  %38 = add nuw nsw i64 %9, 4
  %39 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1, !tbaa !2
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 12
  %43 = or i32 %37, %42
  %44 = icmp ult i32 %30, 1047551
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %14
  %46 = sub nsw i32 8904192, %30
  %47 = add i32 %10, 1
  %48 = zext i32 %10 to i64
  %49 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %48
  store i32 %46, i32* %49, align 4, !tbaa !5
  br label %50

; <label>:50:                                     ; preds = %45, %14
  %51 = phi i32 [ %47, %45 ], [ %10, %14 ]
  %52 = icmp ult i32 %43, 1047551
  %53 = icmp ult i32 %51, 256
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %50
  %56 = sub nsw i32 8904192, %43
  %57 = add i32 %51, 1
  %58 = zext i32 %51 to i64
  %59 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %58
  store i32 %56, i32* %59, align 4, !tbaa !5
  br label %60

; <label>:60:                                     ; preds = %55, %50
  %61 = phi i32 [ %57, %55 ], [ %51, %50 ]
  %62 = icmp ult i32 %61, 256
  br i1 %62, label %8, label %198

; <label>:63:                                     ; preds = %13, %193
  %64 = phi i32 [ %128, %193 ], [ 680, %13 ]
  %65 = phi i32 [ %195, %193 ], [ %10, %13 ]
  %66 = urem i32 %64, 5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %127, label %68

; <label>:68:                                     ; preds = %63
  %69 = sub nsw i32 %64, %66
  %70 = add nsw i32 %66, -1
  %71 = and i32 %66, 3
  %72 = icmp ult i32 %70, 3
  br i1 %72, label %109, label %73

; <label>:73:                                     ; preds = %68
  %74 = sub nsw i32 %66, %71
  br label %75

; <label>:75:                                     ; preds = %75, %73
  %76 = phi i64 [ 0, %73 ], [ %105, %75 ]
  %77 = phi i32 [ %74, %73 ], [ %106, %75 ]
  %78 = trunc i64 %76 to i32
  %79 = add nsw i32 %69, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !2
  %83 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %76
  store i8 %82, i8* %83, align 4, !tbaa !2
  %84 = or i64 %76, 1
  %85 = trunc i64 %84 to i32
  %86 = add nsw i32 %69, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !2
  %90 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %84
  store i8 %89, i8* %90, align 1, !tbaa !2
  %91 = or i64 %76, 2
  %92 = trunc i64 %91 to i32
  %93 = add nsw i32 %69, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1, !tbaa !2
  %97 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %91
  store i8 %96, i8* %97, align 2, !tbaa !2
  %98 = or i64 %76, 3
  %99 = trunc i64 %98 to i32
  %100 = add nsw i32 %69, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1, !tbaa !2
  %104 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %98
  store i8 %103, i8* %104, align 1, !tbaa !2
  %105 = add nsw i64 %76, 4
  %106 = add i32 %77, -4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %75

; <label>:108:                                    ; preds = %75
  br label %109

; <label>:109:                                    ; preds = %108, %68
  %110 = phi i64 [ 0, %68 ], [ %105, %108 ]
  %111 = icmp eq i32 %71, 0
  br i1 %111, label %126, label %112

; <label>:112:                                    ; preds = %109
  br label %113

; <label>:113:                                    ; preds = %113, %112
  %114 = phi i64 [ %110, %112 ], [ %122, %113 ]
  %115 = phi i32 [ %71, %112 ], [ %123, %113 ]
  %116 = trunc i64 %114 to i32
  %117 = add nsw i32 %69, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1, !tbaa !2
  %121 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %114
  store i8 %120, i8* %121, align 1, !tbaa !2
  %122 = add nuw nsw i64 %114, 1
  %123 = add i32 %115, -1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %113, !llvm.loop !32

; <label>:125:                                    ; preds = %113
  br label %126

; <label>:126:                                    ; preds = %109, %125
  br label %127

; <label>:127:                                    ; preds = %126, %63
  %128 = or i32 %66, 136
  %129 = zext i32 %66 to i64
  %130 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %129
  call void @shake256_squeezeblocks(i8* %130, i64 1, %struct.shake128ctx* nonnull %5) #7
  %131 = zext i32 %65 to i64
  %132 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %131
  %133 = sub i32 256, %65
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %193, label %135

; <label>:135:                                    ; preds = %127
  %136 = zext i32 %128 to i64
  br label %137

; <label>:137:                                    ; preds = %135, %188
  %138 = phi i64 [ 0, %135 ], [ %140, %188 ]
  %139 = phi i32 [ 0, %135 ], [ %189, %188 ]
  %140 = add nuw nsw i64 %138, 5
  %141 = icmp ugt i64 %140, %136
  br i1 %141, label %191, label %142

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %138
  %144 = load i8, i8* %143, align 1, !tbaa !2
  %145 = zext i8 %144 to i32
  %146 = add nuw nsw i64 %138, 1
  %147 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1, !tbaa !2
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 8
  %151 = or i32 %150, %145
  %152 = add nuw nsw i64 %138, 2
  %153 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1, !tbaa !2
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 16
  %157 = and i32 %156, 983040
  %158 = or i32 %151, %157
  %159 = lshr i32 %155, 4
  %160 = add nuw nsw i64 %138, 3
  %161 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1, !tbaa !2
  %163 = zext i8 %162 to i32
  %164 = shl nuw nsw i32 %163, 4
  %165 = or i32 %164, %159
  %166 = add nuw nsw i64 %138, 4
  %167 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1, !tbaa !2
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %169, 12
  %171 = or i32 %165, %170
  %172 = icmp ult i32 %158, 1047551
  br i1 %172, label %173, label %178

; <label>:173:                                    ; preds = %142
  %174 = sub nsw i32 8904192, %158
  %175 = add i32 %139, 1
  %176 = zext i32 %139 to i64
  %177 = getelementptr inbounds i32, i32* %132, i64 %176
  store i32 %174, i32* %177, align 4, !tbaa !5
  br label %178

; <label>:178:                                    ; preds = %173, %142
  %179 = phi i32 [ %175, %173 ], [ %139, %142 ]
  %180 = icmp ult i32 %171, 1047551
  %181 = icmp ult i32 %179, %133
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %188

; <label>:183:                                    ; preds = %178
  %184 = sub nsw i32 8904192, %171
  %185 = add i32 %179, 1
  %186 = zext i32 %179 to i64
  %187 = getelementptr inbounds i32, i32* %132, i64 %186
  store i32 %184, i32* %187, align 4, !tbaa !5
  br label %188

; <label>:188:                                    ; preds = %183, %178
  %189 = phi i32 [ %185, %183 ], [ %179, %178 ]
  %190 = icmp ult i32 %189, %133
  br i1 %190, label %137, label %191

; <label>:191:                                    ; preds = %188, %137
  %192 = phi i32 [ %189, %188 ], [ %139, %137 ]
  br label %193

; <label>:193:                                    ; preds = %191, %127
  %194 = phi i32 [ 0, %127 ], [ %192, %191 ]
  %195 = add i32 %194, %65
  %196 = icmp ult i32 %195, 256
  br i1 %196, label %63, label %197

; <label>:197:                                    ; preds = %193
  br label %199

; <label>:198:                                    ; preds = %60
  br label %199

; <label>:199:                                    ; preds = %198, %197
  call void @llvm.lifetime.end(i64 200, i8* %7) #7
  call void @llvm.lifetime.end(i64 684, i8* %6) #7
  ret void
}

declare void @shake256_squeezeblocks(i8*, i64, %struct.shake128ctx*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %30, %3 ]
  %5 = shl i64 %4, 1
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = sub i32 8380423, %7
  %9 = or i64 %5, 1
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = sub i32 8380423, %11
  %13 = shl i32 %12, 4
  %14 = or i32 %13, %8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, i8* %0, i64 %4
  store i8 %15, i8* %16, align 1, !tbaa !2
  %17 = or i64 %4, 1
  %18 = shl i64 %17, 1
  %19 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = sub i32 8380423, %20
  %22 = or i64 %18, 1
  %23 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = sub i32 8380423, %24
  %26 = shl i32 %25, 4
  %27 = or i32 %26, %21
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, i8* %0, i64 %17
  store i8 %28, i8* %29, align 1, !tbaa !2
  %30 = add nsw i64 %4, 2
  %31 = icmp eq i64 %30, 128
  br i1 %31, label %32, label %3

; <label>:32:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %18, %3 ]
  %5 = getelementptr inbounds i8, i8* %1, i64 %4
  %6 = load i8, i8* %5, align 1, !tbaa !2
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 15
  %9 = shl i64 %4, 1
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %9
  store i32 %8, i32* %10, align 4, !tbaa !5
  %11 = load i8, i8* %5, align 1, !tbaa !2
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %12, 4
  %14 = or i64 %9, 1
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %14
  %16 = sub nsw i32 8380423, %8
  store i32 %16, i32* %10, align 4, !tbaa !5
  %17 = sub nsw i32 8380423, %13
  store i32 %17, i32* %15, align 4, !tbaa !5
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 128
  br i1 %19, label %20, label %3

; <label>:20:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %86, %3 ]
  %5 = shl i64 %4, 3
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = trunc i32 %7 to i8
  %9 = mul nuw nsw i64 %4, 9
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  store i8 %8, i8* %10, align 1, !tbaa !2
  %11 = load i32, i32* %6, align 4, !tbaa !5
  %12 = lshr i32 %11, 8
  %13 = or i64 %5, 1
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = shl i32 %15, 1
  %17 = or i32 %16, %12
  %18 = trunc i32 %17 to i8
  %19 = add nuw nsw i64 %9, 1
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  store i8 %18, i8* %20, align 1, !tbaa !2
  %21 = load i32, i32* %14, align 4, !tbaa !5
  %22 = lshr i32 %21, 7
  %23 = or i64 %5, 2
  %24 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = shl i32 %25, 2
  %27 = or i32 %26, %22
  %28 = trunc i32 %27 to i8
  %29 = add nuw nsw i64 %9, 2
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  store i8 %28, i8* %30, align 1, !tbaa !2
  %31 = load i32, i32* %24, align 4, !tbaa !5
  %32 = lshr i32 %31, 6
  %33 = or i64 %5, 3
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = shl i32 %35, 3
  %37 = or i32 %36, %32
  %38 = trunc i32 %37 to i8
  %39 = add nuw nsw i64 %9, 3
  %40 = getelementptr inbounds i8, i8* %0, i64 %39
  store i8 %38, i8* %40, align 1, !tbaa !2
  %41 = load i32, i32* %34, align 4, !tbaa !5
  %42 = lshr i32 %41, 5
  %43 = or i64 %5, 4
  %44 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = shl i32 %45, 4
  %47 = or i32 %46, %42
  %48 = trunc i32 %47 to i8
  %49 = add nuw nsw i64 %9, 4
  %50 = getelementptr inbounds i8, i8* %0, i64 %49
  store i8 %48, i8* %50, align 1, !tbaa !2
  %51 = load i32, i32* %44, align 4, !tbaa !5
  %52 = lshr i32 %51, 4
  %53 = or i64 %5, 5
  %54 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = shl i32 %55, 5
  %57 = or i32 %56, %52
  %58 = trunc i32 %57 to i8
  %59 = add nuw nsw i64 %9, 5
  %60 = getelementptr inbounds i8, i8* %0, i64 %59
  store i8 %58, i8* %60, align 1, !tbaa !2
  %61 = load i32, i32* %54, align 4, !tbaa !5
  %62 = lshr i32 %61, 3
  %63 = or i64 %5, 6
  %64 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = shl i32 %65, 6
  %67 = or i32 %66, %62
  %68 = trunc i32 %67 to i8
  %69 = add nuw nsw i64 %9, 6
  %70 = getelementptr inbounds i8, i8* %0, i64 %69
  store i8 %68, i8* %70, align 1, !tbaa !2
  %71 = load i32, i32* %64, align 4, !tbaa !5
  %72 = lshr i32 %71, 2
  %73 = or i64 %5, 7
  %74 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = shl i32 %75, 7
  %77 = or i32 %76, %72
  %78 = trunc i32 %77 to i8
  %79 = add nuw nsw i64 %9, 7
  %80 = getelementptr inbounds i8, i8* %0, i64 %79
  store i8 %78, i8* %80, align 1, !tbaa !2
  %81 = load i32, i32* %74, align 4, !tbaa !5
  %82 = lshr i32 %81, 1
  %83 = trunc i32 %82 to i8
  %84 = add nuw nsw i64 %9, 8
  %85 = getelementptr inbounds i8, i8* %0, i64 %84
  store i8 %83, i8* %85, align 1, !tbaa !2
  %86 = add nuw nsw i64 %4, 1
  %87 = icmp eq i64 %86, 32
  br i1 %87, label %88, label %3

; <label>:88:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %101, %3 ]
  %5 = mul nuw nsw i64 %4, 9
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !2
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i64 %5, 1
  %10 = getelementptr inbounds i8, i8* %1, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !2
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = and i32 %13, 256
  %15 = or i32 %14, %8
  %16 = shl i64 %4, 3
  %17 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %16
  store i32 %15, i32* %17, align 4, !tbaa !5
  %18 = load i8, i8* %10, align 1, !tbaa !2
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %19, 1
  %21 = add nuw nsw i64 %5, 2
  %22 = getelementptr inbounds i8, i8* %1, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !2
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 7
  %26 = and i32 %25, 384
  %27 = or i32 %26, %20
  %28 = or i64 %16, 1
  %29 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %28
  store i32 %27, i32* %29, align 4, !tbaa !5
  %30 = load i8, i8* %22, align 1, !tbaa !2
  %31 = zext i8 %30 to i32
  %32 = lshr i32 %31, 2
  %33 = add nuw nsw i64 %5, 3
  %34 = getelementptr inbounds i8, i8* %1, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !2
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 6
  %38 = and i32 %37, 448
  %39 = or i32 %38, %32
  %40 = or i64 %16, 2
  %41 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %40
  store i32 %39, i32* %41, align 4, !tbaa !5
  %42 = load i8, i8* %34, align 1, !tbaa !2
  %43 = zext i8 %42 to i32
  %44 = lshr i32 %43, 3
  %45 = add nuw nsw i64 %5, 4
  %46 = getelementptr inbounds i8, i8* %1, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !2
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 5
  %50 = and i32 %49, 480
  %51 = or i32 %50, %44
  %52 = or i64 %16, 3
  %53 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %52
  store i32 %51, i32* %53, align 4, !tbaa !5
  %54 = load i8, i8* %46, align 1, !tbaa !2
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %55, 4
  %57 = add nuw nsw i64 %5, 5
  %58 = getelementptr inbounds i8, i8* %1, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !2
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 4
  %62 = and i32 %61, 496
  %63 = or i32 %62, %56
  %64 = or i64 %16, 4
  %65 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %64
  store i32 %63, i32* %65, align 4, !tbaa !5
  %66 = load i8, i8* %58, align 1, !tbaa !2
  %67 = zext i8 %66 to i32
  %68 = lshr i32 %67, 5
  %69 = add nuw nsw i64 %5, 6
  %70 = getelementptr inbounds i8, i8* %1, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !2
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 3
  %74 = and i32 %73, 504
  %75 = or i32 %74, %68
  %76 = or i64 %16, 5
  %77 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %76
  store i32 %75, i32* %77, align 4, !tbaa !5
  %78 = load i8, i8* %70, align 1, !tbaa !2
  %79 = zext i8 %78 to i32
  %80 = lshr i32 %79, 6
  %81 = add nuw nsw i64 %5, 7
  %82 = getelementptr inbounds i8, i8* %1, i64 %81
  %83 = load i8, i8* %82, align 1, !tbaa !2
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 2
  %86 = and i32 %85, 508
  %87 = or i32 %86, %80
  %88 = or i64 %16, 6
  %89 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %88
  store i32 %87, i32* %89, align 4, !tbaa !5
  %90 = load i8, i8* %82, align 1, !tbaa !2
  %91 = zext i8 %90 to i32
  %92 = lshr i32 %91, 7
  %93 = add nuw nsw i64 %5, 8
  %94 = getelementptr inbounds i8, i8* %1, i64 %93
  %95 = load i8, i8* %94, align 1, !tbaa !2
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 1
  %98 = or i32 %97, %92
  %99 = or i64 %16, 7
  %100 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %99
  store i32 %98, i32* %100, align 4, !tbaa !5
  %101 = add nuw nsw i64 %4, 1
  %102 = icmp eq i64 %101, 32
  br i1 %102, label %103, label %3

; <label>:103:                                    ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %54, %3 ]
  %5 = shl i64 %4, 2
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = sub i32 8388609, %7
  %9 = or i64 %5, 1
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = sub i32 8388609, %11
  %13 = or i64 %5, 2
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = sub i32 8388609, %15
  %17 = or i64 %5, 3
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = sub i32 8388609, %19
  %21 = trunc i32 %8 to i8
  %22 = mul nuw nsw i64 %4, 7
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  store i8 %21, i8* %23, align 1, !tbaa !2
  %24 = lshr i32 %8, 8
  %25 = add nuw nsw i64 %22, 1
  %26 = getelementptr inbounds i8, i8* %0, i64 %25
  %27 = shl i32 %12, 6
  %28 = or i32 %27, %24
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %26, align 1, !tbaa !2
  %30 = lshr i32 %12, 2
  %31 = trunc i32 %30 to i8
  %32 = add nuw nsw i64 %22, 2
  %33 = getelementptr inbounds i8, i8* %0, i64 %32
  store i8 %31, i8* %33, align 1, !tbaa !2
  %34 = lshr i32 %12, 10
  %35 = add nuw nsw i64 %22, 3
  %36 = getelementptr inbounds i8, i8* %0, i64 %35
  %37 = shl i32 %16, 4
  %38 = or i32 %37, %34
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %36, align 1, !tbaa !2
  %40 = lshr i32 %16, 4
  %41 = trunc i32 %40 to i8
  %42 = add nuw nsw i64 %22, 4
  %43 = getelementptr inbounds i8, i8* %0, i64 %42
  store i8 %41, i8* %43, align 1, !tbaa !2
  %44 = lshr i32 %16, 12
  %45 = add nuw nsw i64 %22, 5
  %46 = getelementptr inbounds i8, i8* %0, i64 %45
  %47 = shl i32 %20, 2
  %48 = or i32 %47, %44
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %46, align 1, !tbaa !2
  %50 = lshr i32 %20, 6
  %51 = trunc i32 %50 to i8
  %52 = add nuw nsw i64 %22, 6
  %53 = getelementptr inbounds i8, i8* %0, i64 %52
  store i8 %51, i8* %53, align 1, !tbaa !2
  %54 = add nuw nsw i64 %4, 1
  %55 = icmp eq i64 %54, 64
  br i1 %55, label %56, label %3

; <label>:56:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %71, %3 ]
  %5 = mul nuw nsw i64 %4, 7
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !2
  %8 = zext i8 %7 to i32
  %9 = shl i64 %4, 2
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %9
  store i32 %8, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !2
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = and i32 %15, 16128
  %17 = or i32 %16, %8
  store i32 %17, i32* %10, align 4, !tbaa !5
  %18 = load i8, i8* %12, align 1, !tbaa !2
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %19, 6
  %21 = or i64 %9, 1
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %21
  store i32 %20, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %5, 2
  %24 = getelementptr inbounds i8, i8* %1, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 2
  %28 = or i32 %27, %20
  store i32 %28, i32* %22, align 4, !tbaa !5
  %29 = add nuw nsw i64 %5, 3
  %30 = getelementptr inbounds i8, i8* %1, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !2
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 10
  %34 = and i32 %33, 15360
  %35 = or i32 %34, %28
  store i32 %35, i32* %22, align 4, !tbaa !5
  %36 = load i8, i8* %30, align 1, !tbaa !2
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %37, 4
  %39 = or i64 %9, 2
  %40 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %39
  store i32 %38, i32* %40, align 4, !tbaa !5
  %41 = add nuw nsw i64 %5, 4
  %42 = getelementptr inbounds i8, i8* %1, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !2
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 4
  %46 = or i32 %45, %38
  store i32 %46, i32* %40, align 4, !tbaa !5
  %47 = add nuw nsw i64 %5, 5
  %48 = getelementptr inbounds i8, i8* %1, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !2
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 12
  %52 = and i32 %51, 12288
  %53 = or i32 %52, %46
  store i32 %53, i32* %40, align 4, !tbaa !5
  %54 = load i8, i8* %48, align 1, !tbaa !2
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %55, 2
  %57 = or i64 %9, 3
  %58 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %57
  store i32 %56, i32* %58, align 4, !tbaa !5
  %59 = add nuw nsw i64 %5, 6
  %60 = getelementptr inbounds i8, i8* %1, i64 %59
  %61 = load i8, i8* %60, align 1, !tbaa !2
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 6
  %64 = or i32 %63, %56
  %65 = insertelement <4 x i32> undef, i32 %17, i32 0
  %66 = insertelement <4 x i32> %65, i32 %35, i32 1
  %67 = insertelement <4 x i32> %66, i32 %53, i32 2
  %68 = insertelement <4 x i32> %67, i32 %64, i32 3
  %69 = sub nsw <4 x i32> <i32 8388609, i32 8388609, i32 8388609, i32 8388609>, %68
  %70 = bitcast i32* %10 to <4 x i32>*
  store <4 x i32> %69, <4 x i32>* %70, align 4, !tbaa !5
  %71 = add nuw nsw i64 %4, 1
  %72 = icmp eq i64 %71, 64
  br i1 %72, label %73, label %3

; <label>:73:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %40, %3 ]
  %5 = shl i64 %4, 1
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = sub i32 523775, %7
  %9 = ashr i32 %8, 31
  %10 = and i32 %9, 8380417
  %11 = add i32 %10, %8
  %12 = or i64 %5, 1
  %13 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = sub i32 523775, %14
  %16 = ashr i32 %15, 31
  %17 = and i32 %16, 8380417
  %18 = add i32 %17, %15
  %19 = trunc i32 %11 to i8
  %20 = mul nuw nsw i64 %4, 5
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  store i8 %19, i8* %21, align 1, !tbaa !2
  %22 = lshr i32 %11, 8
  %23 = trunc i32 %22 to i8
  %24 = add nuw nsw i64 %20, 1
  %25 = getelementptr inbounds i8, i8* %0, i64 %24
  store i8 %23, i8* %25, align 1, !tbaa !2
  %26 = lshr i32 %11, 16
  %27 = add nuw nsw i64 %20, 2
  %28 = getelementptr inbounds i8, i8* %0, i64 %27
  %29 = shl i32 %18, 4
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %28, align 1, !tbaa !2
  %32 = lshr i32 %18, 4
  %33 = trunc i32 %32 to i8
  %34 = add nuw nsw i64 %20, 3
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  store i8 %33, i8* %35, align 1, !tbaa !2
  %36 = lshr i32 %18, 12
  %37 = trunc i32 %36 to i8
  %38 = add nuw nsw i64 %20, 4
  %39 = getelementptr inbounds i8, i8* %0, i64 %38
  store i8 %37, i8* %39, align 1, !tbaa !2
  %40 = add nuw nsw i64 %4, 1
  %41 = icmp eq i64 %40, 128
  br i1 %41, label %42, label %3

; <label>:42:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %49, %3 ]
  %5 = mul nuw nsw i64 %4, 5
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !2
  %8 = zext i8 %7 to i32
  %9 = shl i64 %4, 1
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %9
  store i32 %8, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !2
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %15, %8
  store i32 %16, i32* %10, align 4, !tbaa !5
  %17 = add nuw nsw i64 %5, 2
  %18 = getelementptr inbounds i8, i8* %1, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !2
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = and i32 %21, 983040
  %23 = or i32 %22, %16
  store i32 %23, i32* %10, align 4, !tbaa !5
  %24 = load i8, i8* %18, align 1, !tbaa !2
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %25, 4
  %27 = or i64 %9, 1
  %28 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %27
  store i32 %26, i32* %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %5, 3
  %30 = getelementptr inbounds i8, i8* %1, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !2
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 4
  %34 = or i32 %33, %26
  store i32 %34, i32* %28, align 4, !tbaa !5
  %35 = add nuw nsw i64 %5, 4
  %36 = getelementptr inbounds i8, i8* %1, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !2
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 12
  %40 = or i32 %39, %34
  %41 = sub nsw i32 523775, %23
  %42 = ashr i32 %41, 31
  %43 = and i32 %42, 8380417
  %44 = add nsw i32 %43, %41
  store i32 %44, i32* %10, align 4, !tbaa !5
  %45 = sub nsw i32 523775, %40
  %46 = ashr i32 %45, 31
  %47 = and i32 %46, 8380417
  %48 = add nsw i32 %47, %45
  store i32 %48, i32* %28, align 4, !tbaa !5
  %49 = add nuw nsw i64 %4, 1
  %50 = icmp eq i64 %49, 128
  br i1 %50, label %51, label %3

; <label>:51:                                     ; preds = %3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %26, %3 ]
  %5 = shl i64 %4, 1
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = or i64 %5, 1
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = shl i32 %10, 4
  %12 = or i32 %11, %7
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds i8, i8* %0, i64 %4
  store i8 %13, i8* %14, align 1, !tbaa !2
  %15 = or i64 %4, 1
  %16 = shl i64 %15, 1
  %17 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = or i64 %16, 1
  %20 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = shl i32 %21, 4
  %23 = or i32 %22, %18
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, i8* %0, i64 %15
  store i8 %24, i8* %25, align 1, !tbaa !2
  %26 = add nsw i64 %4, 2
  %27 = icmp eq i64 %26, 128
  br i1 %27, label %28, label %3

; <label>:28:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %3, i8* %1, i16 zeroext 0) #7
  %4 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %4, i8* %1, i16 zeroext 1) #7
  %5 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %5, i8* %1, i16 zeroext 2) #7
  %6 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 1, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %6, i8* %1, i16 zeroext 256) #7
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 1, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %7, i8* %1, i16 zeroext 257) #7
  %8 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 1, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %8, i8* %1, i16 zeroext 258) #7
  %9 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 2, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %9, i8* %1, i16 zeroext 512) #7
  %10 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 2, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %10, i8* %1, i16 zeroext 513) #7
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 2, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %11, i8* %1, i16 zeroext 514) #7
  %12 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 3, i32 0, i64 0
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %12, i8* %1, i16 zeroext 768) #7
  %13 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 3, i32 0, i64 1
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %13, i8* %1, i16 zeroext 769) #7
  %14 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 3, i32 0, i64 2
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %14, i8* %1, i16 zeroext 770) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* nocapture, i8* nocapture readonly, %struct.polyveck*) local_unnamed_addr #0 {
  %4 = alloca [560 x i8], align 16
  %5 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 0
  %6 = alloca [136 x i8], align 16
  %7 = alloca %struct.shake128ctx, align 8
  %8 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 560, i8* %8) #7
  %9 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 136, i8* %9) #7
  %10 = bitcast %struct.shake128ctx* %7 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %10) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %1, i64 48, i32 1, i1 false)
  %11 = bitcast %struct.poly* %0 to i8*
  %12 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 48
  %13 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* %12, %struct.poly* %13) #7
  %14 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 176
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* %14, %struct.poly* %15) #7
  %16 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 304
  %17 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* %16, %struct.poly* %17) #7
  %18 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 432
  %19 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 3
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* %18, %struct.poly* %19) #7
  call void @shake256_absorb(%struct.shake128ctx* nonnull %7, i8* %8, i64 560) #7
  call void @shake256_squeezeblocks(i8* %9, i64 1, %struct.shake128ctx* nonnull %7) #7
  %20 = load i8, i8* %9, align 16, !tbaa !2
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 1
  %23 = load i8, i8* %22, align 1, !tbaa !2
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 8
  %26 = or i64 %25, %21
  %27 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 2
  %28 = load i8, i8* %27, align 2, !tbaa !2
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 16
  %31 = or i64 %30, %26
  %32 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 3
  %33 = load i8, i8* %32, align 1, !tbaa !2
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 24
  %36 = or i64 %35, %31
  %37 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 4
  %38 = load i8, i8* %37, align 4, !tbaa !2
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 32
  %41 = or i64 %40, %36
  %42 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 5
  %43 = load i8, i8* %42, align 1, !tbaa !2
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 40
  %46 = or i64 %45, %41
  %47 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 6
  %48 = load i8, i8* %47, align 2, !tbaa !2
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 48
  %51 = or i64 %50, %46
  %52 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 7
  %53 = load i8, i8* %52, align 1, !tbaa !2
  %54 = zext i8 %53 to i64
  %55 = shl nuw i64 %54, 56
  %56 = or i64 %55, %51
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 1024, i32 4, i1 false)
  br label %57

; <label>:57:                                     ; preds = %73, %3
  %58 = phi i64 [ 196, %3 ], [ %84, %73 ]
  %59 = phi i64 [ %56, %3 ], [ %83, %73 ]
  %60 = phi i32 [ 8, %3 ], [ %67, %73 ]
  br label %61

; <label>:61:                                     ; preds = %57, %65
  %62 = phi i32 [ %67, %65 ], [ %60, %57 ]
  %63 = icmp ugt i32 %62, 135
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  call void @shake256_squeezeblocks(i8* %9, i64 1, %struct.shake128ctx* nonnull %7) #7
  br label %65

; <label>:65:                                     ; preds = %64, %61
  %66 = phi i32 [ 0, %64 ], [ %62, %61 ]
  %67 = add i32 %66, 1
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1, !tbaa !2
  %71 = zext i8 %70 to i64
  %72 = icmp ugt i64 %71, %58
  br i1 %72, label %61, label %73

; <label>:73:                                     ; preds = %65
  %74 = zext i8 %70 to i64
  %75 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %58
  store i32 %76, i32* %77, align 4, !tbaa !5
  %78 = trunc i64 %59 to i32
  %79 = and i32 %78, 1
  %80 = sub nsw i32 0, %79
  %81 = and i32 %80, 8380417
  %82 = xor i32 %81, 1
  store i32 %82, i32* %75, align 4, !tbaa !5
  %83 = lshr i64 %59, 1
  %84 = add nuw nsw i64 %58, 1
  %85 = icmp eq i64 %84, 256
  br i1 %85, label %86, label %57

; <label>:86:                                     ; preds = %73
  call void @llvm.lifetime.end(i64 200, i8* %10) #7
  call void @llvm.lifetime.end(i64 136, i8* nonnull %9) #7
  call void @llvm.lifetime.end(i64 560, i8* %8) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_keypair(i8*, i8*) local_unnamed_addr #0 {
  %3 = alloca [96 x i8], align 16
  %4 = alloca [48 x i8], align 16
  %5 = alloca [4 x %struct.polyvecl], align 16
  %6 = alloca %struct.polyvecl, align 4
  %7 = alloca %struct.polyvecl, align 4
  %8 = alloca %struct.polyveck, align 4
  %9 = alloca %struct.polyveck, align 4
  %10 = alloca %struct.polyveck, align 4
  %11 = alloca %struct.polyveck, align 4
  %12 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 96, i8* %12) #7
  %13 = getelementptr inbounds [48 x i8], [48 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* %13) #7
  %14 = bitcast [4 x %struct.polyvecl]* %5 to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %14) #7
  %15 = bitcast %struct.polyvecl* %6 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %15) #7
  %16 = bitcast %struct.polyvecl* %7 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %16) #7
  %17 = bitcast %struct.polyveck* %8 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %17) #7
  %18 = bitcast %struct.polyveck* %9 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %18) #7
  %19 = bitcast %struct.polyveck* %10 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %19) #7
  %20 = bitcast %struct.polyveck* %11 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %20) #7
  %21 = call i32 @randombytes(i8* %12, i64 96) #7
  %22 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 32
  %23 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %5, i64 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* %23, i8* %12)
  %24 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %6, i64 0, i32 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %24, i8* %22, i16 zeroext 0) #7
  %25 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %6, i64 0, i32 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %25, i8* %22, i16 zeroext 1) #7
  %26 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %6, i64 0, i32 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %26, i8* %22, i16 zeroext 2) #7
  %27 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 64
  %28 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %8, i64 0, i32 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %28, i8* %22, i16 zeroext 3) #7
  %29 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %8, i64 0, i32 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %29, i8* %22, i16 zeroext 4) #7
  %30 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %8, i64 0, i32 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %30, i8* %22, i16 zeroext 5) #7
  %31 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %8, i64 0, i32 0, i64 3
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %31, i8* %22, i16 zeroext 6) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %15, i64 3072, i32 4, i1 false), !tbaa.struct !33
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %7) #7
  %32 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %9, i64 0, i32 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %32, %struct.polyvecl* %23, %struct.polyvecl* nonnull %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %32) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %32) #7
  %33 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %9, i64 0, i32 0, i64 1
  %34 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %5, i64 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %33, %struct.polyvecl* %34, %struct.polyvecl* nonnull %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %33) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %33) #7
  %35 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %9, i64 0, i32 0, i64 2
  %36 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %5, i64 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %35, %struct.polyvecl* %36, %struct.polyvecl* nonnull %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %35) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %35) #7
  %37 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %9, i64 0, i32 0, i64 3
  %38 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %5, i64 0, i64 3
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %37, %struct.polyvecl* %38, %struct.polyvecl* nonnull %7) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %37) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %37) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck* nonnull %9, %struct.polyveck* nonnull %9, %struct.polyveck* nonnull %8) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck* nonnull %9) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(%struct.polyveck* nonnull %10, %struct.polyveck* nonnull %11, %struct.polyveck* nonnull %9) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_pk(i8* %0, i8* %12, %struct.polyveck* nonnull %10) #7
  call void @shake256(i8* %13, i64 48, i8* %0, i64 1184) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_sk(i8* %1, i8* %12, i8* %27, i8* %13, %struct.polyvecl* nonnull %6, %struct.polyveck* nonnull %8, %struct.polyveck* nonnull %11) #7
  call void @llvm.lifetime.end(i64 4096, i8* %20) #7
  call void @llvm.lifetime.end(i64 4096, i8* %19) #7
  call void @llvm.lifetime.end(i64 4096, i8* %18) #7
  call void @llvm.lifetime.end(i64 4096, i8* %17) #7
  call void @llvm.lifetime.end(i64 3072, i8* %16) #7
  call void @llvm.lifetime.end(i64 3072, i8* %15) #7
  call void @llvm.lifetime.end(i64 12288, i8* %14) #7
  call void @llvm.lifetime.end(i64 48, i8* %13) #7
  call void @llvm.lifetime.end(i64 96, i8* %12) #7
  ret i32 0
}

declare i32 @randombytes(i8*, i64) local_unnamed_addr #2

declare void @shake256(i8*, i64, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(i8*, i64* nocapture, i8*, i64, i8*) local_unnamed_addr #0 {
  %6 = alloca [208 x i8], align 16
  %7 = alloca %struct.poly, align 4
  %8 = alloca %struct.poly, align 4
  %9 = alloca [4 x %struct.polyvecl], align 16
  %10 = alloca %struct.polyvecl, align 4
  %11 = alloca %struct.polyvecl, align 4
  %12 = alloca %struct.polyvecl, align 4
  %13 = alloca %struct.polyvecl, align 4
  %14 = alloca %struct.polyveck, align 4
  %15 = alloca %struct.polyveck, align 4
  %16 = alloca %struct.polyveck, align 4
  %17 = alloca %struct.polyveck, align 4
  %18 = alloca %struct.polyveck, align 4
  %19 = alloca %struct.polyveck, align 4
  %20 = alloca %struct.polyveck, align 4
  %21 = alloca %struct.polyveck, align 4
  %22 = alloca %struct.shake256incctx, align 8
  %23 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 208, i8* %23) #7
  %24 = bitcast %struct.poly* %7 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %24) #7
  %25 = bitcast %struct.poly* %8 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %25) #7
  %26 = bitcast [4 x %struct.polyvecl]* %9 to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %26) #7
  %27 = bitcast %struct.polyvecl* %10 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %27) #7
  %28 = bitcast %struct.polyvecl* %11 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %28) #7
  %29 = bitcast %struct.polyvecl* %12 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %29) #7
  %30 = bitcast %struct.polyvecl* %13 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %30) #7
  %31 = bitcast %struct.polyveck* %14 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %31) #7
  %32 = bitcast %struct.polyveck* %15 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %32) #7
  %33 = bitcast %struct.polyveck* %16 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %33) #7
  %34 = bitcast %struct.polyveck* %17 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %34) #7
  %35 = bitcast %struct.polyveck* %18 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %35) #7
  %36 = bitcast %struct.polyveck* %19 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %36) #7
  %37 = bitcast %struct.polyveck* %20 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %37) #7
  %38 = bitcast %struct.polyveck* %21 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %38) #7
  %39 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 32
  %40 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 80
  %41 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 112
  %42 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 160
  call void @PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(i8* %23, i8* %40, i8* %39, %struct.polyvecl* nonnull %10, %struct.polyveck* nonnull %15, %struct.polyveck* nonnull %14, i8* %4) #7
  %43 = bitcast %struct.shake256incctx* %22 to i8*
  call void @llvm.lifetime.start(i64 208, i8* %43) #7
  call void @shake256_inc_init(%struct.shake256incctx* nonnull %22) #7
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %22, i8* %39, i64 48) #7
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %22, i8* %2, i64 %3) #7
  call void @shake256_inc_finalize(%struct.shake256incctx* nonnull %22) #7
  call void @shake256_inc_squeeze(i8* %41, i64 48, %struct.shake256incctx* nonnull %22) #7
  call void @shake256(i8* %42, i64 48, i8* %40, i64 80) #7
  %44 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %9, i64 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* %44, i8* %23)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %10) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* nonnull %15) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* nonnull %14) #7
  %45 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %11, i64 0, i32 0, i64 0
  %46 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %11, i64 0, i32 0, i64 1
  %47 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %11, i64 0, i32 0, i64 2
  %48 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 0
  %49 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 1
  %50 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %9, i64 0, i64 1
  %51 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 2
  %52 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %9, i64 0, i64 2
  %53 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 3
  %54 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %9, i64 0, i64 3
  %55 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i64 0, i32 0, i64 0
  %56 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i64 0, i32 0, i64 0
  %57 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i64 0, i32 0, i64 1
  %58 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i64 0, i32 0, i64 1
  %59 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i64 0, i32 0, i64 2
  %60 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i64 0, i32 0, i64 2
  %61 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i64 0, i32 0, i64 3
  %62 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i64 0, i32 0, i64 3
  %63 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i64 0, i32 0, i64 0
  %64 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i64 0, i32 0, i64 0
  %65 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i64 0, i32 0, i64 1
  %66 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i64 0, i32 0, i64 1
  %67 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i64 0, i32 0, i64 2
  %68 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i64 0, i32 0, i64 2
  %69 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %21, i64 0, i32 0, i64 0
  %70 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i64 0, i32 0, i64 0
  %71 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %21, i64 0, i32 0, i64 1
  %72 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i64 0, i32 0, i64 1
  %73 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %21, i64 0, i32 0, i64 2
  %74 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i64 0, i32 0, i64 2
  %75 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %21, i64 0, i32 0, i64 3
  %76 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i64 0, i32 0, i64 3
  br label %77

; <label>:77:                                     ; preds = %93, %5
  %78 = phi i16 [ 0, %5 ], [ %81, %93 ]
  %79 = add i16 %78, 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* %45, i8* %42, i16 zeroext %78) #7
  %80 = add i16 %78, 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* %46, i8* %42, i16 zeroext %79) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* %47, i8* %42, i16 zeroext %80) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %28, i64 3072, i32 4, i1 false), !tbaa.struct !33
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %12) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %48, %struct.polyvecl* %44, %struct.polyvecl* nonnull %12) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %48) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %48) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %49, %struct.polyvecl* %50, %struct.polyvecl* nonnull %12) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %49) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %49) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %51, %struct.polyvecl* %52, %struct.polyvecl* nonnull %12) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %51) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %51) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %53, %struct.polyvecl* %54, %struct.polyvecl* nonnull %12) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %53) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %53) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %16) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(%struct.polyveck* nonnull %17, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %16) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* nonnull %7, i8* %41, %struct.polyveck* nonnull %17)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %24, i64 1024, i32 4, i1 false), !tbaa.struct !34
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* nonnull %8) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %55, %struct.poly* nonnull %8, %struct.poly* %56) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %55) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %57, %struct.poly* nonnull %8, %struct.poly* %58) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %57) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %59, %struct.poly* nonnull %8, %struct.poly* %60) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %59) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %61, %struct.poly* nonnull %8, %struct.poly* %62) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %61) #7
  %81 = add i16 %78, 3
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck* nonnull %18, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %20) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck* nonnull %18) #7
  %82 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck* nonnull %18, i32 261563) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

; <label>:84:                                     ; preds = %77
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %63, %struct.poly* nonnull %8, %struct.poly* %64) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %63) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %65, %struct.poly* nonnull %8, %struct.poly* %66) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %65) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %67, %struct.poly* nonnull %8, %struct.poly* %68) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %67) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(%struct.polyvecl* nonnull %13, %struct.polyvecl* nonnull %13, %struct.polyvecl* nonnull %11) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(%struct.polyvecl* nonnull %13) #7
  %85 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl* nonnull %13, i32 523451) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %84
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %69, %struct.poly* nonnull %8, %struct.poly* %70) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %69) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %71, %struct.poly* nonnull %8, %struct.poly* %72) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %71) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %73, %struct.poly* nonnull %8, %struct.poly* %74) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %73) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %75, %struct.poly* nonnull %8, %struct.poly* %76) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %75) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %21) #7
  %88 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck* nonnull %21, i32 261888) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

; <label>:90:                                     ; preds = %87
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck* nonnull %18, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %21) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %18) #7
  %91 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(%struct.polyveck* nonnull %19, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %17) #7
  %92 = icmp ugt i32 %91, 80
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %90, %77, %84, %87
  br label %77

; <label>:94:                                     ; preds = %90
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_sig(i8* %0, %struct.polyvecl* nonnull %13, %struct.polyveck* nonnull %19, %struct.poly* nonnull %7) #7
  store i64 2044, i64* %1, align 8, !tbaa !35
  call void @llvm.lifetime.end(i64 208, i8* %43) #7
  call void @llvm.lifetime.end(i64 4096, i8* %38) #7
  call void @llvm.lifetime.end(i64 4096, i8* %37) #7
  call void @llvm.lifetime.end(i64 4096, i8* %36) #7
  call void @llvm.lifetime.end(i64 4096, i8* %35) #7
  call void @llvm.lifetime.end(i64 4096, i8* %34) #7
  call void @llvm.lifetime.end(i64 4096, i8* %33) #7
  call void @llvm.lifetime.end(i64 4096, i8* %32) #7
  call void @llvm.lifetime.end(i64 4096, i8* %31) #7
  call void @llvm.lifetime.end(i64 3072, i8* %30) #7
  call void @llvm.lifetime.end(i64 3072, i8* nonnull %29) #7
  call void @llvm.lifetime.end(i64 3072, i8* nonnull %28) #7
  call void @llvm.lifetime.end(i64 3072, i8* %27) #7
  call void @llvm.lifetime.end(i64 12288, i8* %26) #7
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %25) #7
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %24) #7
  call void @llvm.lifetime.end(i64 208, i8* %23) #7
  ret i32 0
}

declare void @shake256_inc_init(%struct.shake256incctx*) local_unnamed_addr #2

declare void @shake256_inc_absorb(%struct.shake256incctx*, i8*, i64) local_unnamed_addr #2

declare void @shake256_inc_finalize(%struct.shake256incctx*) local_unnamed_addr #2

declare void @shake256_inc_squeeze(i8*, i64, %struct.shake256incctx*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(i8*, i64, i8*, i64, i8*) local_unnamed_addr #0 {
  %6 = alloca [32 x i8], align 16
  %7 = alloca [48 x i8], align 16
  %8 = alloca %struct.poly, align 4
  %9 = alloca %struct.poly, align 4
  %10 = alloca %struct.poly, align 4
  %11 = alloca [4 x %struct.polyvecl], align 16
  %12 = alloca %struct.polyvecl, align 4
  %13 = alloca %struct.polyveck, align 4
  %14 = alloca %struct.polyveck, align 4
  %15 = alloca %struct.polyveck, align 4
  %16 = alloca %struct.polyveck, align 4
  %17 = alloca %struct.polyveck, align 4
  %18 = alloca %struct.shake256incctx, align 8
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %19) #7
  %20 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* %20) #7
  %21 = bitcast %struct.poly* %8 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %21) #7
  %22 = bitcast %struct.poly* %9 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %22) #7
  %23 = bitcast %struct.poly* %10 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %23) #7
  %24 = bitcast [4 x %struct.polyvecl]* %11 to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %24) #7
  %25 = bitcast %struct.polyvecl* %12 to i8*
  call void @llvm.lifetime.start(i64 3072, i8* %25) #7
  %26 = bitcast %struct.polyveck* %13 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %26) #7
  %27 = bitcast %struct.polyveck* %14 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %27) #7
  %28 = bitcast %struct.polyveck* %15 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %28) #7
  %29 = bitcast %struct.polyveck* %16 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %29) #7
  %30 = bitcast %struct.polyveck* %17 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %30) #7
  %31 = icmp ult i64 %1, 2044
  br i1 %31, label %73, label %32

; <label>:32:                                     ; preds = %5
  call void @PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(i8* %19, %struct.polyveck* nonnull %13, i8* %4) #7
  %33 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(%struct.polyvecl* nonnull %12, %struct.polyveck* nonnull %15, %struct.poly* nonnull %8, i8* %0) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %73

; <label>:35:                                     ; preds = %32
  %36 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl* nonnull %12, i32 523451) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

; <label>:38:                                     ; preds = %35
  call void @shake256(i8* %20, i64 48, i8* %4, i64 1184) #7
  %39 = bitcast %struct.shake256incctx* %18 to i8*
  call void @llvm.lifetime.start(i64 208, i8* %39) #7
  call void @shake256_inc_init(%struct.shake256incctx* nonnull %18) #7
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %18, i8* %20, i64 48) #7
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %18, i8* %2, i64 %3) #7
  call void @shake256_inc_finalize(%struct.shake256incctx* nonnull %18) #7
  call void @shake256_inc_squeeze(i8* %20, i64 48, %struct.shake256incctx* nonnull %18) #7
  %40 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %11, i64 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* %40, i8* %19)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %12) #7
  %41 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %41, %struct.polyvecl* %40, %struct.polyvecl* nonnull %12) #7
  %42 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 1
  %43 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %11, i64 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %42, %struct.polyvecl* %43, %struct.polyvecl* nonnull %12) #7
  %44 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 2
  %45 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %11, i64 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %44, %struct.polyvecl* %45, %struct.polyvecl* nonnull %12) #7
  %46 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 3
  %47 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %11, i64 0, i64 3
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %46, %struct.polyvecl* %47, %struct.polyvecl* nonnull %12) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %21, i64 1024, i32 4, i1 false), !tbaa.struct !34
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* nonnull %9) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(%struct.polyveck* nonnull %13) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* nonnull %13) #7
  %48 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %17, i64 0, i32 0, i64 0
  %49 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %13, i64 0, i32 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %48, %struct.poly* nonnull %9, %struct.poly* %49) #7
  %50 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %17, i64 0, i32 0, i64 1
  %51 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %13, i64 0, i32 0, i64 1
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %50, %struct.poly* nonnull %9, %struct.poly* %51) #7
  %52 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %17, i64 0, i32 0, i64 2
  %53 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %13, i64 0, i32 0, i64 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %52, %struct.poly* nonnull %9, %struct.poly* %53) #7
  %54 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %17, i64 0, i32 0, i64 3
  %55 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %13, i64 0, i32 0, i64 3
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %54, %struct.poly* nonnull %9, %struct.poly* %55) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck* nonnull %16, %struct.polyveck* nonnull %16, %struct.polyveck* nonnull %17) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(%struct.polyveck* nonnull %16) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(%struct.polyveck* nonnull %16) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %16) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(%struct.polyveck* nonnull %14, %struct.polyveck* nonnull %16, %struct.polyveck* nonnull %15) #7
  call void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* nonnull %10, i8* %20, %struct.polyveck* nonnull %14)
  br label %63

; <label>:56:                                     ; preds = %63
  %57 = getelementptr inbounds %struct.poly, %struct.poly* %8, i64 0, i32 0, i64 %70
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = getelementptr inbounds %struct.poly, %struct.poly* %10, i64 0, i32 0, i64 %70
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp eq i32 %58, %60
  %62 = or i64 %64, 2
  br i1 %61, label %75, label %71

; <label>:63:                                     ; preds = %89, %38
  %64 = phi i64 [ 0, %38 ], [ %88, %89 ]
  %65 = getelementptr inbounds %struct.poly, %struct.poly* %8, i64 0, i32 0, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds %struct.poly, %struct.poly* %10, i64 0, i32 0, i64 %64
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = icmp eq i32 %66, %68
  %70 = or i64 %64, 1
  br i1 %69, label %56, label %71

; <label>:71:                                     ; preds = %89, %82, %75, %56, %63
  %72 = phi i32 [ -1, %63 ], [ -1, %56 ], [ -1, %75 ], [ -1, %82 ], [ 0, %89 ]
  call void @llvm.lifetime.end(i64 208, i8* %39) #7
  br label %73

; <label>:73:                                     ; preds = %35, %32, %5, %71
  %74 = phi i32 [ %72, %71 ], [ -1, %5 ], [ -1, %32 ], [ -1, %35 ]
  call void @llvm.lifetime.end(i64 4096, i8* %30) #7
  call void @llvm.lifetime.end(i64 4096, i8* %29) #7
  call void @llvm.lifetime.end(i64 4096, i8* %28) #7
  call void @llvm.lifetime.end(i64 4096, i8* %27) #7
  call void @llvm.lifetime.end(i64 4096, i8* %26) #7
  call void @llvm.lifetime.end(i64 3072, i8* %25) #7
  call void @llvm.lifetime.end(i64 12288, i8* %24) #7
  call void @llvm.lifetime.end(i64 1024, i8* %23) #7
  call void @llvm.lifetime.end(i64 1024, i8* %22) #7
  call void @llvm.lifetime.end(i64 1024, i8* %21) #7
  call void @llvm.lifetime.end(i64 48, i8* %20) #7
  call void @llvm.lifetime.end(i64 32, i8* %19) #7
  ret i32 %74

; <label>:75:                                     ; preds = %56
  %76 = getelementptr inbounds %struct.poly, %struct.poly* %8, i64 0, i32 0, i64 %62
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds %struct.poly, %struct.poly* %10, i64 0, i32 0, i64 %62
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = icmp eq i32 %77, %79
  %81 = or i64 %64, 3
  br i1 %80, label %82, label %71

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds %struct.poly, %struct.poly* %8, i64 0, i32 0, i64 %81
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = getelementptr inbounds %struct.poly, %struct.poly* %10, i64 0, i32 0, i64 %81
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = icmp eq i32 %84, %86
  %88 = add nsw i64 %64, 4
  br i1 %87, label %89, label %71

; <label>:89:                                     ; preds = %82
  %90 = icmp ult i64 %88, 256
  br i1 %90, label %63, label %71
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign(i8*, i64* nocapture, i8*, i64, i8*) local_unnamed_addr #0 {
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %132, label %7

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i64 %3, 16
  br i1 %8, label %81, label %9

; <label>:9:                                      ; preds = %7
  %10 = and i64 %3, -16
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %81, label %12

; <label>:12:                                     ; preds = %9
  %13 = getelementptr i8, i8* %0, i64 2044
  %14 = add i64 %3, 2044
  %15 = getelementptr i8, i8* %0, i64 %14
  %16 = getelementptr i8, i8* %2, i64 %3
  %17 = icmp ult i8* %13, %16
  %18 = icmp ugt i8* %15, %2
  %19 = and i1 %17, %18
  br i1 %19, label %81, label %20

; <label>:20:                                     ; preds = %12
  %21 = add i64 %10, -16
  %22 = lshr exact i64 %21, 4
  %23 = add nuw nsw i64 %22, 1
  %24 = and i64 %23, 3
  %25 = icmp ult i64 %21, 48
  br i1 %25, label %62, label %26

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i64 %23, %24
  br label %28

; <label>:28:                                     ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %52, %28 ]
  %30 = phi i64 [ %27, %26 ], [ %59, %28 ]
  %31 = or i64 %29, 16
  %32 = getelementptr inbounds i8, i8* %2, i64 %29
  %33 = bitcast i8* %32 to <16 x i8>*
  %34 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !2, !alias.scope !37
  %35 = add i64 %29, 2044
  %36 = getelementptr inbounds i8, i8* %0, i64 %35
  %37 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %34, <16 x i8>* %37, align 1, !tbaa !2, !alias.scope !40, !noalias !37
  %38 = or i64 %29, 32
  %39 = getelementptr inbounds i8, i8* %2, i64 %31
  %40 = bitcast i8* %39 to <16 x i8>*
  %41 = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !2, !alias.scope !37
  %42 = add i64 %29, 2060
  %43 = getelementptr inbounds i8, i8* %0, i64 %42
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %41, <16 x i8>* %44, align 1, !tbaa !2, !alias.scope !40, !noalias !37
  %45 = or i64 %29, 48
  %46 = getelementptr inbounds i8, i8* %2, i64 %38
  %47 = bitcast i8* %46 to <16 x i8>*
  %48 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !2, !alias.scope !37
  %49 = add i64 %29, 2076
  %50 = getelementptr inbounds i8, i8* %0, i64 %49
  %51 = bitcast i8* %50 to <16 x i8>*
  store <16 x i8> %48, <16 x i8>* %51, align 1, !tbaa !2, !alias.scope !40, !noalias !37
  %52 = add i64 %29, 64
  %53 = getelementptr inbounds i8, i8* %2, i64 %45
  %54 = bitcast i8* %53 to <16 x i8>*
  %55 = load <16 x i8>, <16 x i8>* %54, align 1, !tbaa !2, !alias.scope !37
  %56 = add i64 %29, 2092
  %57 = getelementptr inbounds i8, i8* %0, i64 %56
  %58 = bitcast i8* %57 to <16 x i8>*
  store <16 x i8> %55, <16 x i8>* %58, align 1, !tbaa !2, !alias.scope !40, !noalias !37
  %59 = add i64 %30, -4
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %28, !llvm.loop !42

; <label>:61:                                     ; preds = %28
  br label %62

; <label>:62:                                     ; preds = %61, %20
  %63 = phi i64 [ 0, %20 ], [ %52, %61 ]
  %64 = icmp eq i64 %24, 0
  br i1 %64, label %79, label %65

; <label>:65:                                     ; preds = %62
  br label %66

; <label>:66:                                     ; preds = %66, %65
  %67 = phi i64 [ %69, %66 ], [ %63, %65 ]
  %68 = phi i64 [ %76, %66 ], [ %24, %65 ]
  %69 = add i64 %67, 16
  %70 = getelementptr inbounds i8, i8* %2, i64 %67
  %71 = bitcast i8* %70 to <16 x i8>*
  %72 = load <16 x i8>, <16 x i8>* %71, align 1, !tbaa !2, !alias.scope !37
  %73 = add i64 %67, 2044
  %74 = getelementptr inbounds i8, i8* %0, i64 %73
  %75 = bitcast i8* %74 to <16 x i8>*
  store <16 x i8> %72, <16 x i8>* %75, align 1, !tbaa !2, !alias.scope !40, !noalias !37
  %76 = add i64 %68, -1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %66, !llvm.loop !43

; <label>:78:                                     ; preds = %66
  br label %79

; <label>:79:                                     ; preds = %62, %78
  %80 = icmp eq i64 %10, %3
  br i1 %80, label %132, label %81

; <label>:81:                                     ; preds = %79, %12, %9, %7
  %82 = phi i64 [ 0, %12 ], [ 0, %9 ], [ 0, %7 ], [ %10, %79 ]
  %83 = sub i64 %3, %82
  %84 = add i64 %3, -1
  %85 = sub i64 %84, %82
  %86 = and i64 %83, 3
  %87 = icmp ult i64 %85, 3
  br i1 %87, label %116, label %88

; <label>:88:                                     ; preds = %81
  %89 = sub i64 %83, %86
  br label %90

; <label>:90:                                     ; preds = %90, %88
  %91 = phi i64 [ %82, %88 ], [ %112, %90 ]
  %92 = phi i64 [ %89, %88 ], [ %113, %90 ]
  %93 = getelementptr inbounds i8, i8* %2, i64 %91
  %94 = load i8, i8* %93, align 1, !tbaa !2
  %95 = add i64 %91, 2044
  %96 = getelementptr inbounds i8, i8* %0, i64 %95
  store i8 %94, i8* %96, align 1, !tbaa !2
  %97 = or i64 %91, 1
  %98 = getelementptr inbounds i8, i8* %2, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !2
  %100 = add i64 %91, 2045
  %101 = getelementptr inbounds i8, i8* %0, i64 %100
  store i8 %99, i8* %101, align 1, !tbaa !2
  %102 = or i64 %91, 2
  %103 = getelementptr inbounds i8, i8* %2, i64 %102
  %104 = load i8, i8* %103, align 1, !tbaa !2
  %105 = add i64 %91, 2046
  %106 = getelementptr inbounds i8, i8* %0, i64 %105
  store i8 %104, i8* %106, align 1, !tbaa !2
  %107 = or i64 %91, 3
  %108 = getelementptr inbounds i8, i8* %2, i64 %107
  %109 = load i8, i8* %108, align 1, !tbaa !2
  %110 = add i64 %91, 2047
  %111 = getelementptr inbounds i8, i8* %0, i64 %110
  store i8 %109, i8* %111, align 1, !tbaa !2
  %112 = add i64 %91, 4
  %113 = add i64 %92, -4
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %90, !llvm.loop !44

; <label>:115:                                    ; preds = %90
  br label %116

; <label>:116:                                    ; preds = %115, %81
  %117 = phi i64 [ %82, %81 ], [ %112, %115 ]
  %118 = icmp eq i64 %86, 0
  br i1 %118, label %131, label %119

; <label>:119:                                    ; preds = %116
  br label %120

; <label>:120:                                    ; preds = %120, %119
  %121 = phi i64 [ %127, %120 ], [ %117, %119 ]
  %122 = phi i64 [ %128, %120 ], [ %86, %119 ]
  %123 = getelementptr inbounds i8, i8* %2, i64 %121
  %124 = load i8, i8* %123, align 1, !tbaa !2
  %125 = add i64 %121, 2044
  %126 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 %124, i8* %126, align 1, !tbaa !2
  %127 = add nuw i64 %121, 1
  %128 = add i64 %122, -1
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %120, !llvm.loop !45

; <label>:130:                                    ; preds = %120
  br label %131

; <label>:131:                                    ; preds = %116, %130
  br label %132

; <label>:132:                                    ; preds = %131, %79, %5
  %133 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4)
  %134 = load i64, i64* %1, align 8, !tbaa !35
  %135 = add i64 %134, %3
  store i64 %135, i64* %1, align 8, !tbaa !35
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_open(i8* nocapture, i64* nocapture, i8*, i64, i8*) local_unnamed_addr #0 {
  %6 = icmp ult i64 %3, 2044
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %5
  %8 = add i64 %3, -2044
  store i64 %8, i64* %1, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, i8* %2, i64 2044
  %10 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(i8* %2, i64 2044, i8* %9, i64 %8, i8* %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %7
  store i64 -1, i64* %1, align 8, !tbaa !35
  br label %28

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %1, align 8, !tbaa !35
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %30, label %16

; <label>:16:                                     ; preds = %13
  br label %17

; <label>:17:                                     ; preds = %16, %17
  %18 = phi i64 [ %23, %17 ], [ 0, %16 ]
  %19 = add i64 %18, 2044
  %20 = getelementptr inbounds i8, i8* %2, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !2
  %22 = getelementptr inbounds i8, i8* %0, i64 %18
  store i8 %21, i8* %22, align 1, !tbaa !2
  %23 = add i64 %18, 1
  %24 = load i64, i64* %1, align 8, !tbaa !35
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %17, label %29

; <label>:26:                                     ; preds = %5
  store i64 -1, i64* %1, align 8, !tbaa !35
  %27 = icmp eq i64 %3, 0
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %12, %26
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %3, i32 1, i1 false)
  br label %30

; <label>:29:                                     ; preds = %17
  br label %30

; <label>:30:                                     ; preds = %29, %28, %13, %26
  %31 = phi i32 [ -1, %26 ], [ 0, %13 ], [ -1, %28 ], [ 0, %29 ]
  ret i32 %31
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readnone ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
!1 = !{i32 1, !"PIC Level", i32 2}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8}
!8 = distinct !{!8, !9}
!9 = distinct !{!9, !"LVerDomain"}
!10 = !{!11}
!11 = distinct !{!11, !9}
!12 = !{!13}
!13 = distinct !{!13, !9}
!14 = !{!8, !11}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.vectorize.width", i32 1}
!17 = !{!"llvm.loop.interleave.count", i32 1}
!18 = distinct !{!18, !16, !17}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!25}
!25 = distinct !{!25, !21}
!26 = !{!20, !23}
!27 = distinct !{!27, !16, !17}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !16, !17}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !31}
!33 = !{i64 0, i64 3072, !2}
!34 = !{i64 0, i64 1024, !2}
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !3, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !16, !17}
!43 = distinct !{!43, !31}
!44 = distinct !{!44, !16, !17}
!45 = distinct !{!45, !31}
