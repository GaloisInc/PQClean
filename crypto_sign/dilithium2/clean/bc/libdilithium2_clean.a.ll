; ModuleID = 'libdilithium2_clean.a.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.polyveck = type { [4 x %struct.poly] }
%struct.poly = type { [256 x i32] }
%struct.polyvecl = type { [3 x %struct.poly] }
%struct.shake128ctx = type { [25 x i64] }
%struct.shake256incctx = type { [26 x i64] }

@zetas = internal unnamed_addr constant [256 x i32] [i32 0, i32 25847, i32 5771523, i32 7861508, i32 237124, i32 7602457, i32 7504169, i32 466468, i32 1826347, i32 2353451, i32 8021166, i32 6288512, i32 3119733, i32 5495562, i32 3111497, i32 2680103, i32 2725464, i32 1024112, i32 7300517, i32 3585928, i32 7830929, i32 7260833, i32 2619752, i32 6271868, i32 6262231, i32 4520680, i32 6980856, i32 5102745, i32 1757237, i32 8360995, i32 4010497, i32 280005, i32 2706023, i32 95776, i32 3077325, i32 3530437, i32 6718724, i32 4788269, i32 5842901, i32 3915439, i32 4519302, i32 5336701, i32 3574422, i32 5512770, i32 3539968, i32 8079950, i32 2348700, i32 7841118, i32 6681150, i32 6736599, i32 3505694, i32 4558682, i32 3507263, i32 6239768, i32 6779997, i32 3699596, i32 811944, i32 531354, i32 954230, i32 3881043, i32 3900724, i32 5823537, i32 2071892, i32 5582638, i32 4450022, i32 6851714, i32 4702672, i32 5339162, i32 6927966, i32 3475950, i32 2176455, i32 6795196, i32 7122806, i32 1939314, i32 4296819, i32 7380215, i32 5190273, i32 5223087, i32 4747489, i32 126922, i32 3412210, i32 7396998, i32 2147896, i32 2715295, i32 5412772, i32 4686924, i32 7969390, i32 5903370, i32 7709315, i32 7151892, i32 8357436, i32 7072248, i32 7998430, i32 1349076, i32 1852771, i32 6949987, i32 5037034, i32 264944, i32 508951, i32 3097992, i32 44288, i32 7280319, i32 904516, i32 3958618, i32 4656075, i32 8371839, i32 1653064, i32 5130689, i32 2389356, i32 8169440, i32 759969, i32 7063561, i32 189548, i32 4827145, i32 3159746, i32 6529015, i32 5971092, i32 8202977, i32 1315589, i32 1341330, i32 1285669, i32 6795489, i32 7567685, i32 6940675, i32 5361315, i32 4499357, i32 4751448, i32 3839961, i32 2091667, i32 3407706, i32 2316500, i32 3817976, i32 5037939, i32 2244091, i32 5933984, i32 4817955, i32 266997, i32 2434439, i32 7144689, i32 3513181, i32 4860065, i32 4621053, i32 7183191, i32 5187039, i32 900702, i32 1859098, i32 909542, i32 819034, i32 495491, i32 6767243, i32 8337157, i32 7857917, i32 7725090, i32 5257975, i32 2031748, i32 3207046, i32 4823422, i32 7855319, i32 7611795, i32 4784579, i32 342297, i32 286988, i32 5942594, i32 4108315, i32 3437287, i32 5038140, i32 1735879, i32 203044, i32 2842341, i32 2691481, i32 5790267, i32 1265009, i32 4055324, i32 1247620, i32 2486353, i32 1595974, i32 4613401, i32 1250494, i32 2635921, i32 4832145, i32 5386378, i32 1869119, i32 1903435, i32 7329447, i32 7047359, i32 1237275, i32 5062207, i32 6950192, i32 7929317, i32 1312455, i32 3306115, i32 6417775, i32 7100756, i32 1917081, i32 5834105, i32 7005614, i32 1500165, i32 777191, i32 2235880, i32 3406031, i32 7838005, i32 5548557, i32 6709241, i32 6533464, i32 5796124, i32 4656147, i32 594136, i32 4603424, i32 6366809, i32 2432395, i32 2454455, i32 8215696, i32 1957272, i32 3369112, i32 185531, i32 7173032, i32 5196991, i32 162844, i32 1616392, i32 3014001, i32 810149, i32 1652634, i32 4686184, i32 6581310, i32 5341501, i32 3523897, i32 3866901, i32 269760, i32 2213111, i32 7404533, i32 1717735, i32 472078, i32 7953734, i32 1723600, i32 6577327, i32 1910376, i32 6712985, i32 7276084, i32 8119771, i32 4546524, i32 5441381, i32 6144432, i32 7959518, i32 6094090, i32 183443, i32 7403526, i32 1612842, i32 4834730, i32 7826001, i32 3919660, i32 8332111, i32 7018208, i32 3937738, i32 1400424, i32 7534263, i32 1976782], align 16, !dbg !0
@zetas_inv = internal unnamed_addr constant [256 x i32] [i32 6403635, i32 846154, i32 6979993, i32 4442679, i32 1362209, i32 48306, i32 4460757, i32 554416, i32 3545687, i32 6767575, i32 976891, i32 8196974, i32 2286327, i32 420899, i32 2235985, i32 2939036, i32 3833893, i32 260646, i32 1104333, i32 1667432, i32 6470041, i32 1803090, i32 6656817, i32 426683, i32 7908339, i32 6662682, i32 975884, i32 6167306, i32 8110657, i32 4513516, i32 4856520, i32 3038916, i32 1799107, i32 3694233, i32 6727783, i32 7570268, i32 5366416, i32 6764025, i32 8217573, i32 3183426, i32 1207385, i32 8194886, i32 5011305, i32 6423145, i32 164721, i32 5925962, i32 5948022, i32 2013608, i32 3776993, i32 7786281, i32 3724270, i32 2584293, i32 1846953, i32 1671176, i32 2831860, i32 542412, i32 4974386, i32 6144537, i32 7603226, i32 6880252, i32 1374803, i32 2546312, i32 6463336, i32 1279661, i32 1962642, i32 5074302, i32 7067962, i32 451100, i32 1430225, i32 3318210, i32 7143142, i32 1333058, i32 1050970, i32 6476982, i32 6511298, i32 2994039, i32 3548272, i32 5744496, i32 7129923, i32 3767016, i32 6784443, i32 5894064, i32 7132797, i32 4325093, i32 7115408, i32 2590150, i32 5688936, i32 5538076, i32 8177373, i32 6644538, i32 3342277, i32 4943130, i32 4272102, i32 2437823, i32 8093429, i32 8038120, i32 3595838, i32 768622, i32 525098, i32 3556995, i32 5173371, i32 6348669, i32 3122442, i32 655327, i32 522500, i32 43260, i32 1613174, i32 7884926, i32 7561383, i32 7470875, i32 6521319, i32 7479715, i32 3193378, i32 1197226, i32 3759364, i32 3520352, i32 4867236, i32 1235728, i32 5945978, i32 8113420, i32 3562462, i32 2446433, i32 6136326, i32 3342478, i32 4562441, i32 6063917, i32 4972711, i32 6288750, i32 4540456, i32 3628969, i32 3881060, i32 3019102, i32 1439742, i32 812732, i32 1584928, i32 7094748, i32 7039087, i32 7064828, i32 177440, i32 2409325, i32 1851402, i32 5220671, i32 3553272, i32 8190869, i32 1316856, i32 7620448, i32 210977, i32 5991061, i32 3249728, i32 6727353, i32 8578, i32 3724342, i32 4421799, i32 7475901, i32 1100098, i32 8336129, i32 5282425, i32 7871466, i32 8115473, i32 3343383, i32 1430430, i32 6527646, i32 7031341, i32 381987, i32 1308169, i32 22981, i32 1228525, i32 671102, i32 2477047, i32 411027, i32 3693493, i32 2967645, i32 5665122, i32 6232521, i32 983419, i32 4968207, i32 8253495, i32 3632928, i32 3157330, i32 3190144, i32 1000202, i32 4083598, i32 6441103, i32 1257611, i32 1585221, i32 6203962, i32 4904467, i32 1452451, i32 3041255, i32 3677745, i32 1528703, i32 3930395, i32 2797779, i32 6308525, i32 2556880, i32 4479693, i32 4499374, i32 7426187, i32 7849063, i32 7568473, i32 4680821, i32 1600420, i32 2140649, i32 4873154, i32 3821735, i32 4874723, i32 1643818, i32 1699267, i32 539299, i32 6031717, i32 300467, i32 4840449, i32 2867647, i32 4805995, i32 3043716, i32 3861115, i32 4464978, i32 2537516, i32 3592148, i32 1661693, i32 4849980, i32 5303092, i32 8284641, i32 5674394, i32 8100412, i32 4369920, i32 19422, i32 6623180, i32 3277672, i32 1399561, i32 3859737, i32 2118186, i32 2108549, i32 5760665, i32 1119584, i32 549488, i32 4794489, i32 1079900, i32 7356305, i32 5654953, i32 5700314, i32 5268920, i32 2884855, i32 5260684, i32 2091905, i32 359251, i32 6026966, i32 6554070, i32 7913949, i32 876248, i32 777960, i32 8143293, i32 518909, i32 2608894, i32 8354570, i32 0], align 16, !dbg !10

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_ntt(i32* nocapture) local_unnamed_addr #0 !dbg !56 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !61, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 1, metadata !65, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32 128, metadata !62, metadata !DIExpression()), !dbg !70
  br label %2, !dbg !71

2:                                                ; preds = %1, %43
  %3 = phi i32 [ 128, %1 ], [ %44, %43 ]
  %4 = phi i32 [ 1, %1 ], [ %8, %43 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !62, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i32 %4, metadata !65, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 %4, metadata !65, metadata !DIExpression()), !dbg !69
  br label %5, !dbg !74

5:                                                ; preds = %2, %39
  %6 = phi i32 [ 0, %2 ], [ %41, %39 ]
  %7 = phi i32 [ %4, %2 ], [ %8, %39 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !63, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 %7, metadata !65, metadata !DIExpression()), !dbg !69
  %8 = add i32 %7, 1, !dbg !78
  call void @llvm.dbg.value(metadata i32 %6, metadata !64, metadata !DIExpression()), !dbg !81
  %9 = add i32 %6, %3, !dbg !82
  %10 = icmp ult i32 %6, %9, !dbg !85
  br i1 %10, label %11, label %39, !dbg !86

11:                                               ; preds = %5
  %12 = zext i32 %7 to i64, !dbg !87
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* @zetas, i64 0, i64 %12, !dbg !87
  %14 = load i32, i32* %13, align 4, !dbg !87, !tbaa !88
  call void @llvm.dbg.value(metadata i32 %14, metadata !66, metadata !DIExpression()), !dbg !92
  %15 = zext i32 %14 to i64, !dbg !93
  %16 = zext i32 %6 to i64, !dbg !86
  %17 = add i32 %3, %6, !dbg !86
  %18 = zext i32 %17 to i64, !dbg !95
  br label %19, !dbg !86

19:                                               ; preds = %19, %11
  %20 = phi i64 [ %16, %11 ], [ %35, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !64, metadata !DIExpression()), !dbg !81
  %21 = trunc i64 %20 to i32, !dbg !96
  %22 = add i32 %3, %21, !dbg !96
  %23 = zext i32 %22 to i64, !dbg !97
  %24 = getelementptr inbounds i32, i32* %0, i64 %23, !dbg !97
  %25 = load i32, i32* %24, align 4, !dbg !97, !tbaa !88
  %26 = zext i32 %25 to i64, !dbg !97
  %27 = mul nuw i64 %26, %15, !dbg !98
  %28 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %27) #9, !dbg !99
  call void @llvm.dbg.value(metadata i32 %28, metadata !67, metadata !DIExpression()), !dbg !100
  %29 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !101
  %30 = load i32, i32* %29, align 4, !dbg !101, !tbaa !88
  %31 = sub i32 16760834, %28, !dbg !102
  %32 = add i32 %31, %30, !dbg !103
  store i32 %32, i32* %24, align 4, !dbg !104, !tbaa !88
  %33 = load i32, i32* %29, align 4, !dbg !105, !tbaa !88
  %34 = add i32 %33, %28, !dbg !106
  store i32 %34, i32* %29, align 4, !dbg !107, !tbaa !88
  %35 = add nuw nsw i64 %20, 1, !dbg !108
  call void @llvm.dbg.value(metadata i32 undef, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  %36 = icmp eq i64 %35, %18, !dbg !85
  br i1 %36, label %37, label %19, !dbg !86, !llvm.loop !109

37:                                               ; preds = %19
  %38 = trunc i64 %35 to i32, !dbg !111
  br label %39, !dbg !111

39:                                               ; preds = %37, %5
  %40 = phi i32 [ %6, %5 ], [ %38, %37 ], !dbg !112
  call void @llvm.dbg.value(metadata i32 %40, metadata !64, metadata !DIExpression()), !dbg !81
  %41 = add i32 %40, %3, !dbg !111
  call void @llvm.dbg.value(metadata i32 %41, metadata !63, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 %8, metadata !65, metadata !DIExpression()), !dbg !69
  %42 = icmp ult i32 %41, 256, !dbg !113
  br i1 %42, label %5, label %43, !dbg !74, !llvm.loop !114

43:                                               ; preds = %39
  %44 = lshr i32 %3, 1, !dbg !116
  call void @llvm.dbg.value(metadata i32 %44, metadata !62, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i32 %8, metadata !65, metadata !DIExpression()), !dbg !69
  %45 = icmp eq i32 %44, 0, !dbg !117
  br i1 %45, label %46, label %2, !dbg !71, !llvm.loop !118

46:                                               ; preds = %43
  ret void, !dbg !120
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont(i32* nocapture) local_unnamed_addr #0 !dbg !121 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !123, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 41978, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32 1, metadata !125, metadata !DIExpression()), !dbg !134
  br label %2, !dbg !135

2:                                                ; preds = %1, %43
  %3 = phi i32 [ 1, %1 ], [ %44, %43 ]
  %4 = phi i32 [ 0, %1 ], [ %8, %43 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !125, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 %4, metadata !127, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %4, metadata !127, metadata !DIExpression()), !dbg !133
  br label %5, !dbg !138

5:                                                ; preds = %2, %39
  %6 = phi i32 [ 0, %2 ], [ %41, %39 ]
  %7 = phi i32 [ %4, %2 ], [ %8, %39 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !124, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %7, metadata !127, metadata !DIExpression()), !dbg !133
  %8 = add i32 %7, 1, !dbg !142
  call void @llvm.dbg.value(metadata i32 %6, metadata !126, metadata !DIExpression()), !dbg !145
  %9 = add i32 %6, %3, !dbg !146
  %10 = icmp ult i32 %6, %9, !dbg !149
  br i1 %10, label %11, label %39, !dbg !150

11:                                               ; preds = %5
  %12 = zext i32 %7 to i64, !dbg !151
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* @zetas_inv, i64 0, i64 %12, !dbg !151
  %14 = load i32, i32* %13, align 4, !dbg !151, !tbaa !88
  call void @llvm.dbg.value(metadata i32 %14, metadata !129, metadata !DIExpression()), !dbg !152
  %15 = zext i32 %14 to i64, !dbg !153
  %16 = zext i32 %6 to i64, !dbg !150
  %17 = add i32 %3, %6, !dbg !150
  %18 = zext i32 %17 to i64, !dbg !155
  br label %19, !dbg !150

19:                                               ; preds = %19, %11
  %20 = phi i64 [ %16, %11 ], [ %35, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !126, metadata !DIExpression()), !dbg !145
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !156
  %22 = load i32, i32* %21, align 4, !dbg !156, !tbaa !88
  call void @llvm.dbg.value(metadata i32 %22, metadata !128, metadata !DIExpression()), !dbg !157
  %23 = trunc i64 %20 to i32, !dbg !158
  %24 = add i32 %3, %23, !dbg !158
  %25 = zext i32 %24 to i64, !dbg !159
  %26 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !159
  %27 = load i32, i32* %26, align 4, !dbg !159, !tbaa !88
  %28 = add i32 %27, %22, !dbg !160
  store i32 %28, i32* %21, align 4, !dbg !161, !tbaa !88
  %29 = add i32 %22, 2145386752, !dbg !162
  %30 = load i32, i32* %26, align 4, !dbg !163, !tbaa !88
  %31 = sub i32 %29, %30, !dbg !164
  store i32 %31, i32* %26, align 4, !dbg !165, !tbaa !88
  %32 = zext i32 %31 to i64, !dbg !166
  %33 = mul nuw i64 %32, %15, !dbg !167
  %34 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %33) #9, !dbg !168
  store i32 %34, i32* %26, align 4, !dbg !169, !tbaa !88
  %35 = add nuw nsw i64 %20, 1, !dbg !170
  call void @llvm.dbg.value(metadata i32 undef, metadata !126, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !145
  %36 = icmp eq i64 %35, %18, !dbg !149
  br i1 %36, label %37, label %19, !dbg !150, !llvm.loop !171

37:                                               ; preds = %19
  %38 = trunc i64 %35 to i32, !dbg !173
  br label %39, !dbg !173

39:                                               ; preds = %37, %5
  %40 = phi i32 [ %6, %5 ], [ %38, %37 ], !dbg !174
  call void @llvm.dbg.value(metadata i32 %40, metadata !126, metadata !DIExpression()), !dbg !145
  %41 = add i32 %40, %3, !dbg !173
  call void @llvm.dbg.value(metadata i32 %41, metadata !124, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !133
  %42 = icmp ult i32 %41, 256, !dbg !175
  br i1 %42, label %5, label %43, !dbg !138, !llvm.loop !176

43:                                               ; preds = %39
  %44 = shl i32 %3, 1, !dbg !178
  call void @llvm.dbg.value(metadata i32 %44, metadata !125, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !133
  %45 = icmp ult i32 %44, 256, !dbg !179
  br i1 %45, label %2, label %46, !dbg !135, !llvm.loop !180

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %53, %46 ], [ 0, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !126, metadata !DIExpression()), !dbg !145
  %48 = getelementptr inbounds i32, i32* %0, i64 %47, !dbg !182
  %49 = load i32, i32* %48, align 4, !dbg !182, !tbaa !88
  %50 = zext i32 %49 to i64, !dbg !182
  %51 = mul nuw nsw i64 %50, 41978, !dbg !186
  %52 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %51) #9, !dbg !187
  store i32 %52, i32* %48, align 4, !dbg !188, !tbaa !88
  %53 = add nuw nsw i64 %47, 1, !dbg !189
  call void @llvm.dbg.value(metadata i32 undef, metadata !126, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !145
  %54 = icmp eq i64 %53, 256, !dbg !190
  br i1 %54, label %55, label %46, !dbg !191, !llvm.loop !192

55:                                               ; preds = %46
  ret void, !dbg !194
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_pk(i8*, i8* nocapture readonly, %struct.polyveck*) local_unnamed_addr #0 !dbg !195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i8* %1, metadata !219, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !220, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !225
  br label %4, !dbg !226

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !221, metadata !DIExpression()), !dbg !225
  %6 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !228
  %7 = load i8, i8* %6, align 1, !dbg !228, !tbaa !231
  %8 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !232
  store i8 %7, i8* %8, align 1, !dbg !233, !tbaa !231
  %9 = add nuw nsw i64 %5, 1, !dbg !234
  call void @llvm.dbg.value(metadata i32 undef, metadata !221, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !225
  %10 = icmp eq i64 %9, 32, !dbg !235
  br i1 %10, label %11, label %4, !dbg !226, !llvm.loop !236

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !238
  call void @llvm.dbg.value(metadata i8* %12, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !225
  br label %13, !dbg !239

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !221, metadata !DIExpression()), !dbg !225
  %15 = mul nuw nsw i64 %14, 288, !dbg !241
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !244
  %17 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %14, !dbg !245
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* nonnull %16, %struct.poly* %17) #9, !dbg !246
  %18 = add nuw nsw i64 %14, 1, !dbg !247
  call void @llvm.dbg.value(metadata i32 undef, metadata !221, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !225
  %19 = icmp eq i64 %18, 4, !dbg !248
  br i1 %19, label %20, label %13, !dbg !239, !llvm.loop !249

20:                                               ; preds = %13
  ret void, !dbg !251
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(i8* nocapture, %struct.polyveck*, i8*) local_unnamed_addr #0 !dbg !252 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !257, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !258, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata i8* %2, metadata !259, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !260, metadata !DIExpression()), !dbg !264
  br label %4, !dbg !265

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !260, metadata !DIExpression()), !dbg !264
  %6 = getelementptr inbounds i8, i8* %2, i64 %5, !dbg !267
  %7 = load i8, i8* %6, align 1, !dbg !267, !tbaa !231
  %8 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !270
  store i8 %7, i8* %8, align 1, !dbg !271, !tbaa !231
  %9 = add nuw nsw i64 %5, 1, !dbg !272
  call void @llvm.dbg.value(metadata i32 undef, metadata !260, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !264
  %10 = icmp eq i64 %9, 32, !dbg !273
  br i1 %10, label %11, label %4, !dbg !265, !llvm.loop !274

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !276
  call void @llvm.dbg.value(metadata i8* %12, metadata !259, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !260, metadata !DIExpression()), !dbg !264
  br label %13, !dbg !277

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !260, metadata !DIExpression()), !dbg !264
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %14, !dbg !279
  %16 = mul nuw nsw i64 %14, 288, !dbg !282
  %17 = getelementptr inbounds i8, i8* %12, i64 %16, !dbg !283
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* %15, i8* nonnull %17) #9, !dbg !284
  %18 = add nuw nsw i64 %14, 1, !dbg !285
  call void @llvm.dbg.value(metadata i32 undef, metadata !260, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !264
  %19 = icmp eq i64 %18, 4, !dbg !286
  br i1 %19, label %20, label %13, !dbg !277, !llvm.loop !287

20:                                               ; preds = %13
  ret void, !dbg !289
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_sk(i8*, i8* nocapture readonly, i8* nocapture readonly, i8* nocapture readonly, %struct.polyvecl*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !303, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i8* %1, metadata !304, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i8* %2, metadata !305, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i8* %3, metadata !306, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata %struct.polyvecl* %4, metadata !307, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata %struct.polyveck* %5, metadata !308, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata %struct.polyveck* %6, metadata !309, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !318
  br label %8, !dbg !319

8:                                                ; preds = %8, %7
  %9 = phi i64 [ 0, %7 ], [ %13, %8 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !310, metadata !DIExpression()), !dbg !318
  %10 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !321
  %11 = load i8, i8* %10, align 1, !dbg !321, !tbaa !231
  %12 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !324
  store i8 %11, i8* %12, align 1, !dbg !325, !tbaa !231
  %13 = add nuw nsw i64 %9, 1, !dbg !326
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  %14 = icmp eq i64 %13, 32, !dbg !327
  br i1 %14, label %15, label %8, !dbg !319, !llvm.loop !328

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !330
  call void @llvm.dbg.value(metadata i8* %16, metadata !303, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !318
  br label %17, !dbg !331

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %22, %17 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !310, metadata !DIExpression()), !dbg !318
  %19 = getelementptr inbounds i8, i8* %2, i64 %18, !dbg !333
  %20 = load i8, i8* %19, align 1, !dbg !333, !tbaa !231
  %21 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !336
  store i8 %20, i8* %21, align 1, !dbg !337, !tbaa !231
  %22 = add nuw nsw i64 %18, 1, !dbg !338
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  %23 = icmp eq i64 %22, 32, !dbg !339
  br i1 %23, label %24, label %17, !dbg !331, !llvm.loop !340

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %0, i64 64, !dbg !342
  call void @llvm.dbg.value(metadata i8* %25, metadata !303, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !318
  br label %26, !dbg !343

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %31, %26 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !310, metadata !DIExpression()), !dbg !318
  %28 = getelementptr inbounds i8, i8* %3, i64 %27, !dbg !345
  %29 = load i8, i8* %28, align 1, !dbg !345, !tbaa !231
  %30 = getelementptr inbounds i8, i8* %25, i64 %27, !dbg !348
  store i8 %29, i8* %30, align 1, !dbg !349, !tbaa !231
  %31 = add nuw nsw i64 %27, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  %32 = icmp eq i64 %31, 48, !dbg !351
  br i1 %32, label %33, label %26, !dbg !343, !llvm.loop !352

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !354
  call void @llvm.dbg.value(metadata i8* %34, metadata !303, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !318
  br label %35, !dbg !355

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %40, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !310, metadata !DIExpression()), !dbg !318
  %37 = shl i64 %36, 7, !dbg !357
  %38 = getelementptr inbounds i8, i8* %34, i64 %37, !dbg !360
  %39 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %4, i64 0, i32 0, i64 %36, !dbg !361
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* nonnull %38, %struct.poly* %39) #9, !dbg !362
  %40 = add nuw nsw i64 %36, 1, !dbg !363
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  %41 = icmp eq i64 %40, 3, !dbg !364
  br i1 %41, label %42, label %35, !dbg !355, !llvm.loop !365

42:                                               ; preds = %35
  %43 = getelementptr inbounds i8, i8* %0, i64 496, !dbg !367
  call void @llvm.dbg.value(metadata i8* %43, metadata !303, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !318
  br label %44, !dbg !368

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %49, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !310, metadata !DIExpression()), !dbg !318
  %46 = shl i64 %45, 7, !dbg !370
  %47 = getelementptr inbounds i8, i8* %43, i64 %46, !dbg !373
  %48 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 %45, !dbg !374
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* nonnull %47, %struct.poly* %48) #9, !dbg !375
  %49 = add nuw nsw i64 %45, 1, !dbg !376
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  %50 = icmp eq i64 %49, 4, !dbg !377
  br i1 %50, label %51, label %44, !dbg !368, !llvm.loop !378

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, i8* %0, i64 1008, !dbg !380
  call void @llvm.dbg.value(metadata i8* %52, metadata !303, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !318
  br label %53, !dbg !381

53:                                               ; preds = %53, %51
  %54 = phi i64 [ 0, %51 ], [ %58, %53 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !310, metadata !DIExpression()), !dbg !318
  %55 = mul nuw nsw i64 %54, 448, !dbg !383
  %56 = getelementptr inbounds i8, i8* %52, i64 %55, !dbg !386
  %57 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %6, i64 0, i32 0, i64 %54, !dbg !387
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* nonnull %56, %struct.poly* %57) #9, !dbg !388
  %58 = add nuw nsw i64 %54, 1, !dbg !389
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  %59 = icmp eq i64 %58, 4, !dbg !390
  br i1 %59, label %60, label %53, !dbg !381, !llvm.loop !391

60:                                               ; preds = %53
  ret void, !dbg !393
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(i8* nocapture, i8* nocapture, i8* nocapture, %struct.polyvecl*, %struct.polyveck*, %struct.polyveck*, i8*) local_unnamed_addr #0 !dbg !394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !399, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i8* %1, metadata !400, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %2, metadata !401, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata %struct.polyvecl* %3, metadata !402, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata %struct.polyveck* %4, metadata !403, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata %struct.polyveck* %5, metadata !404, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i8* %6, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !414
  br label %8, !dbg !415

8:                                                ; preds = %8, %7
  %9 = phi i64 [ 0, %7 ], [ %13, %8 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !406, metadata !DIExpression()), !dbg !414
  %10 = getelementptr inbounds i8, i8* %6, i64 %9, !dbg !417
  %11 = load i8, i8* %10, align 1, !dbg !417, !tbaa !231
  %12 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !420
  store i8 %11, i8* %12, align 1, !dbg !421, !tbaa !231
  %13 = add nuw nsw i64 %9, 1, !dbg !422
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !414
  %14 = icmp eq i64 %13, 32, !dbg !423
  br i1 %14, label %15, label %8, !dbg !415, !llvm.loop !424

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, i8* %6, i64 32, !dbg !426
  call void @llvm.dbg.value(metadata i8* %16, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !414
  br label %17, !dbg !427

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %22, %17 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()), !dbg !414
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !429
  %20 = load i8, i8* %19, align 1, !dbg !429, !tbaa !231
  %21 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !432
  store i8 %20, i8* %21, align 1, !dbg !433, !tbaa !231
  %22 = add nuw nsw i64 %18, 1, !dbg !434
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !414
  %23 = icmp eq i64 %22, 32, !dbg !435
  br i1 %23, label %24, label %17, !dbg !427, !llvm.loop !436

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %6, i64 64, !dbg !438
  call void @llvm.dbg.value(metadata i8* %25, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !414
  br label %26, !dbg !439

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %31, %26 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !414
  %28 = getelementptr inbounds i8, i8* %25, i64 %27, !dbg !441
  %29 = load i8, i8* %28, align 1, !dbg !441, !tbaa !231
  %30 = getelementptr inbounds i8, i8* %2, i64 %27, !dbg !444
  store i8 %29, i8* %30, align 1, !dbg !445, !tbaa !231
  %31 = add nuw nsw i64 %27, 1, !dbg !446
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !414
  %32 = icmp eq i64 %31, 48, !dbg !447
  br i1 %32, label %33, label %26, !dbg !439, !llvm.loop !448

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %6, i64 112, !dbg !450
  call void @llvm.dbg.value(metadata i8* %34, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !414
  br label %35, !dbg !451

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %40, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !406, metadata !DIExpression()), !dbg !414
  %37 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %3, i64 0, i32 0, i64 %36, !dbg !453
  %38 = shl i64 %36, 7, !dbg !456
  %39 = getelementptr inbounds i8, i8* %34, i64 %38, !dbg !457
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %37, i8* nonnull %39) #9, !dbg !458
  %40 = add nuw nsw i64 %36, 1, !dbg !459
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !414
  %41 = icmp eq i64 %40, 3, !dbg !460
  br i1 %41, label %42, label %35, !dbg !451, !llvm.loop !461

42:                                               ; preds = %35
  %43 = getelementptr inbounds i8, i8* %6, i64 496, !dbg !463
  call void @llvm.dbg.value(metadata i8* %43, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !414
  br label %44, !dbg !464

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %49, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !406, metadata !DIExpression()), !dbg !414
  %46 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %4, i64 0, i32 0, i64 %45, !dbg !466
  %47 = shl i64 %45, 7, !dbg !469
  %48 = getelementptr inbounds i8, i8* %43, i64 %47, !dbg !470
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %46, i8* nonnull %48) #9, !dbg !471
  %49 = add nuw nsw i64 %45, 1, !dbg !472
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !414
  %50 = icmp eq i64 %49, 4, !dbg !473
  br i1 %50, label %51, label %44, !dbg !464, !llvm.loop !474

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, i8* %6, i64 1008, !dbg !476
  call void @llvm.dbg.value(metadata i8* %52, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !414
  br label %53, !dbg !477

53:                                               ; preds = %53, %51
  %54 = phi i64 [ 0, %51 ], [ %58, %53 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !406, metadata !DIExpression()), !dbg !414
  %55 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %5, i64 0, i32 0, i64 %54, !dbg !479
  %56 = mul nuw nsw i64 %54, 448, !dbg !482
  %57 = getelementptr inbounds i8, i8* %52, i64 %56, !dbg !483
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* %55, i8* nonnull %57) #9, !dbg !484
  %58 = add nuw nsw i64 %54, 1, !dbg !485
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !414
  %59 = icmp eq i64 %58, 4, !dbg !486
  br i1 %59, label %60, label %53, !dbg !477, !llvm.loop !487

60:                                               ; preds = %53
  ret void, !dbg !489
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_sig(i8*, %struct.polyvecl*, %struct.polyveck* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 !dbg !490 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata %struct.polyvecl* %1, metadata !497, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !498, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata %struct.poly* %3, metadata !499, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  br label %5, !dbg !510

5:                                                ; preds = %5, %4
  %6 = phi i64 [ 0, %4 ], [ %10, %5 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !500, metadata !DIExpression()), !dbg !509
  %7 = mul nuw nsw i64 %6, 640, !dbg !512
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !515
  %9 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 %6, !dbg !516
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* %8, %struct.poly* %9) #9, !dbg !517
  %10 = add nuw nsw i64 %6, 1, !dbg !518
  call void @llvm.dbg.value(metadata i32 undef, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !509
  %11 = icmp eq i64 %10, 3, !dbg !519
  br i1 %11, label %12, label %5, !dbg !510, !llvm.loop !520

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, i8* %0, i64 1920, !dbg !522
  call void @llvm.dbg.value(metadata i8* %13, metadata !496, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 0, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  br label %14, !dbg !524

14:                                               ; preds = %36, %12
  %15 = phi i64 [ 0, %12 ], [ %40, %36 ]
  %16 = phi i32 [ 0, %12 ], [ %32, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i64 %15, metadata !500, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 %16, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !526
  br label %19, !dbg !527

17:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  %18 = icmp ult i32 %32, 80, !dbg !531
  br i1 %18, label %42, label %49, !dbg !532

19:                                               ; preds = %31, %14
  %20 = phi i64 [ 0, %14 ], [ %33, %31 ]
  %21 = phi i32 [ %16, %14 ], [ %32, %31 ]
  %22 = phi i32 [ 0, %14 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i32 %21, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i64 %20, metadata !501, metadata !DIExpression()), !dbg !526
  %23 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %15, i32 0, i64 %20, !dbg !533
  %24 = load i32, i32* %23, align 4, !dbg !533, !tbaa !88
  %25 = icmp eq i32 %24, 0, !dbg !537
  br i1 %25, label %31, label %26, !dbg !538

26:                                               ; preds = %19
  %27 = trunc i32 %22 to i8, !dbg !539
  %28 = add i32 %21, 1, !dbg !541
  call void @llvm.dbg.value(metadata i32 %28, metadata !502, metadata !DIExpression()), !dbg !523
  %29 = zext i32 %21 to i64, !dbg !542
  %30 = getelementptr inbounds i8, i8* %13, i64 %29, !dbg !542
  store i8 %27, i8* %30, align 1, !dbg !543, !tbaa !231
  br label %31, !dbg !544

31:                                               ; preds = %19, %26
  %32 = phi i32 [ %28, %26 ], [ %21, %19 ], !dbg !545
  %33 = add nuw nsw i64 %20, 1, !dbg !546
  %34 = add nuw nsw i32 %22, 1, !dbg !546
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %34, metadata !501, metadata !DIExpression()), !dbg !526
  %35 = icmp eq i64 %33, 256, !dbg !547
  br i1 %35, label %36, label %19, !dbg !527, !llvm.loop !548

36:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  %37 = trunc i32 %32 to i8, !dbg !550
  %38 = add nuw nsw i64 %15, 80, !dbg !551
  %39 = getelementptr inbounds i8, i8* %13, i64 %38, !dbg !552
  store i8 %37, i8* %39, align 1, !dbg !553, !tbaa !231
  %40 = add nuw nsw i64 %15, 1, !dbg !554
  call void @llvm.dbg.value(metadata i32 %32, metadata !502, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 undef, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !509
  %41 = icmp eq i64 %40, 4, !dbg !555
  br i1 %41, label %17, label %14, !dbg !524, !llvm.loop !556

42:                                               ; preds = %17
  %43 = zext i32 %32 to i64, !dbg !558
  %44 = add nuw nsw i64 %43, 1920, !dbg !558
  %45 = getelementptr i8, i8* %0, i64 %44, !dbg !558
  %46 = sub i32 79, %32, !dbg !558
  %47 = zext i32 %46 to i64, !dbg !558
  %48 = add nuw nsw i64 %47, 1, !dbg !558
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 %48, i1 false), !dbg !560
  call void @llvm.dbg.value(metadata i32 undef, metadata !502, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !523
  call void @llvm.dbg.value(metadata i32 undef, metadata !502, metadata !DIExpression()), !dbg !523
  br label %49, !dbg !561

49:                                               ; preds = %42, %17
  %50 = getelementptr inbounds i8, i8* %0, i64 2004, !dbg !561
  call void @llvm.dbg.value(metadata i8* %50, metadata !496, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i64 0, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 1, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  br label %51, !dbg !564

51:                                               ; preds = %81, %49
  %52 = phi i64 [ 0, %49 ], [ %82, %81 ]
  %53 = phi i64 [ 1, %49 ], [ %78, %81 ]
  %54 = phi i64 [ 0, %49 ], [ %77, %81 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %54, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %52, metadata !500, metadata !DIExpression()), !dbg !509
  %55 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !566
  store i8 0, i8* %55, align 1, !dbg !569, !tbaa !231
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i64 %53, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %54, metadata !503, metadata !DIExpression()), !dbg !562
  %56 = shl i64 %52, 3, !dbg !570
  br label %57, !dbg !575

57:                                               ; preds = %76, %51
  %58 = phi i64 [ 0, %51 ], [ %79, %76 ]
  %59 = phi i64 [ %53, %51 ], [ %78, %76 ]
  %60 = phi i64 [ %54, %51 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i64 %59, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %60, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %58, metadata !501, metadata !DIExpression()), !dbg !526
  %61 = add nuw nsw i64 %58, %56, !dbg !576
  %62 = getelementptr inbounds %struct.poly, %struct.poly* %3, i64 0, i32 0, i64 %61, !dbg !577
  %63 = load i32, i32* %62, align 4, !dbg !577, !tbaa !88
  %64 = icmp eq i32 %63, 0, !dbg !578
  br i1 %64, label %76, label %65, !dbg !579

65:                                               ; preds = %57
  %66 = trunc i64 %58 to i32, !dbg !580
  %67 = shl i32 1, %66, !dbg !580
  %68 = load i8, i8* %55, align 1, !dbg !582, !tbaa !231
  %69 = trunc i32 %67 to i8, !dbg !582
  %70 = or i8 %68, %69, !dbg !582
  store i8 %70, i8* %55, align 1, !dbg !582, !tbaa !231
  %71 = load i32, i32* %62, align 4, !dbg !583, !tbaa !88
  %72 = icmp eq i32 %71, 8380416, !dbg !585
  %73 = select i1 %72, i64 %59, i64 0, !dbg !586
  %74 = or i64 %73, %60, !dbg !586
  call void @llvm.dbg.value(metadata i64 %74, metadata !503, metadata !DIExpression()), !dbg !562
  %75 = shl i64 %59, 1, !dbg !587
  call void @llvm.dbg.value(metadata i64 %75, metadata !504, metadata !DIExpression()), !dbg !563
  br label %76, !dbg !588

76:                                               ; preds = %57, %65
  %77 = phi i64 [ %74, %65 ], [ %60, %57 ], !dbg !545
  %78 = phi i64 [ %75, %65 ], [ %59, %57 ], !dbg !545
  %79 = add nuw nsw i64 %58, 1, !dbg !589
  call void @llvm.dbg.value(metadata i64 %78, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !501, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !526
  %80 = icmp eq i64 %79, 8, !dbg !590
  br i1 %80, label %81, label %57, !dbg !575, !llvm.loop !591

81:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %78, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %78, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %78, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %78, metadata !504, metadata !DIExpression()), !dbg !563
  %82 = add nuw nsw i64 %52, 1, !dbg !593
  call void @llvm.dbg.value(metadata i64 %78, metadata !504, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !509
  %83 = icmp eq i64 %82, 32, !dbg !594
  br i1 %83, label %84, label %51, !dbg !564, !llvm.loop !595

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %77, metadata !503, metadata !DIExpression()), !dbg !562
  %85 = getelementptr inbounds i8, i8* %0, i64 2036, !dbg !597
  call void @llvm.dbg.value(metadata i8* %85, metadata !496, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  br label %86, !dbg !598

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %92, %86 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !500, metadata !DIExpression()), !dbg !509
  %88 = shl i64 %87, 3, !dbg !600
  %89 = lshr i64 %77, %88, !dbg !603
  %90 = trunc i64 %89 to i8, !dbg !604
  %91 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !605
  store i8 %90, i8* %91, align 1, !dbg !606, !tbaa !231
  %92 = add nuw nsw i64 %87, 1, !dbg !607
  call void @llvm.dbg.value(metadata i32 undef, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !509
  %93 = icmp eq i64 %92, 8, !dbg !608
  br i1 %93, label %94, label %86, !dbg !598, !llvm.loop !609

94:                                               ; preds = %86
  ret void, !dbg !611
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(%struct.polyvecl*, %struct.polyveck* nocapture, %struct.poly* nocapture, i8*) local_unnamed_addr #0 !dbg !612 {
  call void @llvm.dbg.value(metadata %struct.polyvecl* %0, metadata !617, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !618, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !619, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i8* %3, metadata !620, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !629
  br label %5, !dbg !630

5:                                                ; preds = %5, %4
  %6 = phi i64 [ 0, %4 ], [ %10, %5 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !621, metadata !DIExpression()), !dbg !629
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 %6, !dbg !632
  %8 = mul nuw nsw i64 %6, 640, !dbg !635
  %9 = getelementptr inbounds i8, i8* %3, i64 %8, !dbg !636
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* %7, i8* %9) #9, !dbg !637
  %10 = add nuw nsw i64 %6, 1, !dbg !638
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !629
  %11 = icmp eq i64 %10, 3, !dbg !639
  br i1 %11, label %12, label %5, !dbg !630, !llvm.loop !640

12:                                               ; preds = %5
  %13 = bitcast %struct.poly* %2 to i8*
  %14 = getelementptr inbounds i8, i8* %3, i64 1920, !dbg !642
  call void @llvm.dbg.value(metadata i8* %14, metadata !620, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !629
  br label %17, !dbg !644

15:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 %59, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 %59, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 %59, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 %59, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 %59, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 %59, metadata !622, metadata !DIExpression()), !dbg !646
  %16 = icmp ult i32 %59, 80, !dbg !647
  br i1 %16, label %64, label %71, !dbg !650

17:                                               ; preds = %58, %12
  %18 = phi i64 [ 0, %12 ], [ %60, %58 ]
  %19 = phi i32 [ 0, %12 ], [ %59, %58 ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i64 %18, metadata !621, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !622, metadata !DIExpression()), !dbg !646
  %20 = getelementptr %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %18, !dbg !651
  %21 = bitcast %struct.poly* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 1024, i1 false), !dbg !657
  call void @llvm.dbg.value(metadata i32 undef, metadata !622, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !646
  call void @llvm.dbg.value(metadata i32 undef, metadata !622, metadata !DIExpression()), !dbg !646
  %22 = add nuw nsw i64 %18, 80, !dbg !658
  %23 = getelementptr inbounds i8, i8* %14, i64 %22, !dbg !660
  %24 = load i8, i8* %23, align 1, !dbg !660, !tbaa !231
  %25 = zext i8 %24 to i32, !dbg !660
  %26 = icmp ugt i32 %19, %25, !dbg !661
  %27 = icmp ugt i8 %24, 80, !dbg !662
  %28 = or i1 %27, %26, !dbg !663
  br i1 %28, label %117, label %29, !dbg !663

29:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 %19, metadata !622, metadata !DIExpression()), !dbg !646
  %30 = load i8, i8* %23, align 1, !dbg !664, !tbaa !231
  %31 = zext i8 %30 to i32, !dbg !664
  %32 = icmp ult i32 %19, %31, !dbg !667
  br i1 %32, label %33, label %58, !dbg !668

33:                                               ; preds = %29
  %34 = zext i32 %19 to i64, !dbg !668
  %35 = zext i32 %19 to i64, !dbg !668
  br label %36, !dbg !668

36:                                               ; preds = %33, %47
  %37 = phi i64 [ %34, %33 ], [ %52, %47 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !622, metadata !DIExpression()), !dbg !646
  %38 = icmp ugt i64 %37, %35, !dbg !669
  br i1 %38, label %39, label %47, !dbg !672

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %14, i64 %37, !dbg !673
  %41 = load i8, i8* %40, align 1, !dbg !673, !tbaa !231
  %42 = add nuw i64 %37, 4294967295, !dbg !674
  %43 = and i64 %42, 4294967295, !dbg !674
  %44 = getelementptr inbounds i8, i8* %14, i64 %43, !dbg !674
  %45 = load i8, i8* %44, align 1, !dbg !674, !tbaa !231
  %46 = icmp ugt i8 %41, %45, !dbg !675
  br i1 %46, label %47, label %117, !dbg !676

47:                                               ; preds = %39, %36
  %48 = getelementptr inbounds i8, i8* %14, i64 %37, !dbg !677
  %49 = load i8, i8* %48, align 1, !dbg !677, !tbaa !231
  %50 = zext i8 %49 to i64, !dbg !678
  %51 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %18, i32 0, i64 %50, !dbg !678
  store i32 1, i32* %51, align 4, !dbg !679, !tbaa !88
  %52 = add nuw nsw i64 %37, 1, !dbg !680
  call void @llvm.dbg.value(metadata i32 undef, metadata !622, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !646
  %53 = load i8, i8* %23, align 1, !dbg !664, !tbaa !231
  %54 = zext i8 %53 to i64, !dbg !667
  %55 = icmp ult i64 %52, %54, !dbg !667
  br i1 %55, label %36, label %56, !dbg !668, !llvm.loop !681

56:                                               ; preds = %47
  %57 = zext i8 %53 to i32, !dbg !664
  br label %58, !dbg !668

58:                                               ; preds = %56, %29
  %59 = phi i32 [ %57, %56 ], [ %31, %29 ], !dbg !664
  %60 = add nuw nsw i64 %18, 1, !dbg !683
  call void @llvm.dbg.value(metadata i32 %59, metadata !623, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !629
  %61 = icmp ult i64 %60, 4, !dbg !684
  br i1 %61, label %17, label %15, !dbg !644, !llvm.loop !685

62:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 %70, metadata !622, metadata !DIExpression()), !dbg !646
  %63 = icmp ult i32 %70, 80, !dbg !647
  br i1 %63, label %64, label %71, !dbg !650, !llvm.loop !687

64:                                               ; preds = %15, %62
  %65 = phi i32 [ %70, %62 ], [ %59, %15 ]
  call void @llvm.dbg.value(metadata i32 %65, metadata !622, metadata !DIExpression()), !dbg !646
  %66 = zext i32 %65 to i64, !dbg !689
  %67 = getelementptr inbounds i8, i8* %14, i64 %66, !dbg !689
  %68 = load i8, i8* %67, align 1, !dbg !689, !tbaa !231
  %69 = icmp eq i8 %68, 0, !dbg !689
  %70 = add nuw nsw i32 %65, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %70, metadata !622, metadata !DIExpression()), !dbg !646
  br i1 %69, label %62, label %117, !dbg !693

71:                                               ; preds = %62, %15
  call void @llvm.dbg.value(metadata i8* %72, metadata !620, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !629
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 1024, i1 false), !dbg !694
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !629
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression()), !dbg !629
  %72 = getelementptr inbounds i8, i8* %3, i64 2004, !dbg !698
  br label %73, !dbg !699

73:                                               ; preds = %73, %71
  %74 = phi i64 [ 0, %71 ], [ %83, %73 ]
  %75 = phi i64 [ 0, %71 ], [ %82, %73 ]
  call void @llvm.dbg.value(metadata i64 %75, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i64 %74, metadata !621, metadata !DIExpression()), !dbg !629
  %76 = add nuw nsw i64 %74, 32, !dbg !699
  %77 = getelementptr inbounds i8, i8* %72, i64 %76, !dbg !704
  %78 = load i8, i8* %77, align 1, !dbg !704, !tbaa !231
  %79 = zext i8 %78 to i64, !dbg !705
  %80 = shl i64 %74, 3, !dbg !706
  %81 = shl i64 %79, %80, !dbg !707
  %82 = or i64 %81, %75, !dbg !708
  %83 = add nuw nsw i64 %74, 1, !dbg !709
  call void @llvm.dbg.value(metadata i64 %82, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !629
  %84 = icmp eq i64 %83, 8, !dbg !710
  br i1 %84, label %85, label %73, !dbg !711, !llvm.loop !712

85:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 %82, metadata !624, metadata !DIExpression()), !dbg !703
  %86 = icmp ugt i64 %82, 1152921504606846975, !dbg !714
  br i1 %86, label %117, label %87, !dbg !716

87:                                               ; preds = %85, %114
  %88 = phi i64 [ %115, %114 ], [ 0, %85 ]
  %89 = phi i64 [ %111, %114 ], [ %82, %85 ]
  call void @llvm.dbg.value(metadata i64 %89, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i64 %88, metadata !621, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i64 %89, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32 0, metadata !622, metadata !DIExpression()), !dbg !646
  %90 = getelementptr inbounds i8, i8* %72, i64 %88, !dbg !717
  %91 = shl i64 %88, 3, !dbg !725
  br label %92, !dbg !727

92:                                               ; preds = %110, %87
  %93 = phi i64 [ 0, %87 ], [ %112, %110 ]
  %94 = phi i64 [ %89, %87 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i64 %93, metadata !622, metadata !DIExpression()), !dbg !646
  %95 = load i8, i8* %90, align 1, !dbg !728, !tbaa !231
  %96 = zext i8 %95 to i32, !dbg !728
  %97 = trunc i64 %93 to i32, !dbg !729
  %98 = shl i32 1, %97, !dbg !729
  %99 = and i32 %98, %96, !dbg !729
  %100 = icmp eq i32 %99, 0, !dbg !729
  br i1 %100, label %110, label %101, !dbg !730

101:                                              ; preds = %92
  %102 = add nuw nsw i64 %93, %91, !dbg !731
  %103 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %102, !dbg !732
  %104 = trunc i64 %94 to i32, !dbg !733
  %105 = and i32 %104, 1, !dbg !734
  %106 = sub nsw i32 0, %105, !dbg !735
  %107 = and i32 %106, 8380417, !dbg !736
  %108 = xor i32 %107, 1, !dbg !737
  store i32 %108, i32* %103, align 4, !dbg !737, !tbaa !88
  %109 = lshr i64 %94, 1, !dbg !738
  call void @llvm.dbg.value(metadata i64 %109, metadata !624, metadata !DIExpression()), !dbg !703
  br label %110, !dbg !739

110:                                              ; preds = %92, %101
  %111 = phi i64 [ %109, %101 ], [ %94, %92 ], !dbg !740
  %112 = add nuw nsw i64 %93, 1, !dbg !741
  call void @llvm.dbg.value(metadata i64 %111, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32 undef, metadata !622, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !646
  %113 = icmp eq i64 %112, 8, !dbg !742
  br i1 %113, label %114, label %92, !dbg !727, !llvm.loop !743

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 %111, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i64 %111, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i64 %111, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i64 %111, metadata !624, metadata !DIExpression()), !dbg !703
  %115 = add nuw nsw i64 %88, 1, !dbg !745
  call void @llvm.dbg.value(metadata i64 %111, metadata !624, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !629
  %116 = icmp eq i64 %115, 32, !dbg !746
  br i1 %116, label %117, label %87, !dbg !747, !llvm.loop !748

117:                                              ; preds = %17, %39, %64, %114, %85
  %118 = phi i32 [ 1, %85 ], [ 0, %114 ], [ 1, %64 ], [ 1, %39 ], [ 1, %17 ], !dbg !740
  ret i32 %118, !dbg !750
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* nocapture) local_unnamed_addr #0 !dbg !751 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !760, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !763
  br label %2, !dbg !764

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !761, metadata !DIExpression()), !dbg !763
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3, !dbg !766
  %5 = load i32, i32* %4, align 4, !dbg !766, !tbaa !88
  %6 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32 %5) #9, !dbg !769
  store i32 %6, i32* %4, align 4, !dbg !770, !tbaa !88
  %7 = add nuw nsw i64 %3, 1, !dbg !771
  call void @llvm.dbg.value(metadata i32 undef, metadata !761, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !763
  %8 = icmp eq i64 %7, 256, !dbg !772
  br i1 %8, label %9, label %2, !dbg !764, !llvm.loop !773

9:                                                ; preds = %2
  ret void, !dbg !775
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* nocapture) local_unnamed_addr #0 !dbg !776 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !778, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i32 0, metadata !779, metadata !DIExpression()), !dbg !781
  br label %2, !dbg !782

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !779, metadata !DIExpression()), !dbg !781
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3, !dbg !784
  %5 = load i32, i32* %4, align 4, !dbg !784, !tbaa !88
  %6 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32 %5) #9, !dbg !787
  store i32 %6, i32* %4, align 4, !dbg !788, !tbaa !88
  %7 = add nuw nsw i64 %3, 1, !dbg !789
  call void @llvm.dbg.value(metadata i32 undef, metadata !779, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !781
  %8 = icmp eq i64 %7, 256, !dbg !790
  br i1 %8, label %9, label %2, !dbg !782, !llvm.loop !791

9:                                                ; preds = %2
  ret void, !dbg !793
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* nocapture) local_unnamed_addr #0 !dbg !794 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !797, metadata !DIExpression()), !dbg !799
  br label %2, !dbg !800

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !797, metadata !DIExpression()), !dbg !799
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3, !dbg !802
  %5 = load i32, i32* %4, align 4, !dbg !802, !tbaa !88
  %6 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_freeze(i32 %5) #9, !dbg !805
  store i32 %6, i32* %4, align 4, !dbg !806, !tbaa !88
  %7 = add nuw nsw i64 %3, 1, !dbg !807
  call void @llvm.dbg.value(metadata i32 undef, metadata !797, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !799
  %8 = icmp eq i64 %7, 256, !dbg !808
  br i1 %8, label %9, label %2, !dbg !800, !llvm.loop !809

9:                                                ; preds = %2
  ret void, !dbg !811
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !812 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !818, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !819, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !820, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !821, metadata !DIExpression()), !dbg !825
  br label %4, !dbg !826

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !821, metadata !DIExpression()), !dbg !825
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !828
  %7 = load i32, i32* %6, align 4, !dbg !828, !tbaa !88
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !831
  %9 = load i32, i32* %8, align 4, !dbg !831, !tbaa !88
  %10 = add i32 %9, %7, !dbg !832
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !833
  store i32 %10, i32* %11, align 4, !dbg !834, !tbaa !88
  %12 = add nuw nsw i64 %5, 1, !dbg !835
  call void @llvm.dbg.value(metadata i32 undef, metadata !821, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !825
  %13 = icmp eq i64 %12, 256, !dbg !836
  br i1 %13, label %14, label %4, !dbg !826, !llvm.loop !837

14:                                               ; preds = %4
  ret void, !dbg !839
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !840 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !842, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !843, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !844, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i32 0, metadata !845, metadata !DIExpression()), !dbg !849
  br label %4, !dbg !850

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %13, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !845, metadata !DIExpression()), !dbg !849
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !852
  %7 = load i32, i32* %6, align 4, !dbg !852, !tbaa !88
  %8 = add i32 %7, 16760834, !dbg !855
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !856
  %10 = load i32, i32* %9, align 4, !dbg !856, !tbaa !88
  %11 = sub i32 %8, %10, !dbg !857
  %12 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !858
  store i32 %11, i32* %12, align 4, !dbg !859, !tbaa !88
  %13 = add nuw nsw i64 %5, 1, !dbg !860
  call void @llvm.dbg.value(metadata i32 undef, metadata !845, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !849
  %14 = icmp eq i64 %13, 256, !dbg !861
  br i1 %14, label %15, label %4, !dbg !850, !llvm.loop !862

15:                                               ; preds = %4
  ret void, !dbg !864
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* nocapture) local_unnamed_addr #3 !dbg !865 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !867, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !870
  br label %2, !dbg !871

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !868, metadata !DIExpression()), !dbg !870
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %3, !dbg !873
  %5 = load i32, i32* %4, align 4, !dbg !876, !tbaa !88
  %6 = shl i32 %5, 14, !dbg !876
  store i32 %6, i32* %4, align 4, !dbg !876, !tbaa !88
  %7 = add nuw nsw i64 %3, 1, !dbg !877
  call void @llvm.dbg.value(metadata i32 undef, metadata !868, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !870
  %8 = icmp eq i64 %7, 256, !dbg !878
  br i1 %8, label %9, label %2, !dbg !871, !llvm.loop !879

9:                                                ; preds = %2
  ret void, !dbg !881
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly*) local_unnamed_addr #0 !dbg !882 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !884, metadata !DIExpression()), !dbg !885
  %2 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0, !dbg !886
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_ntt(i32* %2) #9, !dbg !887
  ret void, !dbg !888
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly*) local_unnamed_addr #0 !dbg !889 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !891, metadata !DIExpression()), !dbg !892
  %2 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0, !dbg !893
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont(i32* %2) #9, !dbg !894
  ret void, !dbg !895
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 !dbg !896 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !898, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !899, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !900, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()), !dbg !905
  br label %4, !dbg !906

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %15, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !901, metadata !DIExpression()), !dbg !905
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !908
  %7 = load i32, i32* %6, align 4, !dbg !908, !tbaa !88
  %8 = zext i32 %7 to i64, !dbg !911
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !912
  %10 = load i32, i32* %9, align 4, !dbg !912, !tbaa !88
  %11 = zext i32 %10 to i64, !dbg !912
  %12 = mul nuw i64 %11, %8, !dbg !913
  %13 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %12) #9, !dbg !914
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !915
  store i32 %13, i32* %14, align 4, !dbg !916, !tbaa !88
  %15 = add nuw nsw i64 %5, 1, !dbg !917
  call void @llvm.dbg.value(metadata i32 undef, metadata !901, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !905
  %16 = icmp eq i64 %15, 256, !dbg !918
  br i1 %16, label %17, label %4, !dbg !906, !llvm.loop !919

17:                                               ; preds = %4
  ret void, !dbg !921
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* nocapture, %struct.poly*, %struct.poly* nocapture readonly) local_unnamed_addr #0 !dbg !922 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !926, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !927, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !928, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i32 0, metadata !929, metadata !DIExpression()), !dbg !933
  br label %4, !dbg !934

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !929, metadata !DIExpression()), !dbg !933
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !936
  %7 = load i32, i32* %6, align 4, !dbg !936, !tbaa !88
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !939
  %9 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_power2round(i32 %7, i32* %8) #9, !dbg !940
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !941
  store i32 %9, i32* %10, align 4, !dbg !942, !tbaa !88
  %11 = add nuw nsw i64 %5, 1, !dbg !943
  call void @llvm.dbg.value(metadata i32 undef, metadata !929, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !933
  %12 = icmp eq i64 %11, 256, !dbg !944
  br i1 %12, label %13, label %4, !dbg !934, !llvm.loop !945

13:                                               ; preds = %4
  ret void, !dbg !947
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* nocapture, %struct.poly*, %struct.poly* nocapture readonly) local_unnamed_addr #0 !dbg !948 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !950, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !951, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !952, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 0, metadata !953, metadata !DIExpression()), !dbg !957
  br label %4, !dbg !958

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !953, metadata !DIExpression()), !dbg !957
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !960
  %7 = load i32, i32* %6, align 4, !dbg !960, !tbaa !88
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !963
  %9 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32 %7, i32* %8) #9, !dbg !964
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !965
  store i32 %9, i32* %10, align 4, !dbg !966, !tbaa !88
  %11 = add nuw nsw i64 %5, 1, !dbg !967
  call void @llvm.dbg.value(metadata i32 undef, metadata !953, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !957
  %12 = icmp eq i64 %11, 256, !dbg !968
  br i1 %12, label %13, label %4, !dbg !958, !llvm.loop !969

13:                                               ; preds = %4
  ret void, !dbg !971
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 !dbg !972 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !976, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !977, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !978, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i32 0, metadata !980, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()), !dbg !985
  br label %4, !dbg !986

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %14, %4 ]
  %6 = phi i32 [ 0, %3 ], [ %13, %4 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !980, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %5, metadata !979, metadata !DIExpression()), !dbg !985
  %7 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !988
  %8 = load i32, i32* %7, align 4, !dbg !988, !tbaa !88
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !991
  %10 = load i32, i32* %9, align 4, !dbg !991, !tbaa !88
  %11 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_make_hint(i32 %8, i32 %10) #9, !dbg !992
  %12 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !993
  store i32 %11, i32* %12, align 4, !dbg !994, !tbaa !88
  %13 = add i32 %11, %6, !dbg !995
  %14 = add nuw nsw i64 %5, 1, !dbg !996
  call void @llvm.dbg.value(metadata i32 %13, metadata !980, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 undef, metadata !979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !985
  %15 = icmp eq i64 %14, 256, !dbg !997
  br i1 %15, label %16, label %4, !dbg !986, !llvm.loop !998

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %13, metadata !980, metadata !DIExpression()), !dbg !984
  ret i32 %13, !dbg !1000
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* nocapture, %struct.poly* nocapture readonly, %struct.poly* nocapture readonly) local_unnamed_addr #0 !dbg !1001 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1003, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !1004, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata %struct.poly* %2, metadata !1005, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 0, metadata !1006, metadata !DIExpression()), !dbg !1010
  br label %4, !dbg !1011

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1006, metadata !DIExpression()), !dbg !1010
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !1013
  %7 = load i32, i32* %6, align 4, !dbg !1013, !tbaa !88
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %2, i64 0, i32 0, i64 %5, !dbg !1016
  %9 = load i32, i32* %8, align 4, !dbg !1016, !tbaa !88
  %10 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_use_hint(i32 %7, i32 %9) #9, !dbg !1017
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %5, !dbg !1018
  store i32 %10, i32* %11, align 4, !dbg !1019, !tbaa !88
  %12 = add nuw nsw i64 %5, 1, !dbg !1020
  call void @llvm.dbg.value(metadata i32 undef, metadata !1006, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1010
  %13 = icmp eq i64 %12, 256, !dbg !1021
  br i1 %13, label %14, label %4, !dbg !1011, !llvm.loop !1022

14:                                               ; preds = %4
  ret void, !dbg !1024
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* nocapture readonly, i32) local_unnamed_addr #4 !dbg !1025 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1029, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %1, metadata !1030, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()), !dbg !1035
  br label %5, !dbg !1036

3:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 %15, metadata !1031, metadata !DIExpression()), !dbg !1035
  %4 = icmp ult i32 %15, 256, !dbg !1038
  br i1 %4, label %5, label %16, !dbg !1036, !llvm.loop !1040

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %2 ], [ %15, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !1031, metadata !DIExpression()), !dbg !1035
  %7 = zext i32 %6 to i64, !dbg !1042
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %7, !dbg !1042
  %9 = load i32, i32* %8, align 4, !dbg !1042, !tbaa !88
  %10 = sub i32 4190208, %9, !dbg !1044
  call void @llvm.dbg.value(metadata i32 %10, metadata !1032, metadata !DIExpression()), !dbg !1045
  %11 = ashr i32 %10, 31, !dbg !1046
  %12 = xor i32 %11, %10, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %12, metadata !1032, metadata !DIExpression()), !dbg !1045
  %13 = sub nsw i32 4190208, %12, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %13, metadata !1032, metadata !DIExpression()), !dbg !1045
  %14 = icmp ult i32 %13, %1, !dbg !1049
  %15 = add nuw nsw i32 %6, 1, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %15, metadata !1031, metadata !DIExpression()), !dbg !1035
  br i1 %14, label %3, label %16, !dbg !1052

16:                                               ; preds = %3, %5
  %17 = phi i32 [ 1, %5 ], [ 0, %3 ], !dbg !1053
  ret i32 %17, !dbg !1054
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* nocapture, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1055 {
  %4 = alloca [842 x i8], align 16
  %5 = alloca %struct.shake128ctx, align 8
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1059, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %1, metadata !1060, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i16 %2, metadata !1061, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 840, metadata !1065, metadata !DIExpression()), !dbg !1082
  %6 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 0, !dbg !1083
  call void @llvm.lifetime.start.p0i8(i64 842, i8* nonnull %6) #9, !dbg !1083
  call void @llvm.dbg.declare(metadata [842 x i8]* %4, metadata !1066, metadata !DIExpression()), !dbg !1084
  %7 = bitcast %struct.shake128ctx* %5 to i8*, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %7) #9, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1070, metadata !DIExpression(DW_OP_deref)), !dbg !1086
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx* nonnull %5, i8* %1, i16 zeroext %2) #9, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1070, metadata !DIExpression(DW_OP_deref)), !dbg !1086
  call void @shake128_squeezeblocks(i8* nonnull %6, i64 5, %struct.shake128ctx* nonnull %5) #9, !dbg !1088
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0, !dbg !1089
  %9 = call fastcc i32 @rej_uniform(i32* %8, i32 256, i8* nonnull %6, i32 840), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %9, metadata !1063, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i32 840, metadata !1065, metadata !DIExpression()), !dbg !1082
  %10 = icmp ult i32 %9, 256, !dbg !1092
  br i1 %10, label %11, label %39, !dbg !1093

11:                                               ; preds = %3, %29
  %12 = phi i32 [ %30, %29 ], [ 840, %3 ]
  %13 = phi i32 [ %37, %29 ], [ %9, %3 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !1065, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %13, metadata !1063, metadata !DIExpression()), !dbg !1091
  %14 = urem i32 %12, 3, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %14, metadata !1064, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 0, metadata !1062, metadata !DIExpression()), !dbg !1097
  %15 = icmp eq i32 %14, 0, !dbg !1098
  br i1 %15, label %29, label %16, !dbg !1101

16:                                               ; preds = %11
  %17 = sub nuw nsw i32 %12, %14, !dbg !1102
  %18 = zext i32 %14 to i64, !dbg !1101
  br label %19, !dbg !1101

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %27, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !1062, metadata !DIExpression()), !dbg !1097
  %21 = trunc i64 %20 to i32, !dbg !1104
  %22 = add i32 %17, %21, !dbg !1104
  %23 = zext i32 %22 to i64, !dbg !1105
  %24 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %23, !dbg !1105
  %25 = load i8, i8* %24, align 1, !dbg !1105, !tbaa !231
  %26 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %20, !dbg !1106
  store i8 %25, i8* %26, align 1, !dbg !1107, !tbaa !231
  %27 = add nuw nsw i64 %20, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i32 undef, metadata !1062, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1097
  %28 = icmp ult i64 %27, %18, !dbg !1098
  br i1 %28, label %19, label %29, !dbg !1101, !llvm.loop !1109

29:                                               ; preds = %19, %11
  %30 = or i32 %14, 168, !dbg !1111
  %31 = zext i32 %14 to i64, !dbg !1112
  %32 = getelementptr inbounds [842 x i8], [842 x i8]* %4, i64 0, i64 %31, !dbg !1112
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1070, metadata !DIExpression(DW_OP_deref)), !dbg !1086
  call void @shake128_squeezeblocks(i8* nonnull %32, i64 1, %struct.shake128ctx* nonnull %5) #9, !dbg !1112
  %33 = zext i32 %13 to i64, !dbg !1113
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %33, !dbg !1113
  %35 = sub i32 256, %13, !dbg !1114
  %36 = call fastcc i32 @rej_uniform(i32* %34, i32 %35, i8* nonnull %6, i32 %30), !dbg !1115
  %37 = add i32 %36, %13, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %30, metadata !1065, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %37, metadata !1063, metadata !DIExpression()), !dbg !1091
  %38 = icmp ult i32 %37, 256, !dbg !1092
  br i1 %38, label %11, label %39, !dbg !1093, !llvm.loop !1117

39:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %7) #9, !dbg !1119
  call void @llvm.lifetime.end.p0i8(i64 842, i8* nonnull %6) #9, !dbg !1119
  ret void, !dbg !1119
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @shake128_squeezeblocks(i8*, i64, %struct.shake128ctx*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind ssp uwtable
define internal fastcc i32 @rej_uniform(i32* nocapture, i32, i8* nocapture readonly, i32) unnamed_addr #3 !dbg !1120 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1124, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %1, metadata !1125, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8* %2, metadata !1126, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 %3, metadata !1127, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 0, metadata !1129, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 0, metadata !1128, metadata !DIExpression()), !dbg !1136
  %5 = icmp eq i32 %1, 0, !dbg !1137
  %6 = icmp ult i32 %3, 3, !dbg !1138
  %7 = or i1 %5, %6, !dbg !1139
  br i1 %7, label %42, label %8, !dbg !1139

8:                                                ; preds = %4, %36
  %9 = phi i32 [ %39, %36 ], [ 3, %4 ]
  %10 = phi i32 [ %9, %36 ], [ 0, %4 ]
  %11 = phi i32 [ %37, %36 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !1129, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %11, metadata !1128, metadata !DIExpression()), !dbg !1136
  %12 = add i32 %10, 1, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %12, metadata !1129, metadata !DIExpression()), !dbg !1135
  %13 = zext i32 %10 to i64, !dbg !1142
  %14 = getelementptr inbounds i8, i8* %2, i64 %13, !dbg !1142
  %15 = load i8, i8* %14, align 1, !dbg !1142, !tbaa !231
  %16 = zext i8 %15 to i32, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %16, metadata !1130, metadata !DIExpression()), !dbg !1143
  %17 = add i32 %10, 2, !dbg !1144
  call void @llvm.dbg.value(metadata i32 %17, metadata !1129, metadata !DIExpression()), !dbg !1135
  %18 = zext i32 %12 to i64, !dbg !1145
  %19 = getelementptr inbounds i8, i8* %2, i64 %18, !dbg !1145
  %20 = load i8, i8* %19, align 1, !dbg !1145, !tbaa !231
  %21 = zext i8 %20 to i32, !dbg !1146
  %22 = shl nuw nsw i32 %21, 8, !dbg !1147
  %23 = or i32 %22, %16, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %23, metadata !1130, metadata !DIExpression()), !dbg !1143
  %24 = zext i32 %17 to i64, !dbg !1149
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1149
  %26 = load i8, i8* %25, align 1, !dbg !1149, !tbaa !231
  %27 = zext i8 %26 to i32, !dbg !1150
  %28 = shl nuw nsw i32 %27, 16, !dbg !1151
  %29 = and i32 %28, 8323072, !dbg !1152
  %30 = or i32 %23, %29, !dbg !1152
  call void @llvm.dbg.value(metadata i32 %30, metadata !1130, metadata !DIExpression()), !dbg !1143
  %31 = icmp ult i32 %30, 8380417, !dbg !1153
  br i1 %31, label %32, label %36, !dbg !1155

32:                                               ; preds = %8
  %33 = add i32 %11, 1, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %33, metadata !1128, metadata !DIExpression()), !dbg !1136
  %34 = zext i32 %11 to i64, !dbg !1158
  %35 = getelementptr inbounds i32, i32* %0, i64 %34, !dbg !1158
  store i32 %30, i32* %35, align 4, !dbg !1159, !tbaa !88
  br label %36, !dbg !1160

36:                                               ; preds = %32, %8
  %37 = phi i32 [ %33, %32 ], [ %11, %8 ], !dbg !1161
  call void @llvm.dbg.value(metadata i32 %9, metadata !1129, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %37, metadata !1128, metadata !DIExpression()), !dbg !1136
  %38 = icmp uge i32 %37, %1, !dbg !1137
  %39 = add i32 %9, 3, !dbg !1162
  %40 = icmp ugt i32 %39, %3, !dbg !1138
  %41 = or i1 %38, %40, !dbg !1139
  br i1 %41, label %42, label %8, !dbg !1139, !llvm.loop !1163

42:                                               ; preds = %36, %4
  %43 = phi i32 [ 0, %4 ], [ %37, %36 ], !dbg !1161
  call void @llvm.dbg.value(metadata i32 %43, metadata !1128, metadata !DIExpression()), !dbg !1136
  ret i32 %43, !dbg !1166
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* nocapture, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1167 {
  %4 = alloca [168 x i8], align 16
  %5 = alloca %struct.shake128ctx, align 8
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1169, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %1, metadata !1170, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i16 %2, metadata !1171, metadata !DIExpression()), !dbg !1180
  %6 = getelementptr inbounds [168 x i8], [168 x i8]* %4, i64 0, i64 0, !dbg !1181
  call void @llvm.lifetime.start.p0i8(i64 168, i8* nonnull %6) #9, !dbg !1181
  call void @llvm.dbg.declare(metadata [168 x i8]* %4, metadata !1173, metadata !DIExpression()), !dbg !1182
  %7 = bitcast %struct.shake128ctx* %5 to i8*, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %7) #9, !dbg !1183
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1177, metadata !DIExpression(DW_OP_deref)), !dbg !1184
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx* nonnull %5, i8* %1, i16 zeroext %2) #9, !dbg !1185
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1177, metadata !DIExpression(DW_OP_deref)), !dbg !1184
  call void @shake128_squeezeblocks(i8* nonnull %6, i64 1, %struct.shake128ctx* nonnull %5) #9, !dbg !1186
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0, !dbg !1187
  %9 = call fastcc i32 @rej_eta(i32* %8, i32 256, i8* nonnull %6), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %9, metadata !1172, metadata !DIExpression()), !dbg !1189
  %10 = icmp ult i32 %9, 256, !dbg !1190
  br i1 %10, label %11, label %19, !dbg !1191

11:                                               ; preds = %3, %11
  %12 = phi i32 [ %17, %11 ], [ %9, %3 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !1172, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1177, metadata !DIExpression(DW_OP_deref)), !dbg !1184
  call void @shake128_squeezeblocks(i8* nonnull %6, i64 1, %struct.shake128ctx* nonnull %5) #9, !dbg !1192
  %13 = zext i32 %12 to i64, !dbg !1194
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %13, !dbg !1194
  %15 = sub i32 256, %12, !dbg !1195
  %16 = call fastcc i32 @rej_eta(i32* %14, i32 %15, i8* nonnull %6), !dbg !1196
  %17 = add i32 %16, %12, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %17, metadata !1172, metadata !DIExpression()), !dbg !1189
  %18 = icmp ult i32 %17, 256, !dbg !1190
  br i1 %18, label %11, label %19, !dbg !1191, !llvm.loop !1198

19:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %7) #9, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 168, i8* nonnull %6) #9, !dbg !1200
  ret void, !dbg !1200
}

; Function Attrs: norecurse nounwind ssp uwtable
define internal fastcc i32 @rej_eta(i32* nocapture, i32, i8* nocapture readonly) unnamed_addr #3 !dbg !1201 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1203, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %1, metadata !1204, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i8* %2, metadata !1205, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 168, metadata !1206, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32 0, metadata !1208, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1216
  %4 = icmp eq i32 %1, 0, !dbg !1217
  br i1 %4, label %35, label %5, !dbg !1218

5:                                                ; preds = %3, %30
  %6 = phi i64 [ %12, %30 ], [ 0, %3 ]
  %7 = phi i32 [ %31, %30 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1207, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %6, metadata !1208, metadata !DIExpression()), !dbg !1215
  %8 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !1219
  %9 = load i8, i8* %8, align 1, !dbg !1219, !tbaa !231
  %10 = zext i8 %9 to i32, !dbg !1219
  %11 = and i32 %10, 15, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %11, metadata !1209, metadata !DIExpression()), !dbg !1222
  %12 = add nuw nsw i64 %6, 1, !dbg !1223
  %13 = lshr i32 %10, 4, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %13, metadata !1210, metadata !DIExpression()), !dbg !1225
  %14 = icmp ult i32 %11, 13, !dbg !1226
  br i1 %14, label %15, label %20, !dbg !1228

15:                                               ; preds = %5
  %16 = sub nsw i32 8380423, %11, !dbg !1229
  %17 = add i32 %7, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %17, metadata !1207, metadata !DIExpression()), !dbg !1216
  %18 = zext i32 %7 to i64, !dbg !1232
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !1232
  store i32 %16, i32* %19, align 4, !dbg !1233, !tbaa !88
  br label %20, !dbg !1234

20:                                               ; preds = %15, %5
  %21 = phi i32 [ %17, %15 ], [ %7, %5 ], !dbg !1235
  call void @llvm.dbg.value(metadata i32 %21, metadata !1207, metadata !DIExpression()), !dbg !1216
  %22 = icmp ult i8 %9, -48, !dbg !1236
  %23 = icmp ult i32 %21, %1, !dbg !1238
  %24 = and i1 %22, %23, !dbg !1239
  br i1 %24, label %25, label %30, !dbg !1239

25:                                               ; preds = %20
  %26 = sub nsw i32 8380423, %13, !dbg !1240
  %27 = add i32 %21, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %27, metadata !1207, metadata !DIExpression()), !dbg !1216
  %28 = zext i32 %21 to i64, !dbg !1243
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !1243
  store i32 %26, i32* %29, align 4, !dbg !1244, !tbaa !88
  br label %30, !dbg !1245

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %27, %25 ], [ %21, %20 ], !dbg !1246
  call void @llvm.dbg.value(metadata i32 %31, metadata !1207, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 undef, metadata !1208, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1215
  %32 = icmp ult i32 %31, %1, !dbg !1217
  %33 = icmp ult i64 %12, 168, !dbg !1247
  %34 = and i1 %33, %32, !dbg !1218
  br i1 %34, label %5, label %35, !dbg !1218, !llvm.loop !1248

35:                                               ; preds = %30, %3
  %36 = phi i32 [ 0, %3 ], [ %31, %30 ], !dbg !1235
  call void @llvm.dbg.value(metadata i32 %36, metadata !1207, metadata !DIExpression()), !dbg !1216
  ret i32 %36, !dbg !1251
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* nocapture, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1252 {
  %4 = alloca [684 x i8], align 16
  %5 = alloca %struct.shake128ctx, align 8
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1254, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8* %1, metadata !1255, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i16 %2, metadata !1256, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 680, metadata !1260, metadata !DIExpression()), !dbg !1273
  %6 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 0, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 684, i8* nonnull %6) #9, !dbg !1274
  call void @llvm.dbg.declare(metadata [684 x i8]* %4, metadata !1261, metadata !DIExpression()), !dbg !1275
  %7 = bitcast %struct.shake128ctx* %5 to i8*, !dbg !1276
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %7) #9, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1265, metadata !DIExpression(DW_OP_deref)), !dbg !1277
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init(%struct.shake128ctx* nonnull %5, i8* %1, i16 zeroext %2) #9, !dbg !1278
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1265, metadata !DIExpression(DW_OP_deref)), !dbg !1277
  call void @shake256_squeezeblocks(i8* nonnull %6, i64 5, %struct.shake128ctx* nonnull %5) #9, !dbg !1279
  %8 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 0, !dbg !1280
  %9 = call fastcc i32 @rej_gamma1m1(i32* %8, i32 256, i8* nonnull %6, i32 680), !dbg !1281
  call void @llvm.dbg.value(metadata i32 %9, metadata !1258, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 680, metadata !1260, metadata !DIExpression()), !dbg !1273
  %10 = icmp ult i32 %9, 256, !dbg !1283
  br i1 %10, label %11, label %39, !dbg !1284

11:                                               ; preds = %3, %29
  %12 = phi i32 [ %30, %29 ], [ 680, %3 ]
  %13 = phi i32 [ %37, %29 ], [ %9, %3 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !1260, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 %13, metadata !1258, metadata !DIExpression()), !dbg !1282
  %14 = urem i32 %12, 5, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %14, metadata !1259, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i32 0, metadata !1257, metadata !DIExpression()), !dbg !1288
  %15 = icmp eq i32 %14, 0, !dbg !1289
  br i1 %15, label %29, label %16, !dbg !1292

16:                                               ; preds = %11
  %17 = sub nuw nsw i32 %12, %14, !dbg !1293
  %18 = zext i32 %14 to i64, !dbg !1292
  br label %19, !dbg !1292

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %27, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !1257, metadata !DIExpression()), !dbg !1288
  %21 = trunc i64 %20 to i32, !dbg !1295
  %22 = add i32 %17, %21, !dbg !1295
  %23 = zext i32 %22 to i64, !dbg !1296
  %24 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %23, !dbg !1296
  %25 = load i8, i8* %24, align 1, !dbg !1296, !tbaa !231
  %26 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %20, !dbg !1297
  store i8 %25, i8* %26, align 1, !dbg !1298, !tbaa !231
  %27 = add nuw nsw i64 %20, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i32 undef, metadata !1257, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1288
  %28 = icmp ult i64 %27, %18, !dbg !1289
  br i1 %28, label %19, label %29, !dbg !1292, !llvm.loop !1300

29:                                               ; preds = %19, %11
  %30 = or i32 %14, 136, !dbg !1302
  %31 = zext i32 %14 to i64, !dbg !1303
  %32 = getelementptr inbounds [684 x i8], [684 x i8]* %4, i64 0, i64 %31, !dbg !1303
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %5, metadata !1265, metadata !DIExpression(DW_OP_deref)), !dbg !1277
  call void @shake256_squeezeblocks(i8* nonnull %32, i64 1, %struct.shake128ctx* nonnull %5) #9, !dbg !1303
  %33 = zext i32 %13 to i64, !dbg !1304
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %33, !dbg !1304
  %35 = sub i32 256, %13, !dbg !1305
  %36 = call fastcc i32 @rej_gamma1m1(i32* %34, i32 %35, i8* nonnull %6, i32 %30), !dbg !1306
  %37 = add i32 %36, %13, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %30, metadata !1260, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 %37, metadata !1258, metadata !DIExpression()), !dbg !1282
  %38 = icmp ult i32 %37, 256, !dbg !1283
  br i1 %38, label %11, label %39, !dbg !1284, !llvm.loop !1308

39:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %7) #9, !dbg !1310
  call void @llvm.lifetime.end.p0i8(i64 684, i8* nonnull %6) #9, !dbg !1310
  ret void, !dbg !1310
}

declare void @shake256_squeezeblocks(i8*, i64, %struct.shake128ctx*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind ssp uwtable
define internal fastcc i32 @rej_gamma1m1(i32* nocapture, i32, i8* nocapture readonly, i32) unnamed_addr #3 !dbg !1311 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1313, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %2, metadata !1315, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i32 %3, metadata !1316, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 0, metadata !1318, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 0, metadata !1317, metadata !DIExpression()), !dbg !1326
  %5 = icmp eq i32 %1, 0, !dbg !1327
  br i1 %5, label %65, label %6, !dbg !1328

6:                                                ; preds = %4, %62
  %7 = phi i32 [ %9, %62 ], [ 0, %4 ]
  %8 = phi i32 [ %63, %62 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1318, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %8, metadata !1317, metadata !DIExpression()), !dbg !1326
  %9 = add i32 %7, 5, !dbg !1329
  %10 = icmp ugt i32 %9, %3, !dbg !1330
  br i1 %10, label %65, label %11, !dbg !1331

11:                                               ; preds = %6
  %12 = zext i32 %7 to i64, !dbg !1332
  %13 = getelementptr inbounds i8, i8* %2, i64 %12, !dbg !1332
  %14 = load i8, i8* %13, align 1, !dbg !1332, !tbaa !231
  %15 = zext i8 %14 to i32, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %15, metadata !1319, metadata !DIExpression()), !dbg !1334
  %16 = add i32 %7, 1, !dbg !1335
  %17 = zext i32 %16 to i64, !dbg !1336
  %18 = getelementptr inbounds i8, i8* %2, i64 %17, !dbg !1336
  %19 = load i8, i8* %18, align 1, !dbg !1336, !tbaa !231
  %20 = zext i8 %19 to i32, !dbg !1337
  %21 = shl nuw nsw i32 %20, 8, !dbg !1338
  %22 = or i32 %21, %15, !dbg !1339
  call void @llvm.dbg.value(metadata i32 %22, metadata !1319, metadata !DIExpression()), !dbg !1334
  %23 = add i32 %7, 2, !dbg !1340
  %24 = zext i32 %23 to i64, !dbg !1341
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1341
  %26 = load i8, i8* %25, align 1, !dbg !1341, !tbaa !231
  %27 = zext i8 %26 to i32, !dbg !1342
  %28 = shl nuw nsw i32 %27, 16, !dbg !1343
  %29 = and i32 %28, 983040, !dbg !1344
  %30 = or i32 %22, %29, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %30, metadata !1319, metadata !DIExpression()), !dbg !1334
  %31 = lshr i32 %27, 4, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %31, metadata !1320, metadata !DIExpression()), !dbg !1346
  %32 = add i32 %7, 3, !dbg !1347
  %33 = zext i32 %32 to i64, !dbg !1348
  %34 = getelementptr inbounds i8, i8* %2, i64 %33, !dbg !1348
  %35 = load i8, i8* %34, align 1, !dbg !1348, !tbaa !231
  %36 = zext i8 %35 to i32, !dbg !1349
  %37 = shl nuw nsw i32 %36, 4, !dbg !1350
  %38 = or i32 %37, %31, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %38, metadata !1320, metadata !DIExpression()), !dbg !1346
  %39 = add i32 %7, 4, !dbg !1352
  %40 = zext i32 %39 to i64, !dbg !1353
  %41 = getelementptr inbounds i8, i8* %2, i64 %40, !dbg !1353
  %42 = load i8, i8* %41, align 1, !dbg !1353, !tbaa !231
  %43 = zext i8 %42 to i32, !dbg !1354
  %44 = shl nuw nsw i32 %43, 12, !dbg !1355
  %45 = or i32 %38, %44, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %45, metadata !1320, metadata !DIExpression()), !dbg !1346
  %46 = icmp ult i32 %30, 1047551, !dbg !1357
  br i1 %46, label %47, label %52, !dbg !1359

47:                                               ; preds = %11
  %48 = sub nsw i32 8904192, %30, !dbg !1360
  %49 = add i32 %8, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %49, metadata !1317, metadata !DIExpression()), !dbg !1326
  %50 = zext i32 %8 to i64, !dbg !1363
  %51 = getelementptr inbounds i32, i32* %0, i64 %50, !dbg !1363
  store i32 %48, i32* %51, align 4, !dbg !1364, !tbaa !88
  br label %52, !dbg !1365

52:                                               ; preds = %47, %11
  %53 = phi i32 [ %49, %47 ], [ %8, %11 ], !dbg !1366
  call void @llvm.dbg.value(metadata i32 %53, metadata !1317, metadata !DIExpression()), !dbg !1326
  %54 = icmp ult i32 %45, 1047551, !dbg !1367
  %55 = icmp ult i32 %53, %1, !dbg !1369
  %56 = and i1 %54, %55, !dbg !1370
  br i1 %56, label %57, label %62, !dbg !1370

57:                                               ; preds = %52
  %58 = sub nsw i32 8904192, %45, !dbg !1371
  %59 = add i32 %53, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %59, metadata !1317, metadata !DIExpression()), !dbg !1326
  %60 = zext i32 %53 to i64, !dbg !1374
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !1374
  store i32 %58, i32* %61, align 4, !dbg !1375, !tbaa !88
  br label %62, !dbg !1376

62:                                               ; preds = %57, %52
  %63 = phi i32 [ %59, %57 ], [ %53, %52 ], !dbg !1377
  call void @llvm.dbg.value(metadata i32 %9, metadata !1318, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %63, metadata !1317, metadata !DIExpression()), !dbg !1326
  %64 = icmp ult i32 %63, %1, !dbg !1327
  br i1 %64, label %6, label %65, !dbg !1328, !llvm.loop !1378

65:                                               ; preds = %62, %6, %4
  %66 = phi i32 [ 0, %4 ], [ %8, %6 ], [ %63, %62 ], !dbg !1366
  call void @llvm.dbg.value(metadata i32 %66, metadata !1317, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %66, metadata !1317, metadata !DIExpression()), !dbg !1326
  ret i32 %66, !dbg !1380
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !1381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1385, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !1386, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()), !dbg !1394
  br label %3, !dbg !1395

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %17, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1387, metadata !DIExpression()), !dbg !1394
  %5 = shl nuw i64 %4, 1, !dbg !1397
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !1400
  %7 = load i32, i32* %6, align 4, !dbg !1400, !tbaa !88
  %8 = sub i32 7, %7, !dbg !1401
  %9 = or i64 %5, 1, !dbg !1402
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %9, !dbg !1403
  %11 = load i32, i32* %10, align 4, !dbg !1403, !tbaa !88
  %12 = shl i32 %11, 4, !dbg !1404
  %13 = sub i32 112, %12, !dbg !1404
  %14 = or i32 %13, %8, !dbg !1405
  %15 = trunc i32 %14 to i8, !dbg !1406
  %16 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1407
  store i8 %15, i8* %16, align 1, !dbg !1408, !tbaa !231
  %17 = add nuw nsw i64 %4, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i32 undef, metadata !1387, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1394
  %18 = icmp eq i64 %17, 128, !dbg !1410
  br i1 %18, label %19, label %3, !dbg !1395, !llvm.loop !1411

19:                                               ; preds = %3
  ret void, !dbg !1413
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #3 !dbg !1414 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8* %1, metadata !1419, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32 0, metadata !1420, metadata !DIExpression()), !dbg !1423
  br label %3, !dbg !1424

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %18, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1420, metadata !DIExpression()), !dbg !1423
  %5 = getelementptr inbounds i8, i8* %1, i64 %4, !dbg !1426
  %6 = load i8, i8* %5, align 1, !dbg !1426, !tbaa !231
  %7 = and i8 %6, 15, !dbg !1429
  %8 = zext i8 %7 to i32, !dbg !1429
  %9 = shl nuw i64 %4, 1, !dbg !1430
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %9, !dbg !1431
  store i32 %8, i32* %10, align 4, !dbg !1432, !tbaa !88
  %11 = load i8, i8* %5, align 1, !dbg !1433, !tbaa !231
  %12 = lshr i8 %11, 4, !dbg !1434
  %13 = zext i8 %12 to i32, !dbg !1434
  %14 = or i64 %9, 1, !dbg !1435
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %14, !dbg !1436
  %16 = sub nsw i32 8380423, %8, !dbg !1437
  store i32 %16, i32* %10, align 4, !dbg !1438, !tbaa !88
  %17 = sub nsw i32 8380423, %13, !dbg !1439
  store i32 %17, i32* %15, align 4, !dbg !1440, !tbaa !88
  %18 = add nuw nsw i64 %4, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i32 undef, metadata !1420, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1423
  %19 = icmp eq i64 %18, 128, !dbg !1442
  br i1 %19, label %20, label %3, !dbg !1424, !llvm.loop !1443

20:                                               ; preds = %3
  ret void, !dbg !1445
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !1446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1448, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !1449, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 0, metadata !1450, metadata !DIExpression()), !dbg !1453
  br label %3, !dbg !1454

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %86, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1450, metadata !DIExpression()), !dbg !1453
  %5 = shl i64 %4, 3, !dbg !1456
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !1459
  %7 = load i32, i32* %6, align 4, !dbg !1459, !tbaa !88
  %8 = trunc i32 %7 to i8, !dbg !1460
  %9 = mul nuw nsw i64 %4, 9, !dbg !1461
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1462
  store i8 %8, i8* %10, align 1, !dbg !1463, !tbaa !231
  %11 = load i32, i32* %6, align 4, !dbg !1464, !tbaa !88
  %12 = lshr i32 %11, 8, !dbg !1465
  %13 = or i64 %5, 1, !dbg !1466
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %13, !dbg !1467
  %15 = load i32, i32* %14, align 4, !dbg !1467, !tbaa !88
  %16 = shl i32 %15, 1, !dbg !1468
  %17 = or i32 %16, %12, !dbg !1469
  %18 = trunc i32 %17 to i8, !dbg !1470
  %19 = add nuw nsw i64 %9, 1, !dbg !1471
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !1472
  store i8 %18, i8* %20, align 1, !dbg !1473, !tbaa !231
  %21 = load i32, i32* %14, align 4, !dbg !1474, !tbaa !88
  %22 = lshr i32 %21, 7, !dbg !1475
  %23 = or i64 %5, 2, !dbg !1476
  %24 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %23, !dbg !1477
  %25 = load i32, i32* %24, align 4, !dbg !1477, !tbaa !88
  %26 = shl i32 %25, 2, !dbg !1478
  %27 = or i32 %26, %22, !dbg !1479
  %28 = trunc i32 %27 to i8, !dbg !1480
  %29 = add nuw nsw i64 %9, 2, !dbg !1481
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1482
  store i8 %28, i8* %30, align 1, !dbg !1483, !tbaa !231
  %31 = load i32, i32* %24, align 4, !dbg !1484, !tbaa !88
  %32 = lshr i32 %31, 6, !dbg !1485
  %33 = or i64 %5, 3, !dbg !1486
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %33, !dbg !1487
  %35 = load i32, i32* %34, align 4, !dbg !1487, !tbaa !88
  %36 = shl i32 %35, 3, !dbg !1488
  %37 = or i32 %36, %32, !dbg !1489
  %38 = trunc i32 %37 to i8, !dbg !1490
  %39 = add nuw nsw i64 %9, 3, !dbg !1491
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1492
  store i8 %38, i8* %40, align 1, !dbg !1493, !tbaa !231
  %41 = load i32, i32* %34, align 4, !dbg !1494, !tbaa !88
  %42 = lshr i32 %41, 5, !dbg !1495
  %43 = or i64 %5, 4, !dbg !1496
  %44 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %43, !dbg !1497
  %45 = load i32, i32* %44, align 4, !dbg !1497, !tbaa !88
  %46 = shl i32 %45, 4, !dbg !1498
  %47 = or i32 %46, %42, !dbg !1499
  %48 = trunc i32 %47 to i8, !dbg !1500
  %49 = add nuw nsw i64 %9, 4, !dbg !1501
  %50 = getelementptr inbounds i8, i8* %0, i64 %49, !dbg !1502
  store i8 %48, i8* %50, align 1, !dbg !1503, !tbaa !231
  %51 = load i32, i32* %44, align 4, !dbg !1504, !tbaa !88
  %52 = lshr i32 %51, 4, !dbg !1505
  %53 = or i64 %5, 5, !dbg !1506
  %54 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %53, !dbg !1507
  %55 = load i32, i32* %54, align 4, !dbg !1507, !tbaa !88
  %56 = shl i32 %55, 5, !dbg !1508
  %57 = or i32 %56, %52, !dbg !1509
  %58 = trunc i32 %57 to i8, !dbg !1510
  %59 = add nuw nsw i64 %9, 5, !dbg !1511
  %60 = getelementptr inbounds i8, i8* %0, i64 %59, !dbg !1512
  store i8 %58, i8* %60, align 1, !dbg !1513, !tbaa !231
  %61 = load i32, i32* %54, align 4, !dbg !1514, !tbaa !88
  %62 = lshr i32 %61, 3, !dbg !1515
  %63 = or i64 %5, 6, !dbg !1516
  %64 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %63, !dbg !1517
  %65 = load i32, i32* %64, align 4, !dbg !1517, !tbaa !88
  %66 = shl i32 %65, 6, !dbg !1518
  %67 = or i32 %66, %62, !dbg !1519
  %68 = trunc i32 %67 to i8, !dbg !1520
  %69 = add nuw nsw i64 %9, 6, !dbg !1521
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !1522
  store i8 %68, i8* %70, align 1, !dbg !1523, !tbaa !231
  %71 = load i32, i32* %64, align 4, !dbg !1524, !tbaa !88
  %72 = lshr i32 %71, 2, !dbg !1525
  %73 = or i64 %5, 7, !dbg !1526
  %74 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %73, !dbg !1527
  %75 = load i32, i32* %74, align 4, !dbg !1527, !tbaa !88
  %76 = shl i32 %75, 7, !dbg !1528
  %77 = or i32 %76, %72, !dbg !1529
  %78 = trunc i32 %77 to i8, !dbg !1530
  %79 = add nuw nsw i64 %9, 7, !dbg !1531
  %80 = getelementptr inbounds i8, i8* %0, i64 %79, !dbg !1532
  store i8 %78, i8* %80, align 1, !dbg !1533, !tbaa !231
  %81 = load i32, i32* %74, align 4, !dbg !1534, !tbaa !88
  %82 = lshr i32 %81, 1, !dbg !1535
  %83 = trunc i32 %82 to i8, !dbg !1536
  %84 = add nuw nsw i64 %9, 8, !dbg !1537
  %85 = getelementptr inbounds i8, i8* %0, i64 %84, !dbg !1538
  store i8 %83, i8* %85, align 1, !dbg !1539, !tbaa !231
  %86 = add nuw nsw i64 %4, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i32 undef, metadata !1450, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1453
  %87 = icmp eq i64 %86, 32, !dbg !1541
  br i1 %87, label %88, label %3, !dbg !1454, !llvm.loop !1542

88:                                               ; preds = %3
  ret void, !dbg !1544
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #3 !dbg !1545 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1547, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %1, metadata !1548, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 0, metadata !1549, metadata !DIExpression()), !dbg !1552
  br label %3, !dbg !1553

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %101, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1549, metadata !DIExpression()), !dbg !1552
  %5 = mul nuw nsw i64 %4, 9, !dbg !1555
  %6 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !1558
  %7 = load i8, i8* %6, align 1, !dbg !1558, !tbaa !231
  %8 = zext i8 %7 to i32, !dbg !1559
  %9 = add nuw nsw i64 %5, 1, !dbg !1560
  %10 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !1561
  %11 = load i8, i8* %10, align 1, !dbg !1561, !tbaa !231
  %12 = zext i8 %11 to i32, !dbg !1562
  %13 = shl nuw nsw i32 %12, 8, !dbg !1563
  %14 = and i32 %13, 256, !dbg !1564
  %15 = or i32 %14, %8, !dbg !1564
  %16 = shl i64 %4, 3, !dbg !1565
  %17 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %16, !dbg !1566
  store i32 %15, i32* %17, align 4, !dbg !1567, !tbaa !88
  %18 = load i8, i8* %10, align 1, !dbg !1568, !tbaa !231
  %19 = lshr i8 %18, 1, !dbg !1569
  %20 = zext i8 %19 to i32, !dbg !1569
  %21 = add nuw nsw i64 %5, 2, !dbg !1570
  %22 = getelementptr inbounds i8, i8* %1, i64 %21, !dbg !1571
  %23 = load i8, i8* %22, align 1, !dbg !1571, !tbaa !231
  %24 = zext i8 %23 to i32, !dbg !1572
  %25 = shl nuw nsw i32 %24, 7, !dbg !1573
  %26 = and i32 %25, 384, !dbg !1574
  %27 = or i32 %26, %20, !dbg !1574
  %28 = or i64 %16, 1, !dbg !1575
  %29 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %28, !dbg !1576
  store i32 %27, i32* %29, align 4, !dbg !1577, !tbaa !88
  %30 = load i8, i8* %22, align 1, !dbg !1578, !tbaa !231
  %31 = lshr i8 %30, 2, !dbg !1579
  %32 = zext i8 %31 to i32, !dbg !1579
  %33 = add nuw nsw i64 %5, 3, !dbg !1580
  %34 = getelementptr inbounds i8, i8* %1, i64 %33, !dbg !1581
  %35 = load i8, i8* %34, align 1, !dbg !1581, !tbaa !231
  %36 = zext i8 %35 to i32, !dbg !1582
  %37 = shl nuw nsw i32 %36, 6, !dbg !1583
  %38 = and i32 %37, 448, !dbg !1584
  %39 = or i32 %38, %32, !dbg !1584
  %40 = or i64 %16, 2, !dbg !1585
  %41 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %40, !dbg !1586
  store i32 %39, i32* %41, align 4, !dbg !1587, !tbaa !88
  %42 = load i8, i8* %34, align 1, !dbg !1588, !tbaa !231
  %43 = lshr i8 %42, 3, !dbg !1589
  %44 = zext i8 %43 to i32, !dbg !1589
  %45 = add nuw nsw i64 %5, 4, !dbg !1590
  %46 = getelementptr inbounds i8, i8* %1, i64 %45, !dbg !1591
  %47 = load i8, i8* %46, align 1, !dbg !1591, !tbaa !231
  %48 = zext i8 %47 to i32, !dbg !1592
  %49 = shl nuw nsw i32 %48, 5, !dbg !1593
  %50 = and i32 %49, 480, !dbg !1594
  %51 = or i32 %50, %44, !dbg !1594
  %52 = or i64 %16, 3, !dbg !1595
  %53 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %52, !dbg !1596
  store i32 %51, i32* %53, align 4, !dbg !1597, !tbaa !88
  %54 = load i8, i8* %46, align 1, !dbg !1598, !tbaa !231
  %55 = lshr i8 %54, 4, !dbg !1599
  %56 = zext i8 %55 to i32, !dbg !1599
  %57 = add nuw nsw i64 %5, 5, !dbg !1600
  %58 = getelementptr inbounds i8, i8* %1, i64 %57, !dbg !1601
  %59 = load i8, i8* %58, align 1, !dbg !1601, !tbaa !231
  %60 = zext i8 %59 to i32, !dbg !1602
  %61 = shl nuw nsw i32 %60, 4, !dbg !1603
  %62 = and i32 %61, 496, !dbg !1604
  %63 = or i32 %62, %56, !dbg !1604
  %64 = or i64 %16, 4, !dbg !1605
  %65 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %64, !dbg !1606
  store i32 %63, i32* %65, align 4, !dbg !1607, !tbaa !88
  %66 = load i8, i8* %58, align 1, !dbg !1608, !tbaa !231
  %67 = lshr i8 %66, 5, !dbg !1609
  %68 = zext i8 %67 to i32, !dbg !1609
  %69 = add nuw nsw i64 %5, 6, !dbg !1610
  %70 = getelementptr inbounds i8, i8* %1, i64 %69, !dbg !1611
  %71 = load i8, i8* %70, align 1, !dbg !1611, !tbaa !231
  %72 = zext i8 %71 to i32, !dbg !1612
  %73 = shl nuw nsw i32 %72, 3, !dbg !1613
  %74 = and i32 %73, 504, !dbg !1614
  %75 = or i32 %74, %68, !dbg !1614
  %76 = or i64 %16, 5, !dbg !1615
  %77 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %76, !dbg !1616
  store i32 %75, i32* %77, align 4, !dbg !1617, !tbaa !88
  %78 = load i8, i8* %70, align 1, !dbg !1618, !tbaa !231
  %79 = lshr i8 %78, 6, !dbg !1619
  %80 = zext i8 %79 to i32, !dbg !1619
  %81 = add nuw nsw i64 %5, 7, !dbg !1620
  %82 = getelementptr inbounds i8, i8* %1, i64 %81, !dbg !1621
  %83 = load i8, i8* %82, align 1, !dbg !1621, !tbaa !231
  %84 = zext i8 %83 to i32, !dbg !1622
  %85 = shl nuw nsw i32 %84, 2, !dbg !1623
  %86 = and i32 %85, 508, !dbg !1624
  %87 = or i32 %86, %80, !dbg !1624
  %88 = or i64 %16, 6, !dbg !1625
  %89 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %88, !dbg !1626
  store i32 %87, i32* %89, align 4, !dbg !1627, !tbaa !88
  %90 = load i8, i8* %82, align 1, !dbg !1628, !tbaa !231
  %91 = lshr i8 %90, 7, !dbg !1629
  %92 = zext i8 %91 to i32, !dbg !1629
  %93 = add nuw nsw i64 %5, 8, !dbg !1630
  %94 = getelementptr inbounds i8, i8* %1, i64 %93, !dbg !1631
  %95 = load i8, i8* %94, align 1, !dbg !1631, !tbaa !231
  %96 = zext i8 %95 to i32, !dbg !1632
  %97 = shl nuw nsw i32 %96, 1, !dbg !1633
  %98 = or i32 %97, %92, !dbg !1634
  %99 = or i64 %16, 7, !dbg !1635
  %100 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %99, !dbg !1636
  store i32 %98, i32* %100, align 4, !dbg !1637, !tbaa !88
  %101 = add nuw nsw i64 %4, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i32 undef, metadata !1549, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1552
  %102 = icmp eq i64 %101, 32, !dbg !1639
  br i1 %102, label %103, label %3, !dbg !1553, !llvm.loop !1640

103:                                              ; preds = %3
  ret void, !dbg !1642
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !1643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !1646, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1652
  br label %3, !dbg !1653

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %54, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1647, metadata !DIExpression()), !dbg !1652
  %5 = shl i64 %4, 2, !dbg !1655
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !1658
  %7 = load i32, i32* %6, align 4, !dbg !1658, !tbaa !88
  %8 = sub i32 8388609, %7, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %8, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1660
  %9 = or i64 %5, 1, !dbg !1661
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %9, !dbg !1662
  %11 = load i32, i32* %10, align 4, !dbg !1662, !tbaa !88
  %12 = sub i32 8388609, %11, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %12, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1660
  %13 = or i64 %5, 2, !dbg !1664
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %13, !dbg !1665
  %15 = load i32, i32* %14, align 4, !dbg !1665, !tbaa !88
  %16 = sub i32 8388609, %15, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %16, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1660
  %17 = or i64 %5, 3, !dbg !1667
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %17, !dbg !1668
  %19 = load i32, i32* %18, align 4, !dbg !1668, !tbaa !88
  %20 = sub i32 8388609, %19, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %20, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1660
  %21 = trunc i32 %8 to i8, !dbg !1670
  %22 = mul nuw nsw i64 %4, 7, !dbg !1671
  %23 = getelementptr inbounds i8, i8* %0, i64 %22, !dbg !1672
  store i8 %21, i8* %23, align 1, !dbg !1673, !tbaa !231
  %24 = lshr i32 %8, 8, !dbg !1674
  %25 = add nuw nsw i64 %22, 1, !dbg !1675
  %26 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !1676
  %27 = shl i32 %12, 6, !dbg !1677
  %28 = or i32 %27, %24, !dbg !1678
  %29 = trunc i32 %28 to i8, !dbg !1678
  store i8 %29, i8* %26, align 1, !dbg !1678, !tbaa !231
  %30 = lshr i32 %12, 2, !dbg !1679
  %31 = trunc i32 %30 to i8, !dbg !1680
  %32 = add nuw nsw i64 %22, 2, !dbg !1681
  %33 = getelementptr inbounds i8, i8* %0, i64 %32, !dbg !1682
  store i8 %31, i8* %33, align 1, !dbg !1683, !tbaa !231
  %34 = lshr i32 %12, 10, !dbg !1684
  %35 = add nuw nsw i64 %22, 3, !dbg !1685
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !1686
  %37 = shl i32 %16, 4, !dbg !1687
  %38 = or i32 %37, %34, !dbg !1688
  %39 = trunc i32 %38 to i8, !dbg !1688
  store i8 %39, i8* %36, align 1, !dbg !1688, !tbaa !231
  %40 = lshr i32 %16, 4, !dbg !1689
  %41 = trunc i32 %40 to i8, !dbg !1690
  %42 = add nuw nsw i64 %22, 4, !dbg !1691
  %43 = getelementptr inbounds i8, i8* %0, i64 %42, !dbg !1692
  store i8 %41, i8* %43, align 1, !dbg !1693, !tbaa !231
  %44 = lshr i32 %16, 12, !dbg !1694
  %45 = add nuw nsw i64 %22, 5, !dbg !1695
  %46 = getelementptr inbounds i8, i8* %0, i64 %45, !dbg !1696
  %47 = shl i32 %20, 2, !dbg !1697
  %48 = or i32 %47, %44, !dbg !1698
  %49 = trunc i32 %48 to i8, !dbg !1698
  store i8 %49, i8* %46, align 1, !dbg !1698, !tbaa !231
  %50 = lshr i32 %20, 6, !dbg !1699
  %51 = trunc i32 %50 to i8, !dbg !1700
  %52 = add nuw nsw i64 %22, 6, !dbg !1701
  %53 = getelementptr inbounds i8, i8* %0, i64 %52, !dbg !1702
  store i8 %51, i8* %53, align 1, !dbg !1703, !tbaa !231
  %54 = add nuw nsw i64 %4, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i32 undef, metadata !1647, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1652
  %55 = icmp eq i64 %54, 64, !dbg !1705
  br i1 %55, label %56, label %3, !dbg !1653, !llvm.loop !1706

56:                                               ; preds = %3
  ret void, !dbg !1708
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #3 !dbg !1709 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1711, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8* %1, metadata !1712, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 0, metadata !1713, metadata !DIExpression()), !dbg !1716
  br label %3, !dbg !1717

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %69, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1713, metadata !DIExpression()), !dbg !1716
  %5 = mul nuw nsw i64 %4, 7, !dbg !1719
  %6 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !1722
  %7 = load i8, i8* %6, align 1, !dbg !1722, !tbaa !231
  %8 = zext i8 %7 to i32, !dbg !1722
  %9 = shl i64 %4, 2, !dbg !1723
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %9, !dbg !1724
  store i32 %8, i32* %10, align 4, !dbg !1725, !tbaa !88
  %11 = add nuw nsw i64 %5, 1, !dbg !1726
  %12 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !1727
  %13 = load i8, i8* %12, align 1, !dbg !1727, !tbaa !231
  %14 = and i8 %13, 63, !dbg !1728
  %15 = zext i8 %14 to i32, !dbg !1728
  %16 = shl nuw nsw i32 %15, 8, !dbg !1729
  %17 = or i32 %16, %8, !dbg !1730
  store i32 %17, i32* %10, align 4, !dbg !1730, !tbaa !88
  %18 = load i8, i8* %12, align 1, !dbg !1731, !tbaa !231
  %19 = lshr i8 %18, 6, !dbg !1732
  %20 = zext i8 %19 to i32, !dbg !1732
  %21 = or i64 %9, 1, !dbg !1733
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %21, !dbg !1734
  store i32 %20, i32* %22, align 4, !dbg !1735, !tbaa !88
  %23 = add nuw nsw i64 %5, 2, !dbg !1736
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !1737
  %25 = load i8, i8* %24, align 1, !dbg !1737, !tbaa !231
  %26 = zext i8 %25 to i32, !dbg !1738
  %27 = shl nuw nsw i32 %26, 2, !dbg !1739
  %28 = or i32 %27, %20, !dbg !1740
  store i32 %28, i32* %22, align 4, !dbg !1740, !tbaa !88
  %29 = add nuw nsw i64 %5, 3, !dbg !1741
  %30 = getelementptr inbounds i8, i8* %1, i64 %29, !dbg !1742
  %31 = load i8, i8* %30, align 1, !dbg !1742, !tbaa !231
  %32 = and i8 %31, 15, !dbg !1743
  %33 = zext i8 %32 to i32, !dbg !1743
  %34 = shl nuw nsw i32 %33, 10, !dbg !1744
  %35 = or i32 %34, %28, !dbg !1745
  store i32 %35, i32* %22, align 4, !dbg !1745, !tbaa !88
  %36 = load i8, i8* %30, align 1, !dbg !1746, !tbaa !231
  %37 = lshr i8 %36, 4, !dbg !1747
  %38 = zext i8 %37 to i32, !dbg !1747
  %39 = or i64 %9, 2, !dbg !1748
  %40 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %39, !dbg !1749
  store i32 %38, i32* %40, align 4, !dbg !1750, !tbaa !88
  %41 = add nuw nsw i64 %5, 4, !dbg !1751
  %42 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !1752
  %43 = load i8, i8* %42, align 1, !dbg !1752, !tbaa !231
  %44 = zext i8 %43 to i32, !dbg !1753
  %45 = shl nuw nsw i32 %44, 4, !dbg !1754
  %46 = or i32 %45, %38, !dbg !1755
  store i32 %46, i32* %40, align 4, !dbg !1755, !tbaa !88
  %47 = add nuw nsw i64 %5, 5, !dbg !1756
  %48 = getelementptr inbounds i8, i8* %1, i64 %47, !dbg !1757
  %49 = load i8, i8* %48, align 1, !dbg !1757, !tbaa !231
  %50 = and i8 %49, 3, !dbg !1758
  %51 = zext i8 %50 to i32, !dbg !1758
  %52 = shl nuw nsw i32 %51, 12, !dbg !1759
  %53 = or i32 %52, %46, !dbg !1760
  store i32 %53, i32* %40, align 4, !dbg !1760, !tbaa !88
  %54 = load i8, i8* %48, align 1, !dbg !1761, !tbaa !231
  %55 = lshr i8 %54, 2, !dbg !1762
  %56 = zext i8 %55 to i32, !dbg !1762
  %57 = or i64 %9, 3, !dbg !1763
  %58 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %57, !dbg !1764
  store i32 %56, i32* %58, align 4, !dbg !1765, !tbaa !88
  %59 = add nuw nsw i64 %5, 6, !dbg !1766
  %60 = getelementptr inbounds i8, i8* %1, i64 %59, !dbg !1767
  %61 = load i8, i8* %60, align 1, !dbg !1767, !tbaa !231
  %62 = zext i8 %61 to i32, !dbg !1768
  %63 = shl nuw nsw i32 %62, 6, !dbg !1769
  %64 = or i32 %63, %56, !dbg !1770
  %65 = sub nsw i32 8388609, %17, !dbg !1771
  store i32 %65, i32* %10, align 4, !dbg !1772, !tbaa !88
  %66 = sub nsw i32 8388609, %35, !dbg !1773
  store i32 %66, i32* %22, align 4, !dbg !1774, !tbaa !88
  %67 = sub nsw i32 8388609, %53, !dbg !1775
  store i32 %67, i32* %40, align 4, !dbg !1776, !tbaa !88
  %68 = sub nsw i32 8388609, %64, !dbg !1777
  store i32 %68, i32* %58, align 4, !dbg !1778, !tbaa !88
  %69 = add nuw nsw i64 %4, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i32 undef, metadata !1713, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1716
  %70 = icmp eq i64 %69, 64, !dbg !1780
  br i1 %70, label %71, label %3, !dbg !1717, !llvm.loop !1781

71:                                               ; preds = %3
  ret void, !dbg !1783
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !1784 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1786, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !1787, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()), !dbg !1795
  br label %3, !dbg !1796

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %40, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1788, metadata !DIExpression()), !dbg !1795
  %5 = shl nuw i64 %4, 1, !dbg !1798
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !1801
  %7 = load i32, i32* %6, align 4, !dbg !1801, !tbaa !88
  %8 = sub i32 523775, %7, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %8, metadata !1789, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1803
  %9 = ashr i32 %8, 31, !dbg !1804
  %10 = and i32 %9, 8380417, !dbg !1805
  %11 = add i32 %10, %8, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %11, metadata !1789, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1803
  %12 = or i64 %5, 1, !dbg !1807
  %13 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %12, !dbg !1808
  %14 = load i32, i32* %13, align 4, !dbg !1808, !tbaa !88
  %15 = sub i32 523775, %14, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %15, metadata !1789, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1803
  %16 = ashr i32 %15, 31, !dbg !1810
  %17 = and i32 %16, 8380417, !dbg !1811
  %18 = add i32 %17, %15, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %18, metadata !1789, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1803
  %19 = trunc i32 %11 to i8, !dbg !1813
  %20 = mul nuw nsw i64 %4, 5, !dbg !1814
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1815
  store i8 %19, i8* %21, align 1, !dbg !1816, !tbaa !231
  %22 = lshr i32 %11, 8, !dbg !1817
  %23 = trunc i32 %22 to i8, !dbg !1818
  %24 = add nuw nsw i64 %20, 1, !dbg !1819
  %25 = getelementptr inbounds i8, i8* %0, i64 %24, !dbg !1820
  store i8 %23, i8* %25, align 1, !dbg !1821, !tbaa !231
  %26 = lshr i32 %11, 16, !dbg !1822
  %27 = add nuw nsw i64 %20, 2, !dbg !1823
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !1824
  %29 = shl i32 %18, 4, !dbg !1825
  %30 = or i32 %29, %26, !dbg !1826
  %31 = trunc i32 %30 to i8, !dbg !1826
  store i8 %31, i8* %28, align 1, !dbg !1826, !tbaa !231
  %32 = lshr i32 %18, 4, !dbg !1827
  %33 = trunc i32 %32 to i8, !dbg !1828
  %34 = add nuw nsw i64 %20, 3, !dbg !1829
  %35 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1830
  store i8 %33, i8* %35, align 1, !dbg !1831, !tbaa !231
  %36 = lshr i32 %18, 12, !dbg !1832
  %37 = trunc i32 %36 to i8, !dbg !1833
  %38 = add nuw nsw i64 %20, 4, !dbg !1834
  %39 = getelementptr inbounds i8, i8* %0, i64 %38, !dbg !1835
  store i8 %37, i8* %39, align 1, !dbg !1836, !tbaa !231
  %40 = add nuw nsw i64 %4, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i32 undef, metadata !1788, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1795
  %41 = icmp eq i64 %40, 128, !dbg !1838
  br i1 %41, label %42, label %3, !dbg !1796, !llvm.loop !1839

42:                                               ; preds = %3
  ret void, !dbg !1841
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* nocapture, i8* nocapture readonly) local_unnamed_addr #3 !dbg !1842 {
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !1844, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %1, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32 0, metadata !1846, metadata !DIExpression()), !dbg !1849
  br label %3, !dbg !1850

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %49, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1846, metadata !DIExpression()), !dbg !1849
  %5 = mul nuw nsw i64 %4, 5, !dbg !1852
  %6 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !1855
  %7 = load i8, i8* %6, align 1, !dbg !1855, !tbaa !231
  %8 = zext i8 %7 to i32, !dbg !1855
  %9 = shl nuw i64 %4, 1, !dbg !1856
  %10 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %9, !dbg !1857
  store i32 %8, i32* %10, align 4, !dbg !1858, !tbaa !88
  %11 = add nuw nsw i64 %5, 1, !dbg !1859
  %12 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !1860
  %13 = load i8, i8* %12, align 1, !dbg !1860, !tbaa !231
  %14 = zext i8 %13 to i32, !dbg !1861
  %15 = shl nuw nsw i32 %14, 8, !dbg !1862
  %16 = or i32 %15, %8, !dbg !1863
  store i32 %16, i32* %10, align 4, !dbg !1863, !tbaa !88
  %17 = add nuw nsw i64 %5, 2, !dbg !1864
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !1865
  %19 = load i8, i8* %18, align 1, !dbg !1865, !tbaa !231
  %20 = and i8 %19, 15, !dbg !1866
  %21 = zext i8 %20 to i32, !dbg !1866
  %22 = shl nuw nsw i32 %21, 16, !dbg !1867
  %23 = or i32 %22, %16, !dbg !1868
  store i32 %23, i32* %10, align 4, !dbg !1868, !tbaa !88
  %24 = load i8, i8* %18, align 1, !dbg !1869, !tbaa !231
  %25 = lshr i8 %24, 4, !dbg !1870
  %26 = zext i8 %25 to i32, !dbg !1870
  %27 = or i64 %9, 1, !dbg !1871
  %28 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %27, !dbg !1872
  store i32 %26, i32* %28, align 4, !dbg !1873, !tbaa !88
  %29 = add nuw nsw i64 %5, 3, !dbg !1874
  %30 = getelementptr inbounds i8, i8* %1, i64 %29, !dbg !1875
  %31 = load i8, i8* %30, align 1, !dbg !1875, !tbaa !231
  %32 = zext i8 %31 to i32, !dbg !1876
  %33 = shl nuw nsw i32 %32, 4, !dbg !1877
  %34 = or i32 %33, %26, !dbg !1878
  store i32 %34, i32* %28, align 4, !dbg !1878, !tbaa !88
  %35 = add nuw nsw i64 %5, 4, !dbg !1879
  %36 = getelementptr inbounds i8, i8* %1, i64 %35, !dbg !1880
  %37 = load i8, i8* %36, align 1, !dbg !1880, !tbaa !231
  %38 = zext i8 %37 to i32, !dbg !1881
  %39 = shl nuw nsw i32 %38, 12, !dbg !1882
  %40 = or i32 %39, %34, !dbg !1883
  %41 = sub nsw i32 523775, %23, !dbg !1884
  %42 = ashr i32 %41, 31, !dbg !1885
  %43 = and i32 %42, 8380417, !dbg !1886
  %44 = add nsw i32 %43, %41, !dbg !1887
  store i32 %44, i32* %10, align 4, !dbg !1887, !tbaa !88
  %45 = sub nsw i32 523775, %40, !dbg !1888
  %46 = ashr i32 %45, 31, !dbg !1889
  %47 = and i32 %46, 8380417, !dbg !1890
  %48 = add nsw i32 %47, %45, !dbg !1891
  store i32 %48, i32* %28, align 4, !dbg !1891, !tbaa !88
  %49 = add nuw nsw i64 %4, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i32 undef, metadata !1846, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1849
  %50 = icmp eq i64 %49, 128, !dbg !1893
  br i1 %50, label %51, label %3, !dbg !1850, !llvm.loop !1894

51:                                               ; preds = %3
  ret void, !dbg !1896
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* nocapture, %struct.poly* nocapture readonly) local_unnamed_addr #3 !dbg !1897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1899, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata %struct.poly* %1, metadata !1900, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()), !dbg !1904
  br label %3, !dbg !1905

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %15, %3 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !1901, metadata !DIExpression()), !dbg !1904
  %5 = shl nuw i64 %4, 1, !dbg !1907
  %6 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %5, !dbg !1910
  %7 = load i32, i32* %6, align 4, !dbg !1910, !tbaa !88
  %8 = or i64 %5, 1, !dbg !1911
  %9 = getelementptr inbounds %struct.poly, %struct.poly* %1, i64 0, i32 0, i64 %8, !dbg !1912
  %10 = load i32, i32* %9, align 4, !dbg !1912, !tbaa !88
  %11 = shl i32 %10, 4, !dbg !1913
  %12 = or i32 %11, %7, !dbg !1914
  %13 = trunc i32 %12 to i8, !dbg !1915
  %14 = getelementptr inbounds i8, i8* %0, i64 %4, !dbg !1916
  store i8 %13, i8* %14, align 1, !dbg !1917, !tbaa !231
  %15 = add nuw nsw i64 %4, 1, !dbg !1918
  call void @llvm.dbg.value(metadata i32 undef, metadata !1901, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1904
  %16 = icmp eq i64 %15, 128, !dbg !1919
  br i1 %16, label %17, label %3, !dbg !1905, !llvm.loop !1920

17:                                               ; preds = %3
  ret void, !dbg !1922
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(%struct.polyvecl*) local_unnamed_addr #0 !dbg !1923 {
  call void @llvm.dbg.value(metadata %struct.polyvecl* %0, metadata !1937, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 0, metadata !1938, metadata !DIExpression()), !dbg !1940
  br label %2, !dbg !1941

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1938, metadata !DIExpression()), !dbg !1940
  %4 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 %3, !dbg !1943
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %4) #9, !dbg !1946
  %5 = add nuw nsw i64 %3, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i32 undef, metadata !1938, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1940
  %6 = icmp eq i64 %5, 3, !dbg !1948
  br i1 %6, label %7, label %2, !dbg !1941, !llvm.loop !1949

7:                                                ; preds = %2
  ret void, !dbg !1951
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(%struct.polyvecl*, %struct.polyvecl*, %struct.polyvecl*) local_unnamed_addr #0 !dbg !1952 {
  call void @llvm.dbg.value(metadata %struct.polyvecl* %0, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata %struct.polyvecl* %1, metadata !1959, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata %struct.polyvecl* %2, metadata !1960, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 0, metadata !1961, metadata !DIExpression()), !dbg !1965
  br label %4, !dbg !1966

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1961, metadata !DIExpression()), !dbg !1965
  %6 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 %5, !dbg !1968
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 %5, !dbg !1971
  %8 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 %5, !dbg !1972
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %6, %struct.poly* %7, %struct.poly* %8) #9, !dbg !1973
  %9 = add nuw nsw i64 %5, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 undef, metadata !1961, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1965
  %10 = icmp eq i64 %9, 3, !dbg !1975
  br i1 %10, label %11, label %4, !dbg !1966, !llvm.loop !1976

11:                                               ; preds = %4
  ret void, !dbg !1978
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl*) local_unnamed_addr #0 !dbg !1979 {
  call void @llvm.dbg.value(metadata %struct.polyvecl* %0, metadata !1981, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i32 0, metadata !1982, metadata !DIExpression()), !dbg !1984
  br label %2, !dbg !1985

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1982, metadata !DIExpression()), !dbg !1984
  %4 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 %3, !dbg !1987
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %4) #9, !dbg !1990
  %5 = add nuw nsw i64 %3, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1982, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1984
  %6 = icmp eq i64 %5, 3, !dbg !1992
  br i1 %6, label %7, label %2, !dbg !1985, !llvm.loop !1993

7:                                                ; preds = %2
  ret void, !dbg !1995
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly*, %struct.polyvecl*, %struct.polyvecl*) local_unnamed_addr #0 !dbg !1996 {
  %4 = alloca %struct.poly, align 4
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.polyvecl* %1, metadata !2002, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.polyvecl* %2, metadata !2003, metadata !DIExpression()), !dbg !2008
  %5 = bitcast %struct.poly* %4 to i8*, !dbg !2009
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #9, !dbg !2009
  %6 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 0, !dbg !2010
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 0, !dbg !2011
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %0, %struct.poly* %6, %struct.poly* %7) #9, !dbg !2012
  call void @llvm.dbg.value(metadata i32 1, metadata !2004, metadata !DIExpression()), !dbg !2013
  br label %8, !dbg !2014

8:                                                ; preds = %8, %3
  %9 = phi i64 [ 1, %3 ], [ %12, %8 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2004, metadata !DIExpression()), !dbg !2013
  %10 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %1, i64 0, i32 0, i64 %9, !dbg !2016
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %2, i64 0, i32 0, i64 %9, !dbg !2019
  call void @llvm.dbg.value(metadata %struct.poly* %4, metadata !2005, metadata !DIExpression(DW_OP_deref)), !dbg !2020
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %4, %struct.poly* nonnull %10, %struct.poly* nonnull %11) #9, !dbg !2021
  call void @llvm.dbg.value(metadata %struct.poly* %4, metadata !2005, metadata !DIExpression(DW_OP_deref)), !dbg !2020
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %0, %struct.poly* %0, %struct.poly* nonnull %4) #9, !dbg !2022
  %12 = add nuw nsw i64 %9, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i32 undef, metadata !2004, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2013
  %13 = icmp eq i64 %12, 3, !dbg !2024
  br i1 %13, label %14, label %8, !dbg !2014, !llvm.loop !2025

14:                                               ; preds = %8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #9, !dbg !2027
  ret void, !dbg !2027
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl*, i32) local_unnamed_addr #0 !dbg !2028 {
  call void @llvm.dbg.value(metadata %struct.polyvecl* %0, metadata !2032, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2034, metadata !DIExpression()), !dbg !2037
  br label %5, !dbg !2038

3:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 undef, metadata !2034, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2037
  %4 = icmp ult i64 %10, 3, !dbg !2040
  br i1 %4, label %5, label %11, !dbg !2038, !llvm.loop !2042

5:                                                ; preds = %2, %3
  %6 = phi i64 [ 0, %2 ], [ %10, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2034, metadata !DIExpression()), !dbg !2037
  %7 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 0, i32 0, i64 %6, !dbg !2044
  %8 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %7, i32 %1) #9, !dbg !2047
  %9 = icmp eq i32 %8, 0, !dbg !2047
  %10 = add nuw nsw i64 %6, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i32 undef, metadata !2034, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2037
  br i1 %9, label %3, label %11, !dbg !2049

11:                                               ; preds = %3, %5
  %12 = phi i32 [ 1, %5 ], [ 0, %3 ], !dbg !2050
  ret i32 %12, !dbg !2051
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(%struct.polyveck*) local_unnamed_addr #0 !dbg !2052 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 0, metadata !2063, metadata !DIExpression()), !dbg !2065
  br label %2, !dbg !2066

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !2063, metadata !DIExpression()), !dbg !2065
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %3, !dbg !2068
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %4) #9, !dbg !2071
  %5 = add nuw nsw i64 %3, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !2063, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2065
  %6 = icmp eq i64 %5, 4, !dbg !2073
  br i1 %6, label %7, label %2, !dbg !2066, !llvm.loop !2074

7:                                                ; preds = %2
  ret void, !dbg !2076
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck*) local_unnamed_addr #0 !dbg !2077 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()), !dbg !2082
  br label %2, !dbg !2083

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !2080, metadata !DIExpression()), !dbg !2082
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %3, !dbg !2085
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* %4) #9, !dbg !2088
  %5 = add nuw nsw i64 %3, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i32 undef, metadata !2080, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2082
  %6 = icmp eq i64 %5, 4, !dbg !2090
  br i1 %6, label %7, label %2, !dbg !2083, !llvm.loop !2091

7:                                                ; preds = %2
  ret void, !dbg !2093
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck*) local_unnamed_addr #0 !dbg !2094 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 0, metadata !2097, metadata !DIExpression()), !dbg !2099
  br label %2, !dbg !2100

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !2097, metadata !DIExpression()), !dbg !2099
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %3, !dbg !2102
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %4) #9, !dbg !2105
  %5 = add nuw nsw i64 %3, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i32 undef, metadata !2097, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2099
  %6 = icmp eq i64 %5, 4, !dbg !2107
  br i1 %6, label %7, label %2, !dbg !2100, !llvm.loop !2108

7:                                                ; preds = %2
  ret void, !dbg !2110
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !2111 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2117, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2119, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2120, metadata !DIExpression()), !dbg !2124
  br label %4, !dbg !2125

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2120, metadata !DIExpression()), !dbg !2124
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %5, !dbg !2127
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %5, !dbg !2130
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %5, !dbg !2131
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %6, %struct.poly* %7, %struct.poly* %8) #9, !dbg !2132
  %9 = add nuw nsw i64 %5, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i32 undef, metadata !2120, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2124
  %10 = icmp eq i64 %9, 4, !dbg !2134
  br i1 %10, label %11, label %4, !dbg !2125, !llvm.loop !2135

11:                                               ; preds = %4
  ret void, !dbg !2137
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !2138 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2142, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 0, metadata !2143, metadata !DIExpression()), !dbg !2147
  br label %4, !dbg !2148

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2143, metadata !DIExpression()), !dbg !2147
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %5, !dbg !2150
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %5, !dbg !2153
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %5, !dbg !2154
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* %6, %struct.poly* %7, %struct.poly* %8) #9, !dbg !2155
  %9 = add nuw nsw i64 %5, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 undef, metadata !2143, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2147
  %10 = icmp eq i64 %9, 4, !dbg !2157
  br i1 %10, label %11, label %4, !dbg !2148, !llvm.loop !2158

11:                                               ; preds = %4
  ret void, !dbg !2160
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(%struct.polyveck*) local_unnamed_addr #0 !dbg !2161 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2163, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()), !dbg !2166
  br label %2, !dbg !2167

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !2164, metadata !DIExpression()), !dbg !2166
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %3, !dbg !2169
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* %4) #9, !dbg !2172
  %5 = add nuw nsw i64 %3, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i32 undef, metadata !2164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2166
  %6 = icmp eq i64 %5, 4, !dbg !2174
  br i1 %6, label %7, label %2, !dbg !2167, !llvm.loop !2175

7:                                                ; preds = %2
  ret void, !dbg !2177
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck*) local_unnamed_addr #0 !dbg !2178 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2180, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 0, metadata !2181, metadata !DIExpression()), !dbg !2183
  br label %2, !dbg !2184

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !2181, metadata !DIExpression()), !dbg !2183
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %3, !dbg !2186
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %4) #9, !dbg !2189
  %5 = add nuw nsw i64 %3, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i32 undef, metadata !2181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2183
  %6 = icmp eq i64 %5, 4, !dbg !2191
  br i1 %6, label %7, label %2, !dbg !2184, !llvm.loop !2192

7:                                                ; preds = %2
  ret void, !dbg !2194
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(%struct.polyveck*) local_unnamed_addr #0 !dbg !2195 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 0, metadata !2198, metadata !DIExpression()), !dbg !2200
  br label %2, !dbg !2201

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !2198, metadata !DIExpression()), !dbg !2200
  %4 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %3, !dbg !2203
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %4) #9, !dbg !2206
  %5 = add nuw nsw i64 %3, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i32 undef, metadata !2198, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2200
  %6 = icmp eq i64 %5, 4, !dbg !2208
  br i1 %6, label %7, label %2, !dbg !2201, !llvm.loop !2209

7:                                                ; preds = %2
  ret void, !dbg !2211
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck*, i32) local_unnamed_addr #0 !dbg !2212 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %1, metadata !2217, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 0, metadata !2218, metadata !DIExpression()), !dbg !2221
  br label %5, !dbg !2222

3:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 undef, metadata !2218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2221
  %4 = icmp ult i64 %10, 4, !dbg !2224
  br i1 %4, label %5, label %11, !dbg !2222, !llvm.loop !2226

5:                                                ; preds = %2, %3
  %6 = phi i64 [ 0, %2 ], [ %10, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2218, metadata !DIExpression()), !dbg !2221
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %6, !dbg !2228
  %8 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %7, i32 %1) #9, !dbg !2231
  %9 = icmp eq i32 %8, 0, !dbg !2231
  %10 = add nuw nsw i64 %6, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 undef, metadata !2218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2221
  br i1 %9, label %3, label %11, !dbg !2233

11:                                               ; preds = %3, %5
  %12 = phi i32 [ 1, %5 ], [ 0, %3 ], !dbg !2234
  ret i32 %12, !dbg !2235
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !2236 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2240, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !2241, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2242, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2243, metadata !DIExpression()), !dbg !2247
  br label %4, !dbg !2248

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2243, metadata !DIExpression()), !dbg !2247
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %5, !dbg !2250
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %5, !dbg !2253
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %5, !dbg !2254
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* %6, %struct.poly* %7, %struct.poly* %8) #9, !dbg !2255
  %9 = add nuw nsw i64 %5, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i32 undef, metadata !2243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2247
  %10 = icmp eq i64 %9, 4, !dbg !2257
  br i1 %10, label %11, label %4, !dbg !2248, !llvm.loop !2258

11:                                               ; preds = %4
  ret void, !dbg !2260
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !2261 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2263, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !2264, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2265, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2270
  br label %4, !dbg !2271

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2266, metadata !DIExpression()), !dbg !2270
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %5, !dbg !2273
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %5, !dbg !2276
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %5, !dbg !2277
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* %6, %struct.poly* %7, %struct.poly* %8) #9, !dbg !2278
  %9 = add nuw nsw i64 %5, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i32 undef, metadata !2266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2270
  %10 = icmp eq i64 %9, 4, !dbg !2280
  br i1 %10, label %11, label %4, !dbg !2271, !llvm.loop !2281

11:                                               ; preds = %4
  ret void, !dbg !2283
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !2284 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2288, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !2289, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2290, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2292, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 0, metadata !2291, metadata !DIExpression()), !dbg !2297
  br label %4, !dbg !2298

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  %6 = phi i32 [ 0, %3 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2292, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %5, metadata !2291, metadata !DIExpression()), !dbg !2297
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %5, !dbg !2300
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %5, !dbg !2303
  %9 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %5, !dbg !2304
  %10 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* %7, %struct.poly* %8, %struct.poly* %9) #9, !dbg !2305
  %11 = add i32 %10, %6, !dbg !2306
  %12 = add nuw nsw i64 %5, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %11, metadata !2292, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 undef, metadata !2291, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2297
  %13 = icmp eq i64 %12, 4, !dbg !2308
  br i1 %13, label %14, label %4, !dbg !2298, !llvm.loop !2309

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %11, metadata !2292, metadata !DIExpression()), !dbg !2296
  ret i32 %11, !dbg !2311
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) local_unnamed_addr #0 !dbg !2312 {
  call void @llvm.dbg.value(metadata %struct.polyveck* %0, metadata !2314, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.polyveck* %1, metadata !2315, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2316, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 0, metadata !2317, metadata !DIExpression()), !dbg !2321
  br label %4, !dbg !2322

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %9, %4 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2317, metadata !DIExpression()), !dbg !2321
  %6 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %0, i64 0, i32 0, i64 %5, !dbg !2324
  %7 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %1, i64 0, i32 0, i64 %5, !dbg !2327
  %8 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %5, !dbg !2328
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* %6, %struct.poly* %7, %struct.poly* %8) #9, !dbg !2329
  %9 = add nuw nsw i64 %5, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i32 undef, metadata !2317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2321
  %10 = icmp eq i64 %9, 4, !dbg !2331
  br i1 %10, label %11, label %4, !dbg !2322, !llvm.loop !2332

11:                                               ; preds = %4
  ret void, !dbg !2334
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64) local_unnamed_addr #6 !dbg !2335 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  %2 = mul i64 %0, 4236238847, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %2, metadata !2340, metadata !DIExpression()), !dbg !2343
  %3 = and i64 %2, 4294967295, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %3, metadata !2340, metadata !DIExpression()), !dbg !2343
  %4 = mul nuw nsw i64 %3, 8380417, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %4, metadata !2340, metadata !DIExpression()), !dbg !2343
  %5 = add i64 %4, %0, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %5, metadata !2340, metadata !DIExpression()), !dbg !2343
  %6 = lshr i64 %5, 32, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %6, metadata !2340, metadata !DIExpression()), !dbg !2343
  %7 = trunc i64 %6 to i32, !dbg !2348
  ret i32 %7, !dbg !2349
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32) local_unnamed_addr #6 !dbg !2350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2356
  %2 = and i32 %0, 8388607, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %2, metadata !2355, metadata !DIExpression()), !dbg !2358
  %3 = lshr i32 %0, 23, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %3, metadata !2354, metadata !DIExpression()), !dbg !2356
  %4 = mul nuw nsw i32 %3, 8191, !dbg !2360
  %5 = add nuw nsw i32 %4, %2, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %5, metadata !2355, metadata !DIExpression()), !dbg !2358
  ret i32 %5, !dbg !2362
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32) local_unnamed_addr #6 !dbg !2363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2365, metadata !DIExpression()), !dbg !2366
  %2 = add i32 %0, -8380417, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %2, metadata !2365, metadata !DIExpression()), !dbg !2366
  %3 = ashr i32 %2, 31, !dbg !2368
  %4 = and i32 %3, 8380417, !dbg !2369
  %5 = add i32 %4, %2, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %5, metadata !2365, metadata !DIExpression()), !dbg !2366
  ret i32 %5, !dbg !2371
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_freeze(i32) local_unnamed_addr #6 !dbg !2372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2375
  %2 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32 %0), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %2, metadata !2374, metadata !DIExpression()), !dbg !2375
  %3 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32 %2), !dbg !2377
  call void @llvm.dbg.value(metadata i32 %3, metadata !2374, metadata !DIExpression()), !dbg !2375
  ret i32 %3, !dbg !2378
}

; Function Attrs: norecurse nounwind ssp uwtable writeonly
define i32 @PQCLEAN_DILITHIUM2_CLEAN_power2round(i32, i32* nocapture) local_unnamed_addr #7 !dbg !2379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32* %1, metadata !2384, metadata !DIExpression()), !dbg !2387
  %3 = and i32 %0, 16383, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %3, metadata !2385, metadata !DIExpression()), !dbg !2389
  %4 = add nsw i32 %3, -8193, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %4, metadata !2385, metadata !DIExpression()), !dbg !2389
  %5 = ashr i32 %4, 31, !dbg !2391
  %6 = and i32 %5, 16384, !dbg !2392
  %7 = add nsw i32 %6, %4, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %7, metadata !2385, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 undef, metadata !2385, metadata !DIExpression()), !dbg !2389
  %8 = add nsw i32 %7, 8372226, !dbg !2394
  store i32 %8, i32* %1, align 4, !dbg !2395, !tbaa !88
  %9 = add i32 %0, 8191, !dbg !2396
  %10 = sub i32 %9, %7, !dbg !2397
  %11 = lshr i32 %10, 14, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %11, metadata !2383, metadata !DIExpression()), !dbg !2386
  ret i32 %11, !dbg !2399
}

; Function Attrs: norecurse nounwind ssp uwtable writeonly
define i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32, i32* nocapture) local_unnamed_addr #7 !dbg !2400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32* %1, metadata !2403, metadata !DIExpression()), !dbg !2407
  %3 = and i32 %0, 524287, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %3, metadata !2404, metadata !DIExpression()), !dbg !2409
  %4 = lshr i32 %0, 19, !dbg !2410
  %5 = shl nuw nsw i32 %4, 9, !dbg !2411
  call void @llvm.dbg.value(metadata i32 undef, metadata !2404, metadata !DIExpression()), !dbg !2409
  %6 = add nsw i32 %3, -261889, !dbg !2412
  %7 = add nsw i32 %6, %5, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %7, metadata !2404, metadata !DIExpression()), !dbg !2409
  %8 = ashr i32 %7, 31, !dbg !2414
  %9 = and i32 %8, 523776, !dbg !2415
  %10 = add nsw i32 %9, %7, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %10, metadata !2404, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 undef, metadata !2404, metadata !DIExpression()), !dbg !2409
  %11 = add i32 %0, 261887, !dbg !2417
  %12 = sub i32 %11, %10, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %12, metadata !2402, metadata !DIExpression()), !dbg !2406
  %13 = add nsw i32 %12, -1, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %13, metadata !2405, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %13, metadata !2405, metadata !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value)), !dbg !2420
  %14 = lshr i32 %12, 19, !dbg !2421
  %15 = add nuw nsw i32 %14, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %15, metadata !2402, metadata !DIExpression()), !dbg !2406
  %16 = ashr i32 %13, 31
  %17 = add nsw i32 %15, %16, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %17, metadata !2402, metadata !DIExpression()), !dbg !2406
  %18 = add nsw i32 %10, 8118530, !dbg !2424
  %19 = lshr i32 %17, 4, !dbg !2425
  %20 = sub nsw i32 %18, %19, !dbg !2426
  store i32 %20, i32* %1, align 4, !dbg !2427, !tbaa !88
  %21 = and i32 %17, 15, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %21, metadata !2402, metadata !DIExpression()), !dbg !2406
  ret i32 %21, !dbg !2429
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_make_hint(i32, i32) local_unnamed_addr #6 !dbg !2430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 %1, metadata !2435, metadata !DIExpression()), !dbg !2437
  %3 = add i32 %0, -261889, !dbg !2438
  %4 = icmp ugt i32 %3, 7856640, !dbg !2438
  br i1 %4, label %10, label %5, !dbg !2438

5:                                                ; preds = %2
  %6 = icmp ne i32 %0, 8118529, !dbg !2440
  %7 = icmp ne i32 %1, 0, !dbg !2441
  %8 = or i1 %6, %7, !dbg !2442
  %9 = zext i1 %8 to i32, !dbg !2442
  ret i32 %9, !dbg !2442

10:                                               ; preds = %2
  ret i32 0, !dbg !2443
}

; Function Attrs: nounwind ssp uwtable writeonly
define i32 @PQCLEAN_DILITHIUM2_CLEAN_use_hint(i32, i32) local_unnamed_addr #8 !dbg !2444 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %1, metadata !2449, metadata !DIExpression()), !dbg !2453
  %4 = bitcast i32* %3 to i8*, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9, !dbg !2454
  call void @llvm.dbg.value(metadata i32* %3, metadata !2450, metadata !DIExpression(DW_OP_deref)), !dbg !2455
  %5 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32 %0, i32* nonnull %3), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %5, metadata !2451, metadata !DIExpression()), !dbg !2457
  %6 = icmp eq i32 %1, 0, !dbg !2458
  br i1 %6, label %16, label %7, !dbg !2460

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4, !dbg !2461, !tbaa !88
  call void @llvm.dbg.value(metadata i32 %8, metadata !2450, metadata !DIExpression()), !dbg !2455
  %9 = icmp ugt i32 %8, 8380417, !dbg !2463
  br i1 %9, label %10, label %13, !dbg !2464

10:                                               ; preds = %7
  %11 = add i32 %5, 1, !dbg !2465
  %12 = and i32 %11, 15, !dbg !2467
  br label %16, !dbg !2468

13:                                               ; preds = %7
  %14 = add i32 %5, 15, !dbg !2469
  %15 = and i32 %14, 15, !dbg !2470
  br label %16, !dbg !2471

16:                                               ; preds = %2, %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ], [ %5, %2 ], !dbg !2472
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9, !dbg !2473
  ret i32 %17, !dbg !2473
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl*, i8*) local_unnamed_addr #0 !dbg !2474 {
  call void @llvm.dbg.value(metadata %struct.polyvecl* %0, metadata !2488, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 0, metadata !2490, metadata !DIExpression()), !dbg !2494
  br label %3, !dbg !2495

3:                                                ; preds = %16, %2
  %4 = phi i64 [ 0, %2 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2491, metadata !DIExpression()), !dbg !2497
  %5 = trunc i64 %4 to i32, !dbg !2498
  %6 = shl i32 %5, 8, !dbg !2498
  br label %7, !dbg !2504

7:                                                ; preds = %7, %3
  %8 = phi i64 [ 0, %3 ], [ %13, %7 ]
  %9 = phi i32 [ 0, %3 ], [ %14, %7 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !2491, metadata !DIExpression()), !dbg !2497
  %10 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %0, i64 %4, i32 0, i64 %8, !dbg !2505
  %11 = add nuw nsw i32 %9, %6, !dbg !2506
  %12 = trunc i32 %11 to i16, !dbg !2507
  tail call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %10, i8* %1, i16 zeroext %12) #9, !dbg !2508
  %13 = add nuw nsw i64 %8, 1, !dbg !2509
  %14 = add nuw nsw i32 %9, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %14, metadata !2491, metadata !DIExpression()), !dbg !2497
  %15 = icmp eq i64 %13, 3, !dbg !2510
  br i1 %15, label %16, label %7, !dbg !2504, !llvm.loop !2511

16:                                               ; preds = %7
  %17 = add nuw nsw i64 %4, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i32 undef, metadata !2490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2494
  %18 = icmp eq i64 %17, 4, !dbg !2514
  br i1 %18, label %19, label %3, !dbg !2495, !llvm.loop !2515

19:                                               ; preds = %16
  ret void, !dbg !2517
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* nocapture, i8* nocapture readonly, %struct.polyveck*) local_unnamed_addr #0 !dbg !2518 {
  %4 = alloca [560 x i8], align 16
  %5 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 0
  %6 = alloca [136 x i8], align 16
  %7 = alloca %struct.shake128ctx, align 8
  call void @llvm.dbg.value(metadata %struct.poly* %0, metadata !2530, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %1, metadata !2531, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %struct.polyveck* %2, metadata !2532, metadata !DIExpression()), !dbg !2552
  %8 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 0, !dbg !2553
  call void @llvm.lifetime.start.p0i8(i64 560, i8* nonnull %8) #9, !dbg !2553
  call void @llvm.dbg.declare(metadata [560 x i8]* %4, metadata !2537, metadata !DIExpression()), !dbg !2554
  %9 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 0, !dbg !2555
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %9) #9, !dbg !2555
  call void @llvm.dbg.declare(metadata [136 x i8]* %6, metadata !2541, metadata !DIExpression()), !dbg !2556
  %10 = bitcast %struct.shake128ctx* %7 to i8*, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %10) #9, !dbg !2557
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* align 1 %1, i64 48, i1 false), !dbg !2559
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2558
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression()), !dbg !2558
  %11 = bitcast %struct.poly* %0 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2558
  %12 = getelementptr inbounds [560 x i8], [560 x i8]* %4, i64 0, i64 48, !dbg !2563
  br label %13, !dbg !2567

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %18, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2533, metadata !DIExpression()), !dbg !2558
  %15 = shl i64 %14, 7, !dbg !2568
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !2569
  %17 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %2, i64 0, i32 0, i64 %14, !dbg !2570
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* nonnull %16, %struct.poly* %17) #9, !dbg !2571
  %18 = add nuw nsw i64 %14, 1, !dbg !2572
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2558
  %19 = icmp eq i64 %18, 4, !dbg !2573
  br i1 %19, label %20, label %13, !dbg !2567, !llvm.loop !2574

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %7, metadata !2545, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  call void @shake256_absorb(%struct.shake128ctx* nonnull %7, i8* nonnull %8, i64 560) #9, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %7, metadata !2545, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  call void @shake256_squeezeblocks(i8* nonnull %9, i64 1, %struct.shake128ctx* nonnull %7) #9, !dbg !2578
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2558
  br label %21, !dbg !2580

21:                                               ; preds = %21, %20
  %22 = phi i64 [ 0, %20 ], [ %30, %21 ]
  %23 = phi i64 [ 0, %20 ], [ %29, %21 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !2536, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %22, metadata !2533, metadata !DIExpression()), !dbg !2558
  %24 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 %22, !dbg !2582
  %25 = load i8, i8* %24, align 1, !dbg !2582, !tbaa !231
  %26 = zext i8 %25 to i64, !dbg !2585
  %27 = shl i64 %22, 3, !dbg !2586
  %28 = shl i64 %26, %27, !dbg !2587
  %29 = or i64 %28, %23, !dbg !2588
  %30 = add nuw nsw i64 %22, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %29, metadata !2536, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2558
  %31 = icmp eq i64 %30, 8, !dbg !2590
  br i1 %31, label %32, label %21, !dbg !2580, !llvm.loop !2591

32:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %29, metadata !2536, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2558
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 1024, i1 false), !dbg !2593
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2558
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression()), !dbg !2558
  br label %33, !dbg !2597

33:                                               ; preds = %49, %32
  %34 = phi i64 [ 196, %32 ], [ %60, %49 ]
  %35 = phi i64 [ %29, %32 ], [ %59, %49 ]
  %36 = phi i32 [ 8, %32 ], [ %43, %49 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !2536, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %36, metadata !2535, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %34, metadata !2533, metadata !DIExpression()), !dbg !2558
  br label %37, !dbg !2597

37:                                               ; preds = %33, %41
  %38 = phi i32 [ %43, %41 ], [ %36, %33 ], !dbg !2604
  call void @llvm.dbg.value(metadata i32 %38, metadata !2535, metadata !DIExpression()), !dbg !2603
  %39 = icmp ugt i32 %38, 135, !dbg !2597
  br i1 %39, label %40, label %41, !dbg !2605

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %7, metadata !2545, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  call void @shake256_squeezeblocks(i8* nonnull %9, i64 1, %struct.shake128ctx* nonnull %7) #9, !dbg !2606
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2603
  br label %41, !dbg !2608

41:                                               ; preds = %40, %37
  %42 = phi i32 [ 0, %40 ], [ %38, %37 ], !dbg !2604
  call void @llvm.dbg.value(metadata i32 %42, metadata !2535, metadata !DIExpression()), !dbg !2603
  %43 = add i32 %42, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %43, metadata !2535, metadata !DIExpression()), !dbg !2603
  %44 = zext i32 %42 to i64, !dbg !2610
  %45 = getelementptr inbounds [136 x i8], [136 x i8]* %6, i64 0, i64 %44, !dbg !2610
  %46 = load i8, i8* %45, align 1, !dbg !2610, !tbaa !231
  %47 = zext i8 %46 to i64, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %47, metadata !2534, metadata !DIExpression()), !dbg !2612
  %48 = icmp ult i64 %34, %47, !dbg !2611
  br i1 %48, label %37, label %49, !dbg !2613, !llvm.loop !2614

49:                                               ; preds = %41
  %50 = zext i8 %46 to i64, !dbg !2617
  %51 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %50, !dbg !2617
  %52 = load i32, i32* %51, align 4, !dbg !2617, !tbaa !88
  %53 = getelementptr inbounds %struct.poly, %struct.poly* %0, i64 0, i32 0, i64 %34, !dbg !2618
  store i32 %52, i32* %53, align 4, !dbg !2619, !tbaa !88
  %54 = trunc i64 %35 to i32, !dbg !2620
  %55 = and i32 %54, 1, !dbg !2621
  %56 = sub nsw i32 0, %55, !dbg !2622
  %57 = and i32 %56, 8380417, !dbg !2623
  %58 = xor i32 %57, 1, !dbg !2624
  store i32 %58, i32* %51, align 4, !dbg !2624, !tbaa !88
  %59 = lshr i64 %35, 1, !dbg !2625
  %60 = add nuw nsw i64 %34, 1, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %59, metadata !2536, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %43, metadata !2535, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 undef, metadata !2533, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2558
  %61 = icmp eq i64 %60, 256, !dbg !2627
  br i1 %61, label %62, label %33, !dbg !2628, !llvm.loop !2629

62:                                               ; preds = %49
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %10) #9, !dbg !2631
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %9) #9, !dbg !2631
  call void @llvm.lifetime.end.p0i8(i64 560, i8* nonnull %8) #9, !dbg !2631
  ret void, !dbg !2631
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

declare void @shake256_absorb(%struct.shake128ctx*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_keypair(i8*, i8*) local_unnamed_addr #0 !dbg !2632 {
  %3 = alloca [96 x i8], align 16
  %4 = alloca [48 x i8], align 16
  %5 = alloca [4 x %struct.polyvecl], align 16
  %6 = alloca %struct.polyvecl, align 4
  %7 = alloca %struct.polyvecl, align 4
  %8 = alloca %struct.polyveck, align 4
  %9 = alloca %struct.polyveck, align 4
  %10 = alloca %struct.polyveck, align 4
  %11 = alloca %struct.polyveck, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2638, metadata !DIExpression()), !dbg !2661
  %12 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 0, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %12) #9, !dbg !2662
  call void @llvm.dbg.declare(metadata [96 x i8]* %3, metadata !2640, metadata !DIExpression()), !dbg !2663
  %13 = getelementptr inbounds [48 x i8], [48 x i8]* %4, i64 0, i64 0, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %13) #9, !dbg !2664
  call void @llvm.dbg.declare(metadata [48 x i8]* %4, metadata !2644, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i16 0, metadata !2651, metadata !DIExpression()), !dbg !2666
  %14 = bitcast [4 x %struct.polyvecl]* %5 to i8*, !dbg !2667
  call void @llvm.lifetime.start.p0i8(i64 12288, i8* nonnull %14) #9, !dbg !2667
  call void @llvm.dbg.declare(metadata [4 x %struct.polyvecl]* %5, metadata !2652, metadata !DIExpression()), !dbg !2668
  %15 = bitcast %struct.polyvecl* %6 to i8*, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %15) #9, !dbg !2669
  %16 = bitcast %struct.polyvecl* %7 to i8*, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %16) #9, !dbg !2669
  %17 = bitcast %struct.polyveck* %8 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %17) #9, !dbg !2670
  %18 = bitcast %struct.polyveck* %9 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %18) #9, !dbg !2670
  %19 = bitcast %struct.polyveck* %10 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %19) #9, !dbg !2670
  %20 = bitcast %struct.polyveck* %11 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %20) #9, !dbg !2670
  %21 = call i32 @randombytes(i8* nonnull %12, i64 96) #9, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %12, metadata !2648, metadata !DIExpression()), !dbg !2672
  %22 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 32, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %22, metadata !2649, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %32, metadata !2650, metadata !DIExpression()), !dbg !2675
  %23 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %5, i64 0, i64 0, !dbg !2676
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* nonnull %23, i8* nonnull %12), !dbg !2677
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i16 0, metadata !2651, metadata !DIExpression()), !dbg !2666
  br label %24, !dbg !2679

24:                                               ; preds = %24, %2
  %25 = phi i64 [ 0, %2 ], [ %29, %24 ]
  %26 = phi i16 [ 0, %2 ], [ %28, %24 ]
  call void @llvm.dbg.value(metadata i16 %26, metadata !2651, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %25, metadata !2639, metadata !DIExpression()), !dbg !2678
  %27 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %6, i64 0, i32 0, i64 %25, !dbg !2681
  %28 = add nuw nsw i16 %26, 1, !dbg !2684
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* nonnull %27, i8* nonnull %22, i16 zeroext %26) #9, !dbg !2685
  %29 = add nuw nsw i64 %25, 1, !dbg !2686
  call void @llvm.dbg.value(metadata i16 %28, metadata !2651, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 undef, metadata !2639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2678
  %30 = icmp eq i64 %29, 3, !dbg !2687
  br i1 %30, label %31, label %24, !dbg !2679, !llvm.loop !2688

31:                                               ; preds = %24
  %32 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 64, !dbg !2690
  br label %33, !dbg !2691

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %38, %33 ]
  %35 = phi i16 [ 3, %31 ], [ %37, %33 ]
  call void @llvm.dbg.value(metadata i16 %35, metadata !2651, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %34, metadata !2639, metadata !DIExpression()), !dbg !2678
  %36 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %8, i64 0, i32 0, i64 %34, !dbg !2691
  %37 = add i16 %35, 1, !dbg !2695
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* nonnull %36, i8* nonnull %22, i16 zeroext %35) #9, !dbg !2696
  %38 = add nuw nsw i64 %34, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i16 %37, metadata !2651, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 undef, metadata !2639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2678
  %39 = icmp eq i64 %38, 4, !dbg !2698
  br i1 %39, label %40, label %33, !dbg !2699, !llvm.loop !2700

40:                                               ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %16, i8* nonnull align 4 %15, i64 3072, i1 false), !dbg !2702, !tbaa.struct !2703
  call void @llvm.dbg.value(metadata %struct.polyvecl* %7, metadata !2655, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %7) #9, !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()), !dbg !2678
  br label %41, !dbg !2706

41:                                               ; preds = %41, %40
  %42 = phi i64 [ 0, %40 ], [ %45, %41 ]
  call void @llvm.dbg.value(metadata i64 %42, metadata !2639, metadata !DIExpression()), !dbg !2678
  %43 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %9, i64 0, i32 0, i64 %42, !dbg !2708
  %44 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %5, i64 0, i64 %42, !dbg !2711
  call void @llvm.dbg.value(metadata %struct.polyvecl* %7, metadata !2655, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* nonnull %43, %struct.polyvecl* nonnull %44, %struct.polyvecl* nonnull %7) #9, !dbg !2712
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* nonnull %43) #9, !dbg !2713
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* nonnull %43) #9, !dbg !2714
  %45 = add nuw nsw i64 %42, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 undef, metadata !2639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2678
  %46 = icmp eq i64 %45, 4, !dbg !2716
  br i1 %46, label %47, label %41, !dbg !2706, !llvm.loop !2717

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %struct.polyveck* %8, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2719
  call void @llvm.dbg.value(metadata %struct.polyveck* %9, metadata !2657, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.polyveck* %9, metadata !2657, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck* nonnull %9, %struct.polyveck* nonnull %9, %struct.polyveck* nonnull %8) #9, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.polyveck* %9, metadata !2657, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck* nonnull %9) #9, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.polyveck* %9, metadata !2657, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.polyveck* %10, metadata !2658, metadata !DIExpression(DW_OP_deref)), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.polyveck* %11, metadata !2659, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(%struct.polyveck* nonnull %10, %struct.polyveck* nonnull %11, %struct.polyveck* nonnull %9) #9, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.polyveck* %10, metadata !2658, metadata !DIExpression(DW_OP_deref)), !dbg !2723
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_pk(i8* %0, i8* nonnull %12, %struct.polyveck* nonnull %10) #9, !dbg !2726
  call void @shake256(i8* nonnull %13, i64 48, i8* %0, i64 1184) #9, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.polyvecl* %6, metadata !2654, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call void @llvm.dbg.value(metadata %struct.polyveck* %8, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2719
  call void @llvm.dbg.value(metadata %struct.polyveck* %11, metadata !2659, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_sk(i8* %1, i8* nonnull %12, i8* nonnull %32, i8* nonnull %13, %struct.polyvecl* nonnull %6, %struct.polyveck* nonnull %8, %struct.polyveck* nonnull %11) #9, !dbg !2729
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %20) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %19) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %18) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %17) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %16) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %15) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 12288, i8* nonnull %14) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %13) #9, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %12) #9, !dbg !2730
  ret i32 0, !dbg !2731
}

declare i32 @randombytes(i8*, i64) local_unnamed_addr #5

declare void @shake256(i8*, i64, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(i8*, i64* nocapture, i8*, i64, i8*) local_unnamed_addr #0 !dbg !2732 {
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
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64* %1, metadata !2740, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %2, metadata !2741, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %3, metadata !2742, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %4, metadata !2743, metadata !DIExpression()), !dbg !2783
  %23 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 0, !dbg !2784
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %23) #9, !dbg !2784
  call void @llvm.dbg.declare(metadata [208 x i8]* %6, metadata !2746, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i16 0, metadata !2755, metadata !DIExpression()), !dbg !2786
  %24 = bitcast %struct.poly* %7 to i8*, !dbg !2787
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %24) #9, !dbg !2787
  %25 = bitcast %struct.poly* %8 to i8*, !dbg !2787
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %25) #9, !dbg !2787
  %26 = bitcast [4 x %struct.polyvecl]* %9 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 12288, i8* nonnull %26) #9, !dbg !2788
  call void @llvm.dbg.declare(metadata [4 x %struct.polyvecl]* %9, metadata !2758, metadata !DIExpression()), !dbg !2789
  %27 = bitcast %struct.polyvecl* %10 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %27) #9, !dbg !2788
  %28 = bitcast %struct.polyvecl* %11 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %28) #9, !dbg !2788
  %29 = bitcast %struct.polyvecl* %12 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %29) #9, !dbg !2788
  %30 = bitcast %struct.polyvecl* %13 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %30) #9, !dbg !2788
  %31 = bitcast %struct.polyveck* %14 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %31) #9, !dbg !2790
  %32 = bitcast %struct.polyveck* %15 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %32) #9, !dbg !2790
  %33 = bitcast %struct.polyveck* %16 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %33) #9, !dbg !2790
  %34 = bitcast %struct.polyveck* %17 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %34) #9, !dbg !2790
  %35 = bitcast %struct.polyveck* %18 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %35) #9, !dbg !2790
  %36 = bitcast %struct.polyveck* %19 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %36) #9, !dbg !2791
  %37 = bitcast %struct.polyveck* %20 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %37) #9, !dbg !2791
  %38 = bitcast %struct.polyveck* %21 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %38) #9, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %23, metadata !2750, metadata !DIExpression()), !dbg !2792
  %39 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 32, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %39, metadata !2751, metadata !DIExpression()), !dbg !2794
  %40 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 80, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %40, metadata !2752, metadata !DIExpression()), !dbg !2796
  %41 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 112, !dbg !2797
  call void @llvm.dbg.value(metadata i8* %41, metadata !2753, metadata !DIExpression()), !dbg !2798
  %42 = getelementptr inbounds [208 x i8], [208 x i8]* %6, i64 0, i64 160, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %42, metadata !2754, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata %struct.polyvecl* %10, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2801
  call void @llvm.dbg.value(metadata %struct.polyveck* %14, metadata !2763, metadata !DIExpression(DW_OP_deref)), !dbg !2802
  call void @llvm.dbg.value(metadata %struct.polyveck* %15, metadata !2764, metadata !DIExpression(DW_OP_deref)), !dbg !2803
  call void @PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(i8* nonnull %23, i8* nonnull %40, i8* nonnull %39, %struct.polyvecl* nonnull %10, %struct.polyveck* nonnull %15, %struct.polyveck* nonnull %14, i8* %4) #9, !dbg !2804
  %43 = bitcast %struct.shake256incctx* %22 to i8*, !dbg !2805
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %43) #9, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %22, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @shake256_inc_init(%struct.shake256incctx* nonnull %22) #9, !dbg !2807
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %22, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %22, i8* nonnull %39, i64 48) #9, !dbg !2808
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %22, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %22, i8* %2, i64 %3) #9, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %22, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @shake256_inc_finalize(%struct.shake256incctx* nonnull %22) #9, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %22, metadata !2771, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @shake256_inc_squeeze(i8* nonnull %41, i64 48, %struct.shake256incctx* nonnull %22) #9, !dbg !2811
  call void @shake256(i8* nonnull %42, i64 48, i8* nonnull %40, i64 80) #9, !dbg !2812
  %44 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %9, i64 0, i64 0, !dbg !2813
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* nonnull %44, i8* nonnull %23), !dbg !2814
  call void @llvm.dbg.value(metadata %struct.polyvecl* %10, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2801
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %10) #9, !dbg !2815
  call void @llvm.dbg.value(metadata %struct.polyveck* %15, metadata !2764, metadata !DIExpression(DW_OP_deref)), !dbg !2803
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* nonnull %15) #9, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.polyveck* %14, metadata !2763, metadata !DIExpression(DW_OP_deref)), !dbg !2802
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* nonnull %14) #9, !dbg !2817
  br label %45, !dbg !2817

45:                                               ; preds = %52, %5
  %46 = phi i16 [ 0, %5 ], [ %49, %52 ]
  %47 = phi i64 [ 0, %5 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata i16 %46, metadata !2755, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %47, metadata !2744, metadata !DIExpression()), !dbg !2818
  %48 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %11, i64 0, i32 0, i64 %47, !dbg !2819
  %49 = add i16 %46, 1, !dbg !2823
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* nonnull %48, i8* nonnull %42, i16 zeroext %46) #9, !dbg !2824
  %50 = add nuw nsw i64 %47, 1, !dbg !2825
  call void @llvm.dbg.value(metadata i16 %49, metadata !2755, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %50, metadata !2744, metadata !DIExpression()), !dbg !2818
  %51 = icmp eq i64 %50, 3, !dbg !2826
  br i1 %51, label %54, label %52, !dbg !2827

52:                                               ; preds = %45, %89, %68, %77, %86
  %53 = phi i64 [ %50, %45 ], [ 0, %89 ], [ 0, %68 ], [ 0, %77 ], [ 0, %86 ]
  br label %45, !dbg !2786, !llvm.loop !2828

54:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i16 %49, metadata !2755, metadata !DIExpression()), !dbg !2786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %29, i8* nonnull align 4 %28, i64 3072, i1 false), !dbg !2830, !tbaa.struct !2703
  call void @llvm.dbg.value(metadata %struct.polyvecl* %12, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2831
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %12) #9, !dbg !2832
  call void @llvm.dbg.value(metadata i64 0, metadata !2744, metadata !DIExpression()), !dbg !2818
  br label %55, !dbg !2833

55:                                               ; preds = %55, %54
  %56 = phi i64 [ 0, %54 ], [ %59, %55 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !2744, metadata !DIExpression()), !dbg !2818
  %57 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 %56, !dbg !2835
  %58 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %9, i64 0, i64 %56, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.polyvecl* %12, metadata !2761, metadata !DIExpression(DW_OP_deref)), !dbg !2831
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* nonnull %57, %struct.polyvecl* nonnull %58, %struct.polyvecl* nonnull %12) #9, !dbg !2839
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* nonnull %57) #9, !dbg !2840
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* nonnull %57) #9, !dbg !2841
  %59 = add nuw nsw i64 %56, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %59, metadata !2744, metadata !DIExpression()), !dbg !2818
  %60 = icmp eq i64 %59, 4, !dbg !2843
  br i1 %60, label %61, label %55, !dbg !2833, !llvm.loop !2844

61:                                               ; preds = %55
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2765, metadata !DIExpression(DW_OP_deref)), !dbg !2846
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %16) #9, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2765, metadata !DIExpression(DW_OP_deref)), !dbg !2846
  call void @llvm.dbg.value(metadata %struct.polyveck* %17, metadata !2766, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(%struct.polyveck* nonnull %17, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %16) #9, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.poly* %7, metadata !2756, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  call void @llvm.dbg.value(metadata %struct.polyveck* %17, metadata !2766, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  call void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* nonnull %7, i8* nonnull %41, %struct.polyveck* nonnull %17), !dbg !2852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %25, i8* nonnull align 4 %24, i64 1024, i1 false), !dbg !2853, !tbaa.struct !2854
  call void @llvm.dbg.value(metadata %struct.poly* %8, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2855
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* nonnull %8) #9, !dbg !2856
  call void @llvm.dbg.value(metadata i64 0, metadata !2744, metadata !DIExpression()), !dbg !2818
  br label %62, !dbg !2857

62:                                               ; preds = %62, %61
  %63 = phi i64 [ 0, %61 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !2744, metadata !DIExpression()), !dbg !2818
  %64 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i64 0, i32 0, i64 %63, !dbg !2859
  %65 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i64 0, i32 0, i64 %63, !dbg !2862
  call void @llvm.dbg.value(metadata %struct.poly* %8, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2855
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %64, %struct.poly* nonnull %8, %struct.poly* nonnull %65) #9, !dbg !2863
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* nonnull %64) #9, !dbg !2864
  %66 = add nuw nsw i64 %63, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %66, metadata !2744, metadata !DIExpression()), !dbg !2818
  %67 = icmp eq i64 %66, 4, !dbg !2866
  br i1 %67, label %68, label %62, !dbg !2857, !llvm.loop !2867

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @llvm.dbg.value(metadata %struct.polyveck* %20, metadata !2769, metadata !DIExpression(DW_OP_deref)), !dbg !2869
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck* nonnull %18, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %20) #9, !dbg !2870
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck* nonnull %18) #9, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  %69 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck* nonnull %18, i32 261563) #9, !dbg !2872
  %70 = icmp eq i32 %69, 0, !dbg !2872
  br i1 %70, label %71, label %52, !dbg !2874

71:                                               ; preds = %68, %71
  %72 = phi i64 [ %75, %71 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !2744, metadata !DIExpression()), !dbg !2818
  %73 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i64 0, i32 0, i64 %72, !dbg !2875
  %74 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i64 0, i32 0, i64 %72, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.poly* %8, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2855
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %73, %struct.poly* nonnull %8, %struct.poly* nonnull %74) #9, !dbg !2880
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* nonnull %73) #9, !dbg !2881
  %75 = add nuw nsw i64 %72, 1, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %75, metadata !2744, metadata !DIExpression()), !dbg !2818
  %76 = icmp eq i64 %75, 3, !dbg !2883
  br i1 %76, label %77, label %71, !dbg !2884, !llvm.loop !2885

77:                                               ; preds = %71
  call void @llvm.dbg.value(metadata %struct.polyvecl* %11, metadata !2760, metadata !DIExpression(DW_OP_deref)), !dbg !2887
  call void @llvm.dbg.value(metadata %struct.polyvecl* %13, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  call void @llvm.dbg.value(metadata %struct.polyvecl* %13, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(%struct.polyvecl* nonnull %13, %struct.polyvecl* nonnull %13, %struct.polyvecl* nonnull %11) #9, !dbg !2889
  call void @llvm.dbg.value(metadata %struct.polyvecl* %13, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(%struct.polyvecl* nonnull %13) #9, !dbg !2890
  call void @llvm.dbg.value(metadata %struct.polyvecl* %13, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  %78 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl* nonnull %13, i32 523451) #9, !dbg !2891
  %79 = icmp eq i32 %78, 0, !dbg !2891
  br i1 %79, label %80, label %52, !dbg !2893

80:                                               ; preds = %77, %80
  %81 = phi i64 [ %84, %80 ], [ 0, %77 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !2744, metadata !DIExpression()), !dbg !2818
  %82 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %21, i64 0, i32 0, i64 %81, !dbg !2894
  %83 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i64 0, i32 0, i64 %81, !dbg !2898
  call void @llvm.dbg.value(metadata %struct.poly* %8, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2855
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %82, %struct.poly* nonnull %8, %struct.poly* nonnull %83) #9, !dbg !2899
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* nonnull %82) #9, !dbg !2900
  %84 = add nuw nsw i64 %81, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %84, metadata !2744, metadata !DIExpression()), !dbg !2818
  %85 = icmp eq i64 %84, 4, !dbg !2902
  br i1 %85, label %86, label %80, !dbg !2903, !llvm.loop !2904

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata %struct.polyveck* %21, metadata !2770, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %21) #9, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.polyveck* %21, metadata !2770, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  %87 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck* nonnull %21, i32 261888) #9, !dbg !2908
  %88 = icmp eq i32 %87, 0, !dbg !2908
  br i1 %88, label %89, label %52, !dbg !2910

89:                                               ; preds = %86
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @llvm.dbg.value(metadata %struct.polyveck* %21, metadata !2770, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck* nonnull %18, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %21) #9, !dbg !2911
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %18) #9, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.polyveck* %17, metadata !2766, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  call void @llvm.dbg.value(metadata %struct.polyveck* %18, metadata !2767, metadata !DIExpression(DW_OP_deref)), !dbg !2849
  call void @llvm.dbg.value(metadata %struct.polyveck* %19, metadata !2768, metadata !DIExpression(DW_OP_deref)), !dbg !2913
  %90 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(%struct.polyveck* nonnull %19, %struct.polyveck* nonnull %18, %struct.polyveck* nonnull %17) #9, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %90, metadata !2745, metadata !DIExpression()), !dbg !2915
  %91 = icmp ugt i32 %90, 80, !dbg !2916
  br i1 %91, label %52, label %92, !dbg !2918

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata %struct.poly* %7, metadata !2756, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  call void @llvm.dbg.value(metadata %struct.polyvecl* %13, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2888
  call void @llvm.dbg.value(metadata %struct.polyveck* %19, metadata !2768, metadata !DIExpression(DW_OP_deref)), !dbg !2913
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_sig(i8* %0, %struct.polyvecl* nonnull %13, %struct.polyveck* nonnull %19, %struct.poly* nonnull %7) #9, !dbg !2919
  store i64 2044, i64* %1, align 8, !dbg !2920, !tbaa !2921
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %43) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %38) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %37) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %36) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %35) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %34) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %33) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %32) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %31) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %30) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %29) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %28) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %27) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 12288, i8* nonnull %26) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %25) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #9, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %23) #9, !dbg !2923
  ret i32 0, !dbg !2924
}

declare void @shake256_inc_init(%struct.shake256incctx*) local_unnamed_addr #5

declare void @shake256_inc_absorb(%struct.shake256incctx*, i8*, i64) local_unnamed_addr #5

declare void @shake256_inc_finalize(%struct.shake256incctx*) local_unnamed_addr #5

declare void @shake256_inc_squeeze(i8*, i64, %struct.shake256incctx*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(i8*, i64, i8*, i64, i8*) local_unnamed_addr #0 !dbg !2925 {
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
  call void @llvm.dbg.value(metadata i8* %0, metadata !2929, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %3, metadata !2932, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %4, metadata !2933, metadata !DIExpression()), !dbg !2955
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !2956
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #9, !dbg !2956
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !2935, metadata !DIExpression()), !dbg !2957
  %20 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0, !dbg !2958
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %20) #9, !dbg !2958
  call void @llvm.dbg.declare(metadata [48 x i8]* %7, metadata !2939, metadata !DIExpression()), !dbg !2959
  %21 = bitcast %struct.poly* %8 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %21) #9, !dbg !2960
  %22 = bitcast %struct.poly* %9 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %22) #9, !dbg !2960
  %23 = bitcast %struct.poly* %10 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %23) #9, !dbg !2960
  %24 = bitcast [4 x %struct.polyvecl]* %11 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 12288, i8* nonnull %24) #9, !dbg !2961
  call void @llvm.dbg.declare(metadata [4 x %struct.polyvecl]* %11, metadata !2943, metadata !DIExpression()), !dbg !2962
  %25 = bitcast %struct.polyvecl* %12 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %25) #9, !dbg !2961
  %26 = bitcast %struct.polyveck* %13 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %26) #9, !dbg !2963
  %27 = bitcast %struct.polyveck* %14 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %27) #9, !dbg !2963
  %28 = bitcast %struct.polyveck* %15 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %28) #9, !dbg !2963
  %29 = bitcast %struct.polyveck* %16 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %29) #9, !dbg !2963
  %30 = bitcast %struct.polyveck* %17 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %30) #9, !dbg !2963
  %31 = icmp ult i64 %1, 2044, !dbg !2964
  br i1 %31, label %67, label %32, !dbg !2966

32:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.polyveck* %13, metadata !2945, metadata !DIExpression(DW_OP_deref)), !dbg !2967
  call void @PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(i8* nonnull %19, %struct.polyveck* nonnull %13, i8* %4) #9, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.poly* %8, metadata !2940, metadata !DIExpression(DW_OP_deref)), !dbg !2969
  call void @llvm.dbg.value(metadata %struct.polyvecl* %12, metadata !2944, metadata !DIExpression(DW_OP_deref)), !dbg !2970
  call void @llvm.dbg.value(metadata %struct.polyveck* %15, metadata !2947, metadata !DIExpression(DW_OP_deref)), !dbg !2971
  %33 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(%struct.polyvecl* nonnull %12, %struct.polyveck* nonnull %15, %struct.poly* nonnull %8, i8* %0) #9, !dbg !2972
  %34 = icmp eq i32 %33, 0, !dbg !2972
  br i1 %34, label %35, label %67, !dbg !2974

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %struct.polyvecl* %12, metadata !2944, metadata !DIExpression(DW_OP_deref)), !dbg !2970
  %36 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl* nonnull %12, i32 523451) #9, !dbg !2975
  %37 = icmp eq i32 %36, 0, !dbg !2975
  br i1 %37, label %38, label %67, !dbg !2977

38:                                               ; preds = %35
  call void @shake256(i8* nonnull %20, i64 48, i8* %4, i64 1184) #9, !dbg !2978
  %39 = bitcast %struct.shake256incctx* %18 to i8*, !dbg !2979
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %39) #9, !dbg !2979
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %18, metadata !2950, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  call void @shake256_inc_init(%struct.shake256incctx* nonnull %18) #9, !dbg !2981
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %18, metadata !2950, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %18, i8* nonnull %20, i64 48) #9, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %18, metadata !2950, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  call void @shake256_inc_absorb(%struct.shake256incctx* nonnull %18, i8* %2, i64 %3) #9, !dbg !2983
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %18, metadata !2950, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  call void @shake256_inc_finalize(%struct.shake256incctx* nonnull %18) #9, !dbg !2984
  call void @llvm.dbg.value(metadata %struct.shake256incctx* %18, metadata !2950, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  call void @shake256_inc_squeeze(i8* nonnull %20, i64 48, %struct.shake256incctx* nonnull %18) #9, !dbg !2985
  %40 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %11, i64 0, i64 0, !dbg !2986
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* nonnull %40, i8* nonnull %19), !dbg !2987
  call void @llvm.dbg.value(metadata %struct.polyvecl* %12, metadata !2944, metadata !DIExpression(DW_OP_deref)), !dbg !2970
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* nonnull %12) #9, !dbg !2988
  call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !2989
  br label %41, !dbg !2990

41:                                               ; preds = %41, %38
  %42 = phi i64 [ 0, %38 ], [ %45, %41 ]
  call void @llvm.dbg.value(metadata i64 %42, metadata !2934, metadata !DIExpression()), !dbg !2989
  %43 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i64 0, i32 0, i64 %42, !dbg !2992
  %44 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %11, i64 0, i64 %42, !dbg !2995
  call void @llvm.dbg.value(metadata %struct.polyvecl* %12, metadata !2944, metadata !DIExpression(DW_OP_deref)), !dbg !2970
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* nonnull %43, %struct.polyvecl* nonnull %44, %struct.polyvecl* nonnull %12) #9, !dbg !2996
  %45 = add nuw nsw i64 %42, 1, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %45, metadata !2934, metadata !DIExpression()), !dbg !2989
  %46 = icmp eq i64 %45, 4, !dbg !2998
  br i1 %46, label %47, label %41, !dbg !2990, !llvm.loop !2999

47:                                               ; preds = %41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %22, i8* nonnull align 4 %21, i64 1024, i1 false), !dbg !3001, !tbaa.struct !2854
  call void @llvm.dbg.value(metadata %struct.poly* %9, metadata !2941, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* nonnull %9) #9, !dbg !3003
  call void @llvm.dbg.value(metadata %struct.polyveck* %13, metadata !2945, metadata !DIExpression(DW_OP_deref)), !dbg !2967
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(%struct.polyveck* nonnull %13) #9, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.polyveck* %13, metadata !2945, metadata !DIExpression(DW_OP_deref)), !dbg !2967
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* nonnull %13) #9, !dbg !3005
  call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !2989
  br label %48, !dbg !3006

48:                                               ; preds = %48, %47
  %49 = phi i64 [ 0, %47 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !2934, metadata !DIExpression()), !dbg !2989
  %50 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %17, i64 0, i32 0, i64 %49, !dbg !3008
  %51 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %13, i64 0, i32 0, i64 %49, !dbg !3011
  call void @llvm.dbg.value(metadata %struct.poly* %9, metadata !2941, metadata !DIExpression(DW_OP_deref)), !dbg !3002
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* nonnull %50, %struct.poly* nonnull %9, %struct.poly* nonnull %51) #9, !dbg !3012
  %52 = add nuw nsw i64 %49, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %52, metadata !2934, metadata !DIExpression()), !dbg !2989
  %53 = icmp eq i64 %52, 4, !dbg !3014
  br i1 %53, label %54, label %48, !dbg !3006, !llvm.loop !3015

54:                                               ; preds = %48
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.polyveck* %17, metadata !2949, metadata !DIExpression(DW_OP_deref)), !dbg !3018
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck* nonnull %16, %struct.polyveck* nonnull %16, %struct.polyveck* nonnull %17) #9, !dbg !3019
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(%struct.polyveck* nonnull %16) #9, !dbg !3020
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(%struct.polyveck* nonnull %16) #9, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* nonnull %16) #9, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.polyveck* %14, metadata !2946, metadata !DIExpression(DW_OP_deref)), !dbg !3023
  call void @llvm.dbg.value(metadata %struct.polyveck* %15, metadata !2947, metadata !DIExpression(DW_OP_deref)), !dbg !2971
  call void @llvm.dbg.value(metadata %struct.polyveck* %16, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(%struct.polyveck* nonnull %14, %struct.polyveck* nonnull %16, %struct.polyveck* nonnull %15) #9, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.poly* %10, metadata !2942, metadata !DIExpression(DW_OP_deref)), !dbg !3025
  call void @llvm.dbg.value(metadata %struct.polyveck* %14, metadata !2946, metadata !DIExpression(DW_OP_deref)), !dbg !3023
  call void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* nonnull %10, i8* nonnull %20, %struct.polyveck* nonnull %14), !dbg !3026
  call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !2989
  br label %57, !dbg !3027

55:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 %64, metadata !2934, metadata !DIExpression()), !dbg !2989
  %56 = icmp ult i64 %64, 256, !dbg !3029
  br i1 %56, label %57, label %65, !dbg !3027, !llvm.loop !3031

57:                                               ; preds = %54, %55
  %58 = phi i64 [ 0, %54 ], [ %64, %55 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !2934, metadata !DIExpression()), !dbg !2989
  %59 = getelementptr inbounds %struct.poly, %struct.poly* %8, i64 0, i32 0, i64 %58, !dbg !3033
  %60 = load i32, i32* %59, align 4, !dbg !3033, !tbaa !88
  %61 = getelementptr inbounds %struct.poly, %struct.poly* %10, i64 0, i32 0, i64 %58, !dbg !3036
  %62 = load i32, i32* %61, align 4, !dbg !3036, !tbaa !88
  %63 = icmp eq i32 %60, %62, !dbg !3037
  %64 = add nuw nsw i64 %58, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %64, metadata !2934, metadata !DIExpression()), !dbg !2989
  br i1 %63, label %55, label %65, !dbg !3039

65:                                               ; preds = %55, %57
  %66 = phi i32 [ -1, %57 ], [ 0, %55 ], !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %39) #9, !dbg !3041
  br label %67

67:                                               ; preds = %35, %32, %5, %65
  %68 = phi i32 [ %66, %65 ], [ -1, %5 ], [ -1, %32 ], [ -1, %35 ], !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %30) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %29) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %28) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %27) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %26) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %25) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 12288, i8* nonnull %24) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %23) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %22) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %21) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #9, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #9, !dbg !3041
  ret i32 %68, !dbg !3041
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign(i8*, i64* nocapture, i8*, i64, i8*) local_unnamed_addr #0 !dbg !3042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64* %1, metadata !3045, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8* %2, metadata !3046, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %3, metadata !3047, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %4, metadata !3048, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 0, metadata !3049, metadata !DIExpression()), !dbg !3056
  %6 = icmp eq i64 %3, 0, !dbg !3057
  br i1 %6, label %15, label %7, !dbg !3060

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %13, %7 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !3049, metadata !DIExpression()), !dbg !3056
  %9 = getelementptr inbounds i8, i8* %2, i64 %8, !dbg !3061
  %10 = load i8, i8* %9, align 1, !dbg !3061, !tbaa !231
  %11 = add i64 %8, 2044, !dbg !3063
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !3064
  store i8 %10, i8* %12, align 1, !dbg !3065, !tbaa !231
  %13 = add nuw i64 %8, 1, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %13, metadata !3049, metadata !DIExpression()), !dbg !3056
  %14 = icmp eq i64 %13, %3, !dbg !3057
  br i1 %14, label %15, label %7, !dbg !3060, !llvm.loop !3067

15:                                               ; preds = %7, %5
  %16 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4), !dbg !3069
  call void @llvm.dbg.value(metadata i32 0, metadata !3050, metadata !DIExpression()), !dbg !3070
  %17 = load i64, i64* %1, align 8, !dbg !3071, !tbaa !2921
  %18 = add i64 %17, %3, !dbg !3071
  store i64 %18, i64* %1, align 8, !dbg !3071, !tbaa !2921
  ret i32 0, !dbg !3072
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_open(i8* nocapture, i64* nocapture, i8*, i64, i8*) local_unnamed_addr #0 !dbg !3073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64* %1, metadata !3076, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %2, metadata !3077, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %3, metadata !3078, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %4, metadata !3079, metadata !DIExpression()), !dbg !3085
  %6 = icmp ult i64 %3, 2044, !dbg !3086
  br i1 %6, label %25, label %7, !dbg !3088

7:                                                ; preds = %5
  %8 = add i64 %3, -2044, !dbg !3089
  store i64 %8, i64* %1, align 8, !dbg !3090, !tbaa !2921
  %9 = getelementptr inbounds i8, i8* %2, i64 2044, !dbg !3091
  %10 = tail call i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(i8* %2, i64 2044, i8* nonnull %9, i64 %8, i8* %4), !dbg !3093
  %11 = icmp eq i32 %10, 0, !dbg !3093
  br i1 %11, label %13, label %12, !dbg !3094

12:                                               ; preds = %7
  store i64 -1, i64* %1, align 8, !dbg !3095, !tbaa !2921
  call void @llvm.dbg.value(metadata i64 0, metadata !3080, metadata !DIExpression()), !dbg !3096
  br label %27, !dbg !3097

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 0, metadata !3080, metadata !DIExpression()), !dbg !3096
  %14 = load i64, i64* %1, align 8, !dbg !3099, !tbaa !2921
  %15 = icmp eq i64 %14, 0, !dbg !3103
  br i1 %15, label %28, label %16, !dbg !3104

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %22, %16 ], [ 0, %13 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !3080, metadata !DIExpression()), !dbg !3096
  %18 = add i64 %17, 2044, !dbg !3105
  %19 = getelementptr inbounds i8, i8* %2, i64 %18, !dbg !3107
  %20 = load i8, i8* %19, align 1, !dbg !3107, !tbaa !231
  %21 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !3108
  store i8 %20, i8* %21, align 1, !dbg !3109, !tbaa !231
  %22 = add nuw i64 %17, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %22, metadata !3080, metadata !DIExpression()), !dbg !3096
  %23 = load i64, i64* %1, align 8, !dbg !3099, !tbaa !2921
  %24 = icmp ult i64 %22, %23, !dbg !3103
  br i1 %24, label %16, label %28, !dbg !3104, !llvm.loop !3111

25:                                               ; preds = %5
  store i64 -1, i64* %1, align 8, !dbg !3095, !tbaa !2921
  call void @llvm.dbg.value(metadata i64 0, metadata !3080, metadata !DIExpression()), !dbg !3096
  %26 = icmp eq i64 %3, 0, !dbg !3113
  br i1 %26, label %28, label %27, !dbg !3097

27:                                               ; preds = %25, %12
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %3, i1 false), !dbg !3115
  call void @llvm.dbg.value(metadata i32 undef, metadata !3080, metadata !DIExpression()), !dbg !3096
  br label %28, !dbg !3117

28:                                               ; preds = %16, %27, %13, %25
  %29 = phi i32 [ -1, %25 ], [ 0, %13 ], [ -1, %27 ], [ 0, %16 ], !dbg !3118
  ret i32 %29, !dbg !3117
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx*, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 !dbg !3119 {
  %4 = alloca [34 x i8], align 16
  %5 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 0
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %0, metadata !3128, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %1, metadata !3129, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i16 %2, metadata !3130, metadata !DIExpression()), !dbg !3138
  %6 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 0, !dbg !3139
  call void @llvm.lifetime.start.p0i8(i64 34, i8* nonnull %6) #9, !dbg !3139
  call void @llvm.dbg.declare(metadata [34 x i8]* %4, metadata !3132, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 0, metadata !3131, metadata !DIExpression()), !dbg !3141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* align 1 %1, i64 32, i1 false), !dbg !3142
  call void @llvm.dbg.value(metadata i32 undef, metadata !3131, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3141
  call void @llvm.dbg.value(metadata i32 undef, metadata !3131, metadata !DIExpression()), !dbg !3141
  %7 = trunc i16 %2 to i8, !dbg !3146
  %8 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 32, !dbg !3147
  store i8 %7, i8* %8, align 16, !dbg !3148, !tbaa !231
  %9 = lshr i16 %2, 8, !dbg !3149
  %10 = trunc i16 %9 to i8, !dbg !3150
  %11 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 33, !dbg !3151
  store i8 %10, i8* %11, align 1, !dbg !3152, !tbaa !231
  call void @shake128_absorb(%struct.shake128ctx* %0, i8* nonnull %6, i64 34) #9, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 34, i8* nonnull %6) #9, !dbg !3154
  ret void, !dbg !3154
}

declare void @shake128_absorb(%struct.shake128ctx*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init(%struct.shake128ctx*, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 !dbg !3155 {
  %4 = alloca [50 x i8], align 16
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  call void @llvm.dbg.value(metadata %struct.shake128ctx* %0, metadata !3164, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3165, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i16 %2, metadata !3166, metadata !DIExpression()), !dbg !3174
  %6 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0, !dbg !3175
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %6) #9, !dbg !3175
  call void @llvm.dbg.declare(metadata [50 x i8]* %4, metadata !3168, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3167, metadata !DIExpression()), !dbg !3177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* align 1 %1, i64 48, i1 false), !dbg !3178
  call void @llvm.dbg.value(metadata i32 undef, metadata !3167, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3177
  call void @llvm.dbg.value(metadata i32 undef, metadata !3167, metadata !DIExpression()), !dbg !3177
  %7 = trunc i16 %2 to i8, !dbg !3182
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 48, !dbg !3183
  store i8 %7, i8* %8, align 16, !dbg !3184, !tbaa !231
  %9 = lshr i16 %2, 8, !dbg !3185
  %10 = trunc i16 %9 to i8, !dbg !3186
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 49, !dbg !3187
  store i8 %10, i8* %11, align 1, !dbg !3188, !tbaa !231
  call void @shake256_absorb(%struct.shake128ctx* %0, i8* nonnull %6, i64 50) #9, !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %6) #9, !dbg !3190
  ret void, !dbg !3190
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind ssp uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind ssp uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2, !19, !26, !31, !33, !36, !38, !47}
!llvm.ident = !{!50, !50, !50, !50, !50, !50, !50, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zetas", scope: !2, file: !3, line: 8, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, nameTableKind: GNU)
!3 = !DIFile(filename: "ntt.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 31, baseType: !8)
!7 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{!0, !10}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "zetas_inv", scope: !2, file: !3, line: 44, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !17)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 31, baseType: !16)
!15 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18}
!18 = !DISubrange(count: 256)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, nameTableKind: GNU)
!20 = !DIFile(filename: "packing.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!21 = !{!22, !6, !23}
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !24, line: 30, baseType: !25)
!24 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "")
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, nameTableKind: GNU)
!27 = !DIFile(filename: "poly.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!28 = !{!6, !23, !14, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !30, line: 31, baseType: !22)
!30 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, nameTableKind: GNU)
!32 = !DIFile(filename: "polyvec.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, nameTableKind: GNU)
!34 = !DIFile(filename: "reduce.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!35 = !{!14, !23}
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, nameTableKind: GNU)
!37 = !DIFile(filename: "rounding.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, nameTableKind: GNU)
!39 = !DIFile(filename: "sign.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!40 = !{!41, !6, !23, !44}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !42, line: 31, baseType: !43)
!42 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 62, baseType: !46)
!45 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stddef.h", directory: "")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, nameTableKind: GNU)
!48 = !DIFile(filename: "symmetric.c", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!49 = !{!29}
!50 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!51 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_ntt", scope: !3, file: !3, line: 89, type: !57, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DILocalVariable(name: "p", arg: 1, scope: !56, file: !3, line: 89, type: !59)
!62 = !DILocalVariable(name: "len", scope: !56, file: !3, line: 90, type: !16)
!63 = !DILocalVariable(name: "start", scope: !56, file: !3, line: 90, type: !16)
!64 = !DILocalVariable(name: "j", scope: !56, file: !3, line: 90, type: !16)
!65 = !DILocalVariable(name: "k", scope: !56, file: !3, line: 90, type: !16)
!66 = !DILocalVariable(name: "zeta", scope: !56, file: !3, line: 91, type: !14)
!67 = !DILocalVariable(name: "t", scope: !56, file: !3, line: 91, type: !14)
!68 = !DILocation(line: 89, column: 44, scope: !56)
!69 = !DILocation(line: 90, column: 33, scope: !56)
!70 = !DILocation(line: 90, column: 18, scope: !56)
!71 = !DILocation(line: 94, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !56, file: !3, line: 94, column: 5)
!73 = !DILocation(line: 90, column: 23, scope: !56)
!74 = !DILocation(line: 95, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 95, column: 9)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 94, column: 41)
!77 = distinct !DILexicalBlock(scope: !72, file: !3, line: 94, column: 5)
!78 = !DILocation(line: 96, column: 27, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 95, column: 53)
!80 = distinct !DILexicalBlock(scope: !75, file: !3, line: 95, column: 9)
!81 = !DILocation(line: 90, column: 30, scope: !56)
!82 = !DILocation(line: 97, column: 39, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 97, column: 13)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 97, column: 13)
!85 = !DILocation(line: 97, column: 31, scope: !83)
!86 = !DILocation(line: 97, column: 13, scope: !84)
!87 = !DILocation(line: 96, column: 20, scope: !79)
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !DILocation(line: 91, column: 14, scope: !56)
!93 = !DILocation(line: 0, scope: !94)
!94 = distinct !DILexicalBlock(scope: !83, file: !3, line: 97, column: 51)
!95 = !DILocation(line: 0, scope: !83)
!96 = !DILocation(line: 98, column: 85, scope: !94)
!97 = !DILocation(line: 98, column: 81, scope: !94)
!98 = !DILocation(line: 98, column: 79, scope: !94)
!99 = !DILocation(line: 98, column: 21, scope: !94)
!100 = !DILocation(line: 91, column: 20, scope: !56)
!101 = !DILocation(line: 99, column: 30, scope: !94)
!102 = !DILocation(line: 99, column: 35, scope: !94)
!103 = !DILocation(line: 99, column: 43, scope: !94)
!104 = !DILocation(line: 99, column: 28, scope: !94)
!105 = !DILocation(line: 100, column: 24, scope: !94)
!106 = !DILocation(line: 100, column: 29, scope: !94)
!107 = !DILocation(line: 100, column: 22, scope: !94)
!108 = !DILocation(line: 97, column: 46, scope: !83)
!109 = distinct !{!109, !86, !110}
!110 = !DILocation(line: 101, column: 13, scope: !84)
!111 = !DILocation(line: 95, column: 46, scope: !80)
!112 = !DILocation(line: 0, scope: !84)
!113 = !DILocation(line: 95, column: 31, scope: !80)
!114 = distinct !{!114, !74, !115}
!115 = !DILocation(line: 102, column: 9, scope: !75)
!116 = !DILocation(line: 94, column: 34, scope: !77)
!117 = !DILocation(line: 94, column: 25, scope: !77)
!118 = distinct !{!118, !71, !119}
!119 = !DILocation(line: 103, column: 5, scope: !72)
!120 = !DILocation(line: 104, column: 1, scope: !56)
!121 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont", scope: !3, file: !3, line: 116, type: !57, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130}
!123 = !DILocalVariable(name: "p", arg: 1, scope: !121, file: !3, line: 116, type: !59)
!124 = !DILocalVariable(name: "start", scope: !121, file: !3, line: 117, type: !16)
!125 = !DILocalVariable(name: "len", scope: !121, file: !3, line: 117, type: !16)
!126 = !DILocalVariable(name: "j", scope: !121, file: !3, line: 117, type: !16)
!127 = !DILocalVariable(name: "k", scope: !121, file: !3, line: 117, type: !16)
!128 = !DILocalVariable(name: "t", scope: !121, file: !3, line: 118, type: !14)
!129 = !DILocalVariable(name: "zeta", scope: !121, file: !3, line: 118, type: !14)
!130 = !DILocalVariable(name: "f", scope: !121, file: !3, line: 119, type: !13)
!131 = !DILocation(line: 116, column: 59, scope: !121)
!132 = !DILocation(line: 119, column: 20, scope: !121)
!133 = !DILocation(line: 117, column: 33, scope: !121)
!134 = !DILocation(line: 117, column: 25, scope: !121)
!135 = !DILocation(line: 122, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !121, file: !3, line: 122, column: 5)
!137 = !DILocation(line: 117, column: 18, scope: !121)
!138 = !DILocation(line: 123, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 123, column: 9)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 122, column: 39)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 122, column: 5)
!142 = !DILocation(line: 124, column: 31, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 123, column: 53)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 123, column: 9)
!145 = !DILocation(line: 117, column: 30, scope: !121)
!146 = !DILocation(line: 125, column: 39, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 125, column: 13)
!148 = distinct !DILexicalBlock(scope: !143, file: !3, line: 125, column: 13)
!149 = !DILocation(line: 125, column: 31, scope: !147)
!150 = !DILocation(line: 125, column: 13, scope: !148)
!151 = !DILocation(line: 124, column: 20, scope: !143)
!152 = !DILocation(line: 118, column: 17, scope: !121)
!153 = !DILocation(line: 0, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !3, line: 125, column: 51)
!155 = !DILocation(line: 0, scope: !147)
!156 = !DILocation(line: 126, column: 21, scope: !154)
!157 = !DILocation(line: 118, column: 14, scope: !121)
!158 = !DILocation(line: 127, column: 32, scope: !154)
!159 = !DILocation(line: 127, column: 28, scope: !154)
!160 = !DILocation(line: 127, column: 26, scope: !154)
!161 = !DILocation(line: 127, column: 22, scope: !154)
!162 = !DILocation(line: 128, column: 32, scope: !154)
!163 = !DILocation(line: 128, column: 44, scope: !154)
!164 = !DILocation(line: 128, column: 42, scope: !154)
!165 = !DILocation(line: 128, column: 28, scope: !154)
!166 = !DILocation(line: 129, column: 90, scope: !154)
!167 = !DILocation(line: 129, column: 88, scope: !154)
!168 = !DILocation(line: 129, column: 30, scope: !154)
!169 = !DILocation(line: 129, column: 28, scope: !154)
!170 = !DILocation(line: 125, column: 46, scope: !147)
!171 = distinct !{!171, !150, !172}
!172 = !DILocation(line: 130, column: 13, scope: !148)
!173 = !DILocation(line: 123, column: 46, scope: !144)
!174 = !DILocation(line: 0, scope: !148)
!175 = !DILocation(line: 123, column: 31, scope: !144)
!176 = distinct !{!176, !138, !177}
!177 = !DILocation(line: 131, column: 9, scope: !139)
!178 = !DILocation(line: 122, column: 32, scope: !141)
!179 = !DILocation(line: 122, column: 23, scope: !141)
!180 = distinct !{!180, !135, !181}
!181 = !DILocation(line: 132, column: 5, scope: !136)
!182 = !DILocation(line: 135, column: 73, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 134, column: 29)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 134, column: 5)
!185 = distinct !DILexicalBlock(scope: !121, file: !3, line: 134, column: 5)
!186 = !DILocation(line: 135, column: 71, scope: !183)
!187 = !DILocation(line: 135, column: 16, scope: !183)
!188 = !DILocation(line: 135, column: 14, scope: !183)
!189 = !DILocation(line: 134, column: 24, scope: !184)
!190 = !DILocation(line: 134, column: 19, scope: !184)
!191 = !DILocation(line: 134, column: 5, scope: !185)
!192 = distinct !{!192, !191, !193}
!193 = !DILocation(line: 136, column: 5, scope: !185)
!194 = !DILocation(line: 137, column: 1, scope: !121)
!195 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_pack_pk", scope: !20, file: !20, line: 15, type: !196, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !217)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !199, !201}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyveck", file: !204, line: 29, baseType: !205)
!204 = !DIFile(filename: "./polyvec.h", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 27, size: 32768, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !205, file: !204, line: 28, baseType: !208, size: 32768)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32768, elements: !215)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !210, line: 9, baseType: !211)
!210 = !DIFile(filename: "./poly.h", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 7, size: 8192, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "coeffs", scope: !211, file: !210, line: 8, baseType: !214, size: 8192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, elements: !17)
!215 = !{!216}
!216 = !DISubrange(count: 4)
!217 = !{!218, !219, !220, !221}
!218 = !DILocalVariable(name: "pk", arg: 1, scope: !195, file: !20, line: 15, type: !198)
!219 = !DILocalVariable(name: "rho", arg: 2, scope: !195, file: !20, line: 16, type: !199)
!220 = !DILocalVariable(name: "t1", arg: 3, scope: !195, file: !20, line: 17, type: !201)
!221 = !DILocalVariable(name: "i", scope: !195, file: !20, line: 18, type: !16)
!222 = !DILocation(line: 15, column: 53, scope: !195)
!223 = !DILocation(line: 16, column: 59, scope: !195)
!224 = !DILocation(line: 17, column: 55, scope: !195)
!225 = !DILocation(line: 18, column: 18, scope: !195)
!226 = !DILocation(line: 20, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !195, file: !20, line: 20, column: 5)
!228 = !DILocation(line: 21, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !20, line: 20, column: 37)
!230 = distinct !DILexicalBlock(scope: !227, file: !20, line: 20, column: 5)
!231 = !{!90, !90, i64 0}
!232 = !DILocation(line: 21, column: 9, scope: !229)
!233 = !DILocation(line: 21, column: 15, scope: !229)
!234 = !DILocation(line: 20, column: 32, scope: !230)
!235 = !DILocation(line: 20, column: 19, scope: !230)
!236 = distinct !{!236, !226, !237}
!237 = !DILocation(line: 22, column: 5, scope: !227)
!238 = !DILocation(line: 23, column: 8, scope: !195)
!239 = !DILocation(line: 25, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !195, file: !20, line: 25, column: 5)
!241 = !DILocation(line: 26, column: 53, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !20, line: 25, column: 29)
!243 = distinct !DILexicalBlock(scope: !240, file: !20, line: 25, column: 5)
!244 = !DILocation(line: 26, column: 49, scope: !242)
!245 = !DILocation(line: 26, column: 75, scope: !242)
!246 = !DILocation(line: 26, column: 9, scope: !242)
!247 = !DILocation(line: 25, column: 24, scope: !243)
!248 = !DILocation(line: 25, column: 19, scope: !243)
!249 = distinct !{!249, !239, !250}
!250 = !DILocation(line: 27, column: 5, scope: !240)
!251 = !DILocation(line: 28, column: 1, scope: !195)
!252 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_unpack_pk", scope: !20, file: !20, line: 39, type: !253, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !256)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !198, !255, !199}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!256 = !{!257, !258, !259, !260}
!257 = !DILocalVariable(name: "rho", arg: 1, scope: !252, file: !20, line: 39, type: !198)
!258 = !DILocalVariable(name: "t1", arg: 2, scope: !252, file: !20, line: 40, type: !255)
!259 = !DILocalVariable(name: "pk", arg: 3, scope: !252, file: !20, line: 41, type: !199)
!260 = !DILocalVariable(name: "i", scope: !252, file: !20, line: 42, type: !16)
!261 = !DILocation(line: 39, column: 55, scope: !252)
!262 = !DILocation(line: 40, column: 51, scope: !252)
!263 = !DILocation(line: 41, column: 61, scope: !252)
!264 = !DILocation(line: 42, column: 18, scope: !252)
!265 = !DILocation(line: 44, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !252, file: !20, line: 44, column: 5)
!267 = !DILocation(line: 45, column: 18, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !20, line: 44, column: 37)
!269 = distinct !DILexicalBlock(scope: !266, file: !20, line: 44, column: 5)
!270 = !DILocation(line: 45, column: 9, scope: !268)
!271 = !DILocation(line: 45, column: 16, scope: !268)
!272 = !DILocation(line: 44, column: 32, scope: !269)
!273 = !DILocation(line: 44, column: 19, scope: !269)
!274 = distinct !{!274, !265, !275}
!275 = !DILocation(line: 46, column: 5, scope: !266)
!276 = !DILocation(line: 47, column: 8, scope: !252)
!277 = !DILocation(line: 49, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !252, file: !20, line: 49, column: 5)
!279 = !DILocation(line: 50, column: 49, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !20, line: 49, column: 29)
!281 = distinct !DILexicalBlock(scope: !278, file: !20, line: 49, column: 5)
!282 = !DILocation(line: 50, column: 68, scope: !280)
!283 = !DILocation(line: 50, column: 64, scope: !280)
!284 = !DILocation(line: 50, column: 9, scope: !280)
!285 = !DILocation(line: 49, column: 24, scope: !281)
!286 = !DILocation(line: 49, column: 19, scope: !281)
!287 = distinct !{!287, !277, !288}
!288 = !DILocation(line: 51, column: 5, scope: !278)
!289 = !DILocation(line: 52, column: 1, scope: !252)
!290 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_pack_sk", scope: !20, file: !20, line: 67, type: !291, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !302)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !198, !199, !199, !199, !293, !201, !201}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyvecl", file: !204, line: 11, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 9, size: 24576, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !296, file: !204, line: 10, baseType: !299, size: 24576)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 24576, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 3)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310}
!303 = !DILocalVariable(name: "sk", arg: 1, scope: !290, file: !20, line: 67, type: !198)
!304 = !DILocalVariable(name: "rho", arg: 2, scope: !290, file: !20, line: 68, type: !199)
!305 = !DILocalVariable(name: "key", arg: 3, scope: !290, file: !20, line: 69, type: !199)
!306 = !DILocalVariable(name: "tr", arg: 4, scope: !290, file: !20, line: 70, type: !199)
!307 = !DILocalVariable(name: "s1", arg: 5, scope: !290, file: !20, line: 71, type: !293)
!308 = !DILocalVariable(name: "s2", arg: 6, scope: !290, file: !20, line: 72, type: !201)
!309 = !DILocalVariable(name: "t0", arg: 7, scope: !290, file: !20, line: 73, type: !201)
!310 = !DILocalVariable(name: "i", scope: !290, file: !20, line: 74, type: !16)
!311 = !DILocation(line: 67, column: 53, scope: !290)
!312 = !DILocation(line: 68, column: 59, scope: !290)
!313 = !DILocation(line: 69, column: 59, scope: !290)
!314 = !DILocation(line: 70, column: 59, scope: !290)
!315 = !DILocation(line: 71, column: 55, scope: !290)
!316 = !DILocation(line: 72, column: 55, scope: !290)
!317 = !DILocation(line: 73, column: 55, scope: !290)
!318 = !DILocation(line: 74, column: 18, scope: !290)
!319 = !DILocation(line: 76, column: 5, scope: !320)
!320 = distinct !DILexicalBlock(scope: !290, file: !20, line: 76, column: 5)
!321 = !DILocation(line: 77, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !20, line: 76, column: 37)
!323 = distinct !DILexicalBlock(scope: !320, file: !20, line: 76, column: 5)
!324 = !DILocation(line: 77, column: 9, scope: !322)
!325 = !DILocation(line: 77, column: 15, scope: !322)
!326 = !DILocation(line: 76, column: 32, scope: !323)
!327 = !DILocation(line: 76, column: 19, scope: !323)
!328 = distinct !{!328, !319, !329}
!329 = !DILocation(line: 78, column: 5, scope: !320)
!330 = !DILocation(line: 79, column: 8, scope: !290)
!331 = !DILocation(line: 81, column: 5, scope: !332)
!332 = distinct !DILexicalBlock(scope: !290, file: !20, line: 81, column: 5)
!333 = !DILocation(line: 82, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !20, line: 81, column: 37)
!335 = distinct !DILexicalBlock(scope: !332, file: !20, line: 81, column: 5)
!336 = !DILocation(line: 82, column: 9, scope: !334)
!337 = !DILocation(line: 82, column: 15, scope: !334)
!338 = !DILocation(line: 81, column: 32, scope: !335)
!339 = !DILocation(line: 81, column: 19, scope: !335)
!340 = distinct !{!340, !331, !341}
!341 = !DILocation(line: 83, column: 5, scope: !332)
!342 = !DILocation(line: 84, column: 8, scope: !290)
!343 = !DILocation(line: 86, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !290, file: !20, line: 86, column: 5)
!345 = !DILocation(line: 87, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !20, line: 86, column: 36)
!347 = distinct !DILexicalBlock(scope: !344, file: !20, line: 86, column: 5)
!348 = !DILocation(line: 87, column: 9, scope: !346)
!349 = !DILocation(line: 87, column: 15, scope: !346)
!350 = !DILocation(line: 86, column: 31, scope: !347)
!351 = !DILocation(line: 86, column: 19, scope: !347)
!352 = distinct !{!352, !343, !353}
!353 = !DILocation(line: 88, column: 5, scope: !344)
!354 = !DILocation(line: 89, column: 8, scope: !290)
!355 = !DILocation(line: 91, column: 5, scope: !356)
!356 = distinct !DILexicalBlock(scope: !290, file: !20, line: 91, column: 5)
!357 = !DILocation(line: 92, column: 54, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !20, line: 91, column: 29)
!359 = distinct !DILexicalBlock(scope: !356, file: !20, line: 91, column: 5)
!360 = !DILocation(line: 92, column: 50, scope: !358)
!361 = !DILocation(line: 92, column: 77, scope: !358)
!362 = !DILocation(line: 92, column: 9, scope: !358)
!363 = !DILocation(line: 91, column: 24, scope: !359)
!364 = !DILocation(line: 91, column: 19, scope: !359)
!365 = distinct !{!365, !355, !366}
!366 = !DILocation(line: 93, column: 5, scope: !356)
!367 = !DILocation(line: 94, column: 8, scope: !290)
!368 = !DILocation(line: 96, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !290, file: !20, line: 96, column: 5)
!370 = !DILocation(line: 97, column: 54, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !20, line: 96, column: 29)
!372 = distinct !DILexicalBlock(scope: !369, file: !20, line: 96, column: 5)
!373 = !DILocation(line: 97, column: 50, scope: !371)
!374 = !DILocation(line: 97, column: 77, scope: !371)
!375 = !DILocation(line: 97, column: 9, scope: !371)
!376 = !DILocation(line: 96, column: 24, scope: !372)
!377 = !DILocation(line: 96, column: 19, scope: !372)
!378 = distinct !{!378, !368, !379}
!379 = !DILocation(line: 98, column: 5, scope: !369)
!380 = !DILocation(line: 99, column: 8, scope: !290)
!381 = !DILocation(line: 101, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !290, file: !20, line: 101, column: 5)
!383 = !DILocation(line: 102, column: 53, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !20, line: 101, column: 29)
!385 = distinct !DILexicalBlock(scope: !382, file: !20, line: 101, column: 5)
!386 = !DILocation(line: 102, column: 49, scope: !384)
!387 = !DILocation(line: 102, column: 75, scope: !384)
!388 = !DILocation(line: 102, column: 9, scope: !384)
!389 = !DILocation(line: 101, column: 24, scope: !385)
!390 = !DILocation(line: 101, column: 19, scope: !385)
!391 = distinct !{!391, !381, !392}
!392 = !DILocation(line: 103, column: 5, scope: !382)
!393 = !DILocation(line: 104, column: 1, scope: !290)
!394 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_unpack_sk", scope: !20, file: !20, line: 119, type: !395, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !398)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !198, !198, !198, !397, !255, !255, !199}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406}
!399 = !DILocalVariable(name: "rho", arg: 1, scope: !394, file: !20, line: 119, type: !198)
!400 = !DILocalVariable(name: "key", arg: 2, scope: !394, file: !20, line: 120, type: !198)
!401 = !DILocalVariable(name: "tr", arg: 3, scope: !394, file: !20, line: 121, type: !198)
!402 = !DILocalVariable(name: "s1", arg: 4, scope: !394, file: !20, line: 122, type: !397)
!403 = !DILocalVariable(name: "s2", arg: 5, scope: !394, file: !20, line: 123, type: !255)
!404 = !DILocalVariable(name: "t0", arg: 6, scope: !394, file: !20, line: 124, type: !255)
!405 = !DILocalVariable(name: "sk", arg: 7, scope: !394, file: !20, line: 125, type: !199)
!406 = !DILocalVariable(name: "i", scope: !394, file: !20, line: 126, type: !16)
!407 = !DILocation(line: 119, column: 55, scope: !394)
!408 = !DILocation(line: 120, column: 55, scope: !394)
!409 = !DILocation(line: 121, column: 55, scope: !394)
!410 = !DILocation(line: 122, column: 51, scope: !394)
!411 = !DILocation(line: 123, column: 51, scope: !394)
!412 = !DILocation(line: 124, column: 51, scope: !394)
!413 = !DILocation(line: 125, column: 61, scope: !394)
!414 = !DILocation(line: 126, column: 18, scope: !394)
!415 = !DILocation(line: 128, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !394, file: !20, line: 128, column: 5)
!417 = !DILocation(line: 129, column: 18, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !20, line: 128, column: 37)
!419 = distinct !DILexicalBlock(scope: !416, file: !20, line: 128, column: 5)
!420 = !DILocation(line: 129, column: 9, scope: !418)
!421 = !DILocation(line: 129, column: 16, scope: !418)
!422 = !DILocation(line: 128, column: 32, scope: !419)
!423 = !DILocation(line: 128, column: 19, scope: !419)
!424 = distinct !{!424, !415, !425}
!425 = !DILocation(line: 130, column: 5, scope: !416)
!426 = !DILocation(line: 131, column: 8, scope: !394)
!427 = !DILocation(line: 133, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !394, file: !20, line: 133, column: 5)
!429 = !DILocation(line: 134, column: 18, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !20, line: 133, column: 37)
!431 = distinct !DILexicalBlock(scope: !428, file: !20, line: 133, column: 5)
!432 = !DILocation(line: 134, column: 9, scope: !430)
!433 = !DILocation(line: 134, column: 16, scope: !430)
!434 = !DILocation(line: 133, column: 32, scope: !431)
!435 = !DILocation(line: 133, column: 19, scope: !431)
!436 = distinct !{!436, !427, !437}
!437 = !DILocation(line: 135, column: 5, scope: !428)
!438 = !DILocation(line: 136, column: 8, scope: !394)
!439 = !DILocation(line: 138, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !394, file: !20, line: 138, column: 5)
!441 = !DILocation(line: 139, column: 17, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !20, line: 138, column: 36)
!443 = distinct !DILexicalBlock(scope: !440, file: !20, line: 138, column: 5)
!444 = !DILocation(line: 139, column: 9, scope: !442)
!445 = !DILocation(line: 139, column: 15, scope: !442)
!446 = !DILocation(line: 138, column: 31, scope: !443)
!447 = !DILocation(line: 138, column: 19, scope: !443)
!448 = distinct !{!448, !439, !449}
!449 = !DILocation(line: 140, column: 5, scope: !440)
!450 = !DILocation(line: 141, column: 8, scope: !394)
!451 = !DILocation(line: 143, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !394, file: !20, line: 143, column: 5)
!453 = !DILocation(line: 144, column: 50, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !20, line: 143, column: 29)
!455 = distinct !DILexicalBlock(scope: !452, file: !20, line: 143, column: 5)
!456 = !DILocation(line: 144, column: 69, scope: !454)
!457 = !DILocation(line: 144, column: 65, scope: !454)
!458 = !DILocation(line: 144, column: 9, scope: !454)
!459 = !DILocation(line: 143, column: 24, scope: !455)
!460 = !DILocation(line: 143, column: 19, scope: !455)
!461 = distinct !{!461, !451, !462}
!462 = !DILocation(line: 145, column: 5, scope: !452)
!463 = !DILocation(line: 146, column: 8, scope: !394)
!464 = !DILocation(line: 148, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !394, file: !20, line: 148, column: 5)
!466 = !DILocation(line: 149, column: 50, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !20, line: 148, column: 29)
!468 = distinct !DILexicalBlock(scope: !465, file: !20, line: 148, column: 5)
!469 = !DILocation(line: 149, column: 69, scope: !467)
!470 = !DILocation(line: 149, column: 65, scope: !467)
!471 = !DILocation(line: 149, column: 9, scope: !467)
!472 = !DILocation(line: 148, column: 24, scope: !468)
!473 = !DILocation(line: 148, column: 19, scope: !468)
!474 = distinct !{!474, !464, !475}
!475 = !DILocation(line: 150, column: 5, scope: !465)
!476 = !DILocation(line: 151, column: 8, scope: !394)
!477 = !DILocation(line: 153, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !394, file: !20, line: 153, column: 5)
!479 = !DILocation(line: 154, column: 49, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !20, line: 153, column: 29)
!481 = distinct !DILexicalBlock(scope: !478, file: !20, line: 153, column: 5)
!482 = !DILocation(line: 154, column: 68, scope: !480)
!483 = !DILocation(line: 154, column: 64, scope: !480)
!484 = !DILocation(line: 154, column: 9, scope: !480)
!485 = !DILocation(line: 153, column: 24, scope: !481)
!486 = !DILocation(line: 153, column: 19, scope: !481)
!487 = distinct !{!487, !477, !488}
!488 = !DILocation(line: 155, column: 5, scope: !478)
!489 = !DILocation(line: 156, column: 1, scope: !394)
!490 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_pack_sig", scope: !20, file: !20, line: 168, type: !491, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !495)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !198, !293, !201, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504}
!496 = !DILocalVariable(name: "sig", arg: 1, scope: !490, file: !20, line: 168, type: !198)
!497 = !DILocalVariable(name: "z", arg: 2, scope: !490, file: !20, line: 169, type: !293)
!498 = !DILocalVariable(name: "h", arg: 3, scope: !490, file: !20, line: 170, type: !201)
!499 = !DILocalVariable(name: "c", arg: 4, scope: !490, file: !20, line: 171, type: !493)
!500 = !DILocalVariable(name: "i", scope: !490, file: !20, line: 172, type: !16)
!501 = !DILocalVariable(name: "j", scope: !490, file: !20, line: 172, type: !16)
!502 = !DILocalVariable(name: "k", scope: !490, file: !20, line: 172, type: !16)
!503 = !DILocalVariable(name: "signs", scope: !490, file: !20, line: 173, type: !6)
!504 = !DILocalVariable(name: "mask", scope: !490, file: !20, line: 173, type: !6)
!505 = !DILocation(line: 168, column: 54, scope: !490)
!506 = !DILocation(line: 169, column: 56, scope: !490)
!507 = !DILocation(line: 170, column: 56, scope: !490)
!508 = !DILocation(line: 171, column: 52, scope: !490)
!509 = !DILocation(line: 172, column: 18, scope: !490)
!510 = !DILocation(line: 175, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !490, file: !20, line: 175, column: 5)
!512 = !DILocation(line: 176, column: 53, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !20, line: 175, column: 29)
!514 = distinct !DILexicalBlock(scope: !511, file: !20, line: 175, column: 5)
!515 = !DILocation(line: 176, column: 49, scope: !513)
!516 = !DILocation(line: 176, column: 74, scope: !513)
!517 = !DILocation(line: 176, column: 9, scope: !513)
!518 = !DILocation(line: 175, column: 24, scope: !514)
!519 = !DILocation(line: 175, column: 19, scope: !514)
!520 = distinct !{!520, !510, !521}
!521 = !DILocation(line: 177, column: 5, scope: !511)
!522 = !DILocation(line: 178, column: 9, scope: !490)
!523 = !DILocation(line: 172, column: 24, scope: !490)
!524 = !DILocation(line: 182, column: 5, scope: !525)
!525 = distinct !DILexicalBlock(scope: !490, file: !20, line: 182, column: 5)
!526 = !DILocation(line: 172, column: 21, scope: !490)
!527 = !DILocation(line: 183, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !20, line: 183, column: 9)
!529 = distinct !DILexicalBlock(scope: !530, file: !20, line: 182, column: 29)
!530 = distinct !DILexicalBlock(scope: !525, file: !20, line: 182, column: 5)
!531 = !DILocation(line: 190, column: 14, scope: !490)
!532 = !DILocation(line: 190, column: 5, scope: !490)
!533 = !DILocation(line: 184, column: 17, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !20, line: 184, column: 17)
!535 = distinct !DILexicalBlock(scope: !536, file: !20, line: 183, column: 33)
!536 = distinct !DILexicalBlock(scope: !528, file: !20, line: 183, column: 9)
!537 = !DILocation(line: 184, column: 37, scope: !534)
!538 = !DILocation(line: 184, column: 17, scope: !535)
!539 = !DILocation(line: 185, column: 28, scope: !540)
!540 = distinct !DILexicalBlock(scope: !534, file: !20, line: 184, column: 43)
!541 = !DILocation(line: 185, column: 22, scope: !540)
!542 = !DILocation(line: 185, column: 17, scope: !540)
!543 = !DILocation(line: 185, column: 26, scope: !540)
!544 = !DILocation(line: 186, column: 13, scope: !540)
!545 = !DILocation(line: 0, scope: !490)
!546 = !DILocation(line: 183, column: 28, scope: !536)
!547 = !DILocation(line: 183, column: 23, scope: !536)
!548 = distinct !{!548, !527, !549}
!549 = !DILocation(line: 187, column: 9, scope: !528)
!550 = !DILocation(line: 188, column: 26, scope: !529)
!551 = !DILocation(line: 188, column: 19, scope: !529)
!552 = !DILocation(line: 188, column: 9, scope: !529)
!553 = !DILocation(line: 188, column: 24, scope: !529)
!554 = !DILocation(line: 182, column: 24, scope: !530)
!555 = !DILocation(line: 182, column: 19, scope: !530)
!556 = distinct !{!556, !524, !557}
!557 = !DILocation(line: 189, column: 5, scope: !525)
!558 = !DILocation(line: 191, column: 14, scope: !559)
!559 = distinct !DILexicalBlock(scope: !490, file: !20, line: 190, column: 23)
!560 = !DILocation(line: 191, column: 18, scope: !559)
!561 = !DILocation(line: 193, column: 9, scope: !490)
!562 = !DILocation(line: 173, column: 14, scope: !490)
!563 = !DILocation(line: 173, column: 21, scope: !490)
!564 = !DILocation(line: 198, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !490, file: !20, line: 198, column: 5)
!566 = !DILocation(line: 199, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !20, line: 198, column: 33)
!568 = distinct !DILexicalBlock(scope: !565, file: !20, line: 198, column: 5)
!569 = !DILocation(line: 199, column: 16, scope: !567)
!570 = !DILocation(line: 0, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !20, line: 201, column: 17)
!572 = distinct !DILexicalBlock(scope: !573, file: !20, line: 200, column: 33)
!573 = distinct !DILexicalBlock(scope: !574, file: !20, line: 200, column: 9)
!574 = distinct !DILexicalBlock(scope: !567, file: !20, line: 200, column: 9)
!575 = !DILocation(line: 200, column: 9, scope: !574)
!576 = !DILocation(line: 201, column: 33, scope: !571)
!577 = !DILocation(line: 201, column: 17, scope: !571)
!578 = !DILocation(line: 201, column: 38, scope: !571)
!579 = !DILocation(line: 201, column: 17, scope: !572)
!580 = !DILocation(line: 202, column: 47, scope: !581)
!581 = distinct !DILexicalBlock(scope: !571, file: !20, line: 201, column: 44)
!582 = !DILocation(line: 202, column: 24, scope: !581)
!583 = !DILocation(line: 203, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !20, line: 203, column: 21)
!585 = !DILocation(line: 203, column: 42, scope: !584)
!586 = !DILocation(line: 203, column: 21, scope: !581)
!587 = !DILocation(line: 206, column: 22, scope: !581)
!588 = !DILocation(line: 207, column: 13, scope: !581)
!589 = !DILocation(line: 200, column: 28, scope: !573)
!590 = !DILocation(line: 200, column: 23, scope: !573)
!591 = distinct !{!591, !575, !592}
!592 = !DILocation(line: 208, column: 9, scope: !574)
!593 = !DILocation(line: 198, column: 28, scope: !568)
!594 = !DILocation(line: 198, column: 19, scope: !568)
!595 = distinct !{!595, !564, !596}
!596 = !DILocation(line: 209, column: 5, scope: !565)
!597 = !DILocation(line: 210, column: 9, scope: !490)
!598 = !DILocation(line: 211, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !490, file: !20, line: 211, column: 5)
!600 = !DILocation(line: 212, column: 46, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !20, line: 211, column: 29)
!602 = distinct !DILexicalBlock(scope: !599, file: !20, line: 211, column: 5)
!603 = !DILocation(line: 212, column: 41, scope: !601)
!604 = !DILocation(line: 212, column: 18, scope: !601)
!605 = !DILocation(line: 212, column: 9, scope: !601)
!606 = !DILocation(line: 212, column: 16, scope: !601)
!607 = !DILocation(line: 211, column: 24, scope: !602)
!608 = !DILocation(line: 211, column: 19, scope: !602)
!609 = distinct !{!609, !598, !610}
!610 = !DILocation(line: 213, column: 5, scope: !599)
!611 = !DILocation(line: 214, column: 1, scope: !490)
!612 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_unpack_sig", scope: !20, file: !20, line: 229, type: !613, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !616)
!613 = !DISubroutineType(types: !614)
!614 = !{!25, !397, !255, !615, !199}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624}
!617 = !DILocalVariable(name: "z", arg: 1, scope: !612, file: !20, line: 229, type: !397)
!618 = !DILocalVariable(name: "h", arg: 2, scope: !612, file: !20, line: 230, type: !255)
!619 = !DILocalVariable(name: "c", arg: 3, scope: !612, file: !20, line: 231, type: !615)
!620 = !DILocalVariable(name: "sig", arg: 4, scope: !612, file: !20, line: 232, type: !199)
!621 = !DILocalVariable(name: "i", scope: !612, file: !20, line: 233, type: !16)
!622 = !DILocalVariable(name: "j", scope: !612, file: !20, line: 233, type: !16)
!623 = !DILocalVariable(name: "k", scope: !612, file: !20, line: 233, type: !16)
!624 = !DILocalVariable(name: "signs", scope: !612, file: !20, line: 234, type: !6)
!625 = !DILocation(line: 229, column: 51, scope: !612)
!626 = !DILocation(line: 230, column: 51, scope: !612)
!627 = !DILocation(line: 231, column: 47, scope: !612)
!628 = !DILocation(line: 232, column: 61, scope: !612)
!629 = !DILocation(line: 233, column: 18, scope: !612)
!630 = !DILocation(line: 236, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !612, file: !20, line: 236, column: 5)
!632 = !DILocation(line: 237, column: 48, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !20, line: 236, column: 29)
!634 = distinct !DILexicalBlock(scope: !631, file: !20, line: 236, column: 5)
!635 = !DILocation(line: 237, column: 67, scope: !633)
!636 = !DILocation(line: 237, column: 63, scope: !633)
!637 = !DILocation(line: 237, column: 9, scope: !633)
!638 = !DILocation(line: 236, column: 24, scope: !634)
!639 = !DILocation(line: 236, column: 19, scope: !634)
!640 = distinct !{!640, !630, !641}
!641 = !DILocation(line: 238, column: 5, scope: !631)
!642 = !DILocation(line: 239, column: 9, scope: !612)
!643 = !DILocation(line: 233, column: 24, scope: !612)
!644 = !DILocation(line: 243, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !612, file: !20, line: 243, column: 5)
!646 = !DILocation(line: 233, column: 21, scope: !612)
!647 = !DILocation(line: 264, column: 19, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !20, line: 264, column: 5)
!649 = distinct !DILexicalBlock(scope: !612, file: !20, line: 264, column: 5)
!650 = !DILocation(line: 264, column: 5, scope: !649)
!651 = !DILocation(line: 0, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !20, line: 244, column: 33)
!653 = distinct !DILexicalBlock(scope: !654, file: !20, line: 244, column: 9)
!654 = distinct !DILexicalBlock(scope: !655, file: !20, line: 244, column: 9)
!655 = distinct !DILexicalBlock(scope: !656, file: !20, line: 243, column: 29)
!656 = distinct !DILexicalBlock(scope: !645, file: !20, line: 243, column: 5)
!657 = !DILocation(line: 245, column: 33, scope: !652)
!658 = !DILocation(line: 248, column: 23, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !20, line: 248, column: 13)
!660 = !DILocation(line: 248, column: 13, scope: !659)
!661 = !DILocation(line: 248, column: 28, scope: !659)
!662 = !DILocation(line: 248, column: 50, scope: !659)
!663 = !DILocation(line: 248, column: 32, scope: !659)
!664 = !DILocation(line: 252, column: 25, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !20, line: 252, column: 9)
!666 = distinct !DILexicalBlock(scope: !655, file: !20, line: 252, column: 9)
!667 = !DILocation(line: 252, column: 23, scope: !665)
!668 = !DILocation(line: 252, column: 9, scope: !666)
!669 = !DILocation(line: 254, column: 19, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !20, line: 254, column: 17)
!671 = distinct !DILexicalBlock(scope: !665, file: !20, line: 252, column: 46)
!672 = !DILocation(line: 254, column: 23, scope: !670)
!673 = !DILocation(line: 254, column: 26, scope: !670)
!674 = !DILocation(line: 254, column: 36, scope: !670)
!675 = !DILocation(line: 254, column: 33, scope: !670)
!676 = !DILocation(line: 254, column: 17, scope: !671)
!677 = !DILocation(line: 257, column: 30, scope: !671)
!678 = !DILocation(line: 257, column: 13, scope: !671)
!679 = !DILocation(line: 257, column: 38, scope: !671)
!680 = !DILocation(line: 252, column: 41, scope: !665)
!681 = distinct !{!681, !668, !682}
!682 = !DILocation(line: 258, column: 9, scope: !666)
!683 = !DILocation(line: 243, column: 24, scope: !656)
!684 = !DILocation(line: 243, column: 19, scope: !656)
!685 = distinct !{!685, !644, !686}
!686 = !DILocation(line: 261, column: 5, scope: !645)
!687 = distinct !{!687, !650, !688}
!688 = !DILocation(line: 268, column: 5, scope: !649)
!689 = !DILocation(line: 265, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !20, line: 265, column: 13)
!691 = distinct !DILexicalBlock(scope: !648, file: !20, line: 264, column: 33)
!692 = !DILocation(line: 264, column: 28, scope: !648)
!693 = !DILocation(line: 265, column: 13, scope: !691)
!694 = !DILocation(line: 273, column: 22, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !20, line: 272, column: 29)
!696 = distinct !DILexicalBlock(scope: !697, file: !20, line: 272, column: 5)
!697 = distinct !DILexicalBlock(scope: !612, file: !20, line: 272, column: 5)
!698 = !DILocation(line: 269, column: 9, scope: !612)
!699 = !DILocation(line: 278, column: 38, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !20, line: 277, column: 29)
!701 = distinct !DILexicalBlock(scope: !702, file: !20, line: 277, column: 5)
!702 = distinct !DILexicalBlock(scope: !612, file: !20, line: 277, column: 5)
!703 = !DILocation(line: 234, column: 14, scope: !612)
!704 = !DILocation(line: 278, column: 28, scope: !700)
!705 = !DILocation(line: 278, column: 18, scope: !700)
!706 = !DILocation(line: 278, column: 48, scope: !700)
!707 = !DILocation(line: 278, column: 43, scope: !700)
!708 = !DILocation(line: 278, column: 15, scope: !700)
!709 = !DILocation(line: 277, column: 24, scope: !701)
!710 = !DILocation(line: 277, column: 19, scope: !701)
!711 = !DILocation(line: 277, column: 5, scope: !702)
!712 = distinct !{!712, !711, !713}
!713 = !DILocation(line: 279, column: 5, scope: !702)
!714 = !DILocation(line: 282, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !612, file: !20, line: 282, column: 9)
!716 = !DILocation(line: 282, column: 9, scope: !612)
!717 = !DILocation(line: 0, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !20, line: 288, column: 17)
!719 = distinct !DILexicalBlock(scope: !720, file: !20, line: 287, column: 33)
!720 = distinct !DILexicalBlock(scope: !721, file: !20, line: 287, column: 9)
!721 = distinct !DILexicalBlock(scope: !722, file: !20, line: 287, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !20, line: 286, column: 33)
!723 = distinct !DILexicalBlock(scope: !724, file: !20, line: 286, column: 5)
!724 = distinct !DILexicalBlock(scope: !612, file: !20, line: 286, column: 5)
!725 = !DILocation(line: 0, scope: !726)
!726 = distinct !DILexicalBlock(scope: !718, file: !20, line: 288, column: 39)
!727 = !DILocation(line: 287, column: 9, scope: !721)
!728 = !DILocation(line: 288, column: 18, scope: !718)
!729 = !DILocation(line: 288, column: 31, scope: !718)
!730 = !DILocation(line: 288, column: 17, scope: !719)
!731 = !DILocation(line: 289, column: 33, scope: !726)
!732 = !DILocation(line: 289, column: 17, scope: !726)
!733 = !DILocation(line: 290, column: 43, scope: !726)
!734 = !DILocation(line: 290, column: 59, scope: !726)
!735 = !DILocation(line: 290, column: 41, scope: !726)
!736 = !DILocation(line: 290, column: 64, scope: !726)
!737 = !DILocation(line: 290, column: 38, scope: !726)
!738 = !DILocation(line: 291, column: 23, scope: !726)
!739 = !DILocation(line: 292, column: 13, scope: !726)
!740 = !DILocation(line: 0, scope: !612)
!741 = !DILocation(line: 287, column: 28, scope: !720)
!742 = !DILocation(line: 287, column: 23, scope: !720)
!743 = distinct !{!743, !727, !744}
!744 = !DILocation(line: 293, column: 9, scope: !721)
!745 = !DILocation(line: 286, column: 28, scope: !723)
!746 = !DILocation(line: 286, column: 19, scope: !723)
!747 = !DILocation(line: 286, column: 5, scope: !724)
!748 = distinct !{!748, !747, !749}
!749 = !DILocation(line: 294, column: 5, scope: !724)
!750 = !DILocation(line: 297, column: 1, scope: !612)
!751 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_reduce", scope: !27, file: !27, line: 18, type: !752, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !759)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !210, line: 9, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 7, size: 8192, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "coeffs", scope: !756, file: !210, line: 8, baseType: !214, size: 8192)
!759 = !{!760, !761}
!760 = !DILocalVariable(name: "a", arg: 1, scope: !751, file: !27, line: 18, type: !754)
!761 = !DILocalVariable(name: "i", scope: !751, file: !27, line: 19, type: !16)
!762 = !DILocation(line: 18, column: 49, scope: !751)
!763 = !DILocation(line: 19, column: 18, scope: !751)
!764 = !DILocation(line: 20, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !751, file: !27, line: 20, column: 5)
!766 = !DILocation(line: 21, column: 58, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !27, line: 20, column: 29)
!768 = distinct !DILexicalBlock(scope: !765, file: !27, line: 20, column: 5)
!769 = !DILocation(line: 21, column: 24, scope: !767)
!770 = !DILocation(line: 21, column: 22, scope: !767)
!771 = !DILocation(line: 20, column: 24, scope: !768)
!772 = !DILocation(line: 20, column: 19, scope: !768)
!773 = distinct !{!773, !764, !774}
!774 = !DILocation(line: 22, column: 5, scope: !765)
!775 = !DILocation(line: 23, column: 1, scope: !751)
!776 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_csubq", scope: !27, file: !27, line: 33, type: !752, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !777)
!777 = !{!778, !779}
!778 = !DILocalVariable(name: "a", arg: 1, scope: !776, file: !27, line: 33, type: !754)
!779 = !DILocalVariable(name: "i", scope: !776, file: !27, line: 34, type: !16)
!780 = !DILocation(line: 33, column: 48, scope: !776)
!781 = !DILocation(line: 34, column: 18, scope: !776)
!782 = !DILocation(line: 35, column: 5, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !27, line: 35, column: 5)
!784 = !DILocation(line: 36, column: 55, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !27, line: 35, column: 29)
!786 = distinct !DILexicalBlock(scope: !783, file: !27, line: 35, column: 5)
!787 = !DILocation(line: 36, column: 24, scope: !785)
!788 = !DILocation(line: 36, column: 22, scope: !785)
!789 = !DILocation(line: 35, column: 24, scope: !786)
!790 = !DILocation(line: 35, column: 19, scope: !786)
!791 = distinct !{!791, !782, !792}
!792 = !DILocation(line: 37, column: 5, scope: !783)
!793 = !DILocation(line: 38, column: 1, scope: !776)
!794 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_freeze", scope: !27, file: !27, line: 48, type: !752, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !795)
!795 = !{!796, !797}
!796 = !DILocalVariable(name: "a", arg: 1, scope: !794, file: !27, line: 48, type: !754)
!797 = !DILocalVariable(name: "i", scope: !794, file: !27, line: 49, type: !16)
!798 = !DILocation(line: 48, column: 49, scope: !794)
!799 = !DILocation(line: 49, column: 18, scope: !794)
!800 = !DILocation(line: 50, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !794, file: !27, line: 50, column: 5)
!802 = !DILocation(line: 51, column: 56, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !27, line: 50, column: 29)
!804 = distinct !DILexicalBlock(scope: !801, file: !27, line: 50, column: 5)
!805 = !DILocation(line: 51, column: 24, scope: !803)
!806 = !DILocation(line: 51, column: 22, scope: !803)
!807 = !DILocation(line: 50, column: 24, scope: !804)
!808 = !DILocation(line: 50, column: 19, scope: !804)
!809 = distinct !{!809, !800, !810}
!810 = !DILocation(line: 52, column: 5, scope: !801)
!811 = !DILocation(line: 53, column: 1, scope: !794)
!812 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_add", scope: !27, file: !27, line: 64, type: !813, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !817)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !754, !815, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!817 = !{!818, !819, !820, !821}
!818 = !DILocalVariable(name: "c", arg: 1, scope: !812, file: !27, line: 64, type: !754)
!819 = !DILocalVariable(name: "a", arg: 2, scope: !812, file: !27, line: 64, type: !815)
!820 = !DILocalVariable(name: "b", arg: 3, scope: !812, file: !27, line: 64, type: !815)
!821 = !DILocalVariable(name: "i", scope: !812, file: !27, line: 65, type: !16)
!822 = !DILocation(line: 64, column: 46, scope: !812)
!823 = !DILocation(line: 64, column: 61, scope: !812)
!824 = !DILocation(line: 64, column: 76, scope: !812)
!825 = !DILocation(line: 65, column: 18, scope: !812)
!826 = !DILocation(line: 66, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !812, file: !27, line: 66, column: 5)
!828 = !DILocation(line: 67, column: 24, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !27, line: 66, column: 29)
!830 = distinct !DILexicalBlock(scope: !827, file: !27, line: 66, column: 5)
!831 = !DILocation(line: 67, column: 39, scope: !829)
!832 = !DILocation(line: 67, column: 37, scope: !829)
!833 = !DILocation(line: 67, column: 9, scope: !829)
!834 = !DILocation(line: 67, column: 22, scope: !829)
!835 = !DILocation(line: 66, column: 24, scope: !830)
!836 = !DILocation(line: 66, column: 19, scope: !830)
!837 = distinct !{!837, !826, !838}
!838 = !DILocation(line: 68, column: 5, scope: !827)
!839 = !DILocation(line: 69, column: 1, scope: !812)
!840 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_sub", scope: !27, file: !27, line: 83, type: !813, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !841)
!841 = !{!842, !843, !844, !845}
!842 = !DILocalVariable(name: "c", arg: 1, scope: !840, file: !27, line: 83, type: !754)
!843 = !DILocalVariable(name: "a", arg: 2, scope: !840, file: !27, line: 83, type: !815)
!844 = !DILocalVariable(name: "b", arg: 3, scope: !840, file: !27, line: 83, type: !815)
!845 = !DILocalVariable(name: "i", scope: !840, file: !27, line: 84, type: !16)
!846 = !DILocation(line: 83, column: 46, scope: !840)
!847 = !DILocation(line: 83, column: 61, scope: !840)
!848 = !DILocation(line: 83, column: 76, scope: !840)
!849 = !DILocation(line: 84, column: 18, scope: !840)
!850 = !DILocation(line: 85, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !840, file: !27, line: 85, column: 5)
!852 = !DILocation(line: 86, column: 24, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !27, line: 85, column: 29)
!854 = distinct !DILexicalBlock(scope: !851, file: !27, line: 85, column: 5)
!855 = !DILocation(line: 86, column: 37, scope: !853)
!856 = !DILocation(line: 86, column: 47, scope: !853)
!857 = !DILocation(line: 86, column: 45, scope: !853)
!858 = !DILocation(line: 86, column: 9, scope: !853)
!859 = !DILocation(line: 86, column: 22, scope: !853)
!860 = !DILocation(line: 85, column: 24, scope: !854)
!861 = !DILocation(line: 85, column: 19, scope: !854)
!862 = distinct !{!862, !850, !863}
!863 = !DILocation(line: 87, column: 5, scope: !851)
!864 = !DILocation(line: 88, column: 1, scope: !840)
!865 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl", scope: !27, file: !27, line: 98, type: !752, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !866)
!866 = !{!867, !868}
!867 = !DILocalVariable(name: "a", arg: 1, scope: !865, file: !27, line: 98, type: !754)
!868 = !DILocalVariable(name: "i", scope: !865, file: !27, line: 99, type: !16)
!869 = !DILocation(line: 98, column: 49, scope: !865)
!870 = !DILocation(line: 99, column: 18, scope: !865)
!871 = !DILocation(line: 100, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !865, file: !27, line: 100, column: 5)
!873 = !DILocation(line: 101, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !27, line: 100, column: 29)
!875 = distinct !DILexicalBlock(scope: !872, file: !27, line: 100, column: 5)
!876 = !DILocation(line: 101, column: 22, scope: !874)
!877 = !DILocation(line: 100, column: 24, scope: !875)
!878 = !DILocation(line: 100, column: 19, scope: !875)
!879 = distinct !{!879, !871, !880}
!880 = !DILocation(line: 102, column: 5, scope: !872)
!881 = !DILocation(line: 103, column: 1, scope: !865)
!882 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_ntt", scope: !27, file: !27, line: 113, type: !752, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "a", arg: 1, scope: !882, file: !27, line: 113, type: !754)
!885 = !DILocation(line: 113, column: 46, scope: !882)
!886 = !DILocation(line: 114, column: 34, scope: !882)
!887 = !DILocation(line: 114, column: 5, scope: !882)
!888 = !DILocation(line: 115, column: 1, scope: !882)
!889 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery", scope: !27, file: !27, line: 125, type: !752, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !890)
!890 = !{!891}
!891 = !DILocalVariable(name: "a", arg: 1, scope: !889, file: !27, line: 125, type: !754)
!892 = !DILocation(line: 125, column: 60, scope: !889)
!893 = !DILocation(line: 126, column: 49, scope: !889)
!894 = !DILocation(line: 126, column: 5, scope: !889)
!895 = !DILocation(line: 127, column: 1, scope: !889)
!896 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery", scope: !27, file: !27, line: 141, type: !813, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !897)
!897 = !{!898, !899, !900, !901}
!898 = !DILocalVariable(name: "c", arg: 1, scope: !896, file: !27, line: 141, type: !754)
!899 = !DILocalVariable(name: "a", arg: 2, scope: !896, file: !27, line: 141, type: !815)
!900 = !DILocalVariable(name: "b", arg: 3, scope: !896, file: !27, line: 141, type: !815)
!901 = !DILocalVariable(name: "i", scope: !896, file: !27, line: 142, type: !16)
!902 = !DILocation(line: 141, column: 66, scope: !896)
!903 = !DILocation(line: 141, column: 81, scope: !896)
!904 = !DILocation(line: 141, column: 96, scope: !896)
!905 = !DILocation(line: 142, column: 18, scope: !896)
!906 = !DILocation(line: 144, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !896, file: !27, line: 144, column: 5)
!908 = !DILocation(line: 145, column: 77, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !27, line: 144, column: 29)
!910 = distinct !DILexicalBlock(scope: !907, file: !27, line: 144, column: 5)
!911 = !DILocation(line: 145, column: 67, scope: !909)
!912 = !DILocation(line: 145, column: 92, scope: !909)
!913 = !DILocation(line: 145, column: 90, scope: !909)
!914 = !DILocation(line: 145, column: 24, scope: !909)
!915 = !DILocation(line: 145, column: 9, scope: !909)
!916 = !DILocation(line: 145, column: 22, scope: !909)
!917 = !DILocation(line: 144, column: 24, scope: !910)
!918 = !DILocation(line: 144, column: 19, scope: !910)
!919 = distinct !{!919, !906, !920}
!920 = !DILocation(line: 146, column: 5, scope: !907)
!921 = !DILocation(line: 148, column: 1, scope: !896)
!922 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_power2round", scope: !27, file: !27, line: 162, type: !923, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !754, !754, !815}
!925 = !{!926, !927, !928, !929}
!926 = !DILocalVariable(name: "a1", arg: 1, scope: !922, file: !27, line: 162, type: !754)
!927 = !DILocalVariable(name: "a0", arg: 2, scope: !922, file: !27, line: 162, type: !754)
!928 = !DILocalVariable(name: "a", arg: 3, scope: !922, file: !27, line: 162, type: !815)
!929 = !DILocalVariable(name: "i", scope: !922, file: !27, line: 163, type: !16)
!930 = !DILocation(line: 162, column: 54, scope: !922)
!931 = !DILocation(line: 162, column: 64, scope: !922)
!932 = !DILocation(line: 162, column: 80, scope: !922)
!933 = !DILocation(line: 163, column: 18, scope: !922)
!934 = !DILocation(line: 165, column: 5, scope: !935)
!935 = distinct !DILexicalBlock(scope: !922, file: !27, line: 165, column: 5)
!936 = !DILocation(line: 166, column: 62, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !27, line: 165, column: 29)
!938 = distinct !DILexicalBlock(scope: !935, file: !27, line: 165, column: 5)
!939 = !DILocation(line: 166, column: 77, scope: !937)
!940 = !DILocation(line: 166, column: 25, scope: !937)
!941 = !DILocation(line: 166, column: 9, scope: !937)
!942 = !DILocation(line: 166, column: 23, scope: !937)
!943 = !DILocation(line: 165, column: 24, scope: !938)
!944 = !DILocation(line: 165, column: 19, scope: !938)
!945 = distinct !{!945, !934, !946}
!946 = !DILocation(line: 167, column: 5, scope: !935)
!947 = !DILocation(line: 169, column: 1, scope: !922)
!948 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_decompose", scope: !27, file: !27, line: 184, type: !923, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !949)
!949 = !{!950, !951, !952, !953}
!950 = !DILocalVariable(name: "a1", arg: 1, scope: !948, file: !27, line: 184, type: !754)
!951 = !DILocalVariable(name: "a0", arg: 2, scope: !948, file: !27, line: 184, type: !754)
!952 = !DILocalVariable(name: "a", arg: 3, scope: !948, file: !27, line: 184, type: !815)
!953 = !DILocalVariable(name: "i", scope: !948, file: !27, line: 185, type: !16)
!954 = !DILocation(line: 184, column: 52, scope: !948)
!955 = !DILocation(line: 184, column: 62, scope: !948)
!956 = !DILocation(line: 184, column: 78, scope: !948)
!957 = !DILocation(line: 185, column: 18, scope: !948)
!958 = !DILocation(line: 187, column: 5, scope: !959)
!959 = distinct !DILexicalBlock(scope: !948, file: !27, line: 187, column: 5)
!960 = !DILocation(line: 188, column: 60, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !27, line: 187, column: 29)
!962 = distinct !DILexicalBlock(scope: !959, file: !27, line: 187, column: 5)
!963 = !DILocation(line: 188, column: 75, scope: !961)
!964 = !DILocation(line: 188, column: 25, scope: !961)
!965 = !DILocation(line: 188, column: 9, scope: !961)
!966 = !DILocation(line: 188, column: 23, scope: !961)
!967 = !DILocation(line: 187, column: 24, scope: !962)
!968 = !DILocation(line: 187, column: 19, scope: !962)
!969 = distinct !{!969, !958, !970}
!970 = !DILocation(line: 189, column: 5, scope: !959)
!971 = !DILocation(line: 191, column: 1, scope: !948)
!972 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint", scope: !27, file: !27, line: 206, type: !973, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!16, !754, !815, !815}
!975 = !{!976, !977, !978, !979, !980}
!976 = !DILocalVariable(name: "h", arg: 1, scope: !972, file: !27, line: 206, type: !754)
!977 = !DILocalVariable(name: "a0", arg: 2, scope: !972, file: !27, line: 206, type: !815)
!978 = !DILocalVariable(name: "a1", arg: 3, scope: !972, file: !27, line: 206, type: !815)
!979 = !DILocalVariable(name: "i", scope: !972, file: !27, line: 207, type: !16)
!980 = !DILocalVariable(name: "s", scope: !972, file: !27, line: 207, type: !16)
!981 = !DILocation(line: 206, column: 60, scope: !972)
!982 = !DILocation(line: 206, column: 75, scope: !972)
!983 = !DILocation(line: 206, column: 91, scope: !972)
!984 = !DILocation(line: 207, column: 21, scope: !972)
!985 = !DILocation(line: 207, column: 18, scope: !972)
!986 = !DILocation(line: 209, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !972, file: !27, line: 209, column: 5)
!988 = !DILocation(line: 210, column: 59, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !27, line: 209, column: 29)
!990 = distinct !DILexicalBlock(scope: !987, file: !27, line: 209, column: 5)
!991 = !DILocation(line: 210, column: 74, scope: !989)
!992 = !DILocation(line: 210, column: 24, scope: !989)
!993 = !DILocation(line: 210, column: 9, scope: !989)
!994 = !DILocation(line: 210, column: 22, scope: !989)
!995 = !DILocation(line: 211, column: 11, scope: !989)
!996 = !DILocation(line: 209, column: 24, scope: !990)
!997 = !DILocation(line: 209, column: 19, scope: !990)
!998 = distinct !{!998, !986, !999}
!999 = !DILocation(line: 212, column: 5, scope: !987)
!1000 = !DILocation(line: 214, column: 5, scope: !972)
!1001 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint", scope: !27, file: !27, line: 226, type: !813, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005, !1006}
!1003 = !DILocalVariable(name: "a", arg: 1, scope: !1001, file: !27, line: 226, type: !754)
!1004 = !DILocalVariable(name: "b", arg: 2, scope: !1001, file: !27, line: 226, type: !815)
!1005 = !DILocalVariable(name: "h", arg: 3, scope: !1001, file: !27, line: 226, type: !815)
!1006 = !DILocalVariable(name: "i", scope: !1001, file: !27, line: 227, type: !16)
!1007 = !DILocation(line: 226, column: 51, scope: !1001)
!1008 = !DILocation(line: 226, column: 66, scope: !1001)
!1009 = !DILocation(line: 226, column: 81, scope: !1001)
!1010 = !DILocation(line: 227, column: 18, scope: !1001)
!1011 = !DILocation(line: 229, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !27, line: 229, column: 5)
!1013 = !DILocation(line: 230, column: 58, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !27, line: 229, column: 29)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !27, line: 229, column: 5)
!1016 = !DILocation(line: 230, column: 72, scope: !1014)
!1017 = !DILocation(line: 230, column: 24, scope: !1014)
!1018 = !DILocation(line: 230, column: 9, scope: !1014)
!1019 = !DILocation(line: 230, column: 22, scope: !1014)
!1020 = !DILocation(line: 229, column: 24, scope: !1015)
!1021 = !DILocation(line: 229, column: 19, scope: !1015)
!1022 = distinct !{!1022, !1011, !1023}
!1023 = !DILocation(line: 231, column: 5, scope: !1012)
!1024 = !DILocation(line: 233, column: 1, scope: !1001)
!1025 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm", scope: !27, file: !27, line: 246, type: !1026, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!25, !815, !14}
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DILocalVariable(name: "a", arg: 1, scope: !1025, file: !27, line: 246, type: !815)
!1030 = !DILocalVariable(name: "B", arg: 2, scope: !1025, file: !27, line: 246, type: !14)
!1031 = !DILocalVariable(name: "i", scope: !1025, file: !27, line: 247, type: !16)
!1032 = !DILocalVariable(name: "t", scope: !1025, file: !27, line: 248, type: !23)
!1033 = !DILocation(line: 246, column: 55, scope: !1025)
!1034 = !DILocation(line: 246, column: 67, scope: !1025)
!1035 = !DILocation(line: 247, column: 18, scope: !1025)
!1036 = !DILocation(line: 253, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1025, file: !27, line: 253, column: 5)
!1038 = !DILocation(line: 253, column: 19, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1037, file: !27, line: 253, column: 5)
!1040 = distinct !{!1040, !1036, !1041}
!1041 = !DILocation(line: 262, column: 5, scope: !1037)
!1042 = !DILocation(line: 255, column: 38, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !27, line: 253, column: 29)
!1044 = !DILocation(line: 255, column: 36, scope: !1043)
!1045 = !DILocation(line: 248, column: 13, scope: !1025)
!1046 = !DILocation(line: 256, column: 17, scope: !1043)
!1047 = !DILocation(line: 256, column: 11, scope: !1043)
!1048 = !DILocation(line: 257, column: 25, scope: !1043)
!1049 = !DILocation(line: 259, column: 25, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !27, line: 259, column: 13)
!1051 = !DILocation(line: 253, column: 24, scope: !1039)
!1052 = !DILocation(line: 259, column: 13, scope: !1043)
!1053 = !DILocation(line: 0, scope: !1025)
!1054 = !DILocation(line: 265, column: 1, scope: !1025)
!1055 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_uniform", scope: !27, file: !27, line: 317, type: !1056, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !754, !199, !41}
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1070}
!1059 = !DILocalVariable(name: "a", arg: 1, scope: !1055, file: !27, line: 317, type: !754)
!1060 = !DILocalVariable(name: "seed", arg: 2, scope: !1055, file: !27, line: 318, type: !199)
!1061 = !DILocalVariable(name: "nonce", arg: 3, scope: !1055, file: !27, line: 319, type: !41)
!1062 = !DILocalVariable(name: "i", scope: !1055, file: !27, line: 320, type: !16)
!1063 = !DILocalVariable(name: "ctr", scope: !1055, file: !27, line: 320, type: !16)
!1064 = !DILocalVariable(name: "off", scope: !1055, file: !27, line: 320, type: !16)
!1065 = !DILocalVariable(name: "buflen", scope: !1055, file: !27, line: 321, type: !16)
!1066 = !DILocalVariable(name: "buf", scope: !1055, file: !27, line: 322, type: !1067)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 6736, elements: !1068)
!1068 = !{!1069}
!1069 = !DISubrange(count: 842)
!1070 = !DILocalVariable(name: "state", scope: !1055, file: !27, line: 323, type: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !1072, line: 22, baseType: !1073)
!1072 = !DIFile(filename: "../../../common/fips202.h", directory: "/Users/atomb/galois/PQClean/crypto_sign/dilithium2/clean")
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 20, size: 1600, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1073, file: !1072, line: 21, baseType: !1076, size: 1600)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 25)
!1079 = !DILocation(line: 317, column: 50, scope: !1055)
!1080 = !DILocation(line: 318, column: 29, scope: !1055)
!1081 = !DILocation(line: 319, column: 18, scope: !1055)
!1082 = !DILocation(line: 321, column: 18, scope: !1055)
!1083 = !DILocation(line: 322, column: 5, scope: !1055)
!1084 = !DILocation(line: 322, column: 19, scope: !1055)
!1085 = !DILocation(line: 323, column: 5, scope: !1055)
!1086 = !DILocation(line: 323, column: 17, scope: !1055)
!1087 = !DILocation(line: 325, column: 5, scope: !1055)
!1088 = !DILocation(line: 326, column: 5, scope: !1055)
!1089 = !DILocation(line: 328, column: 23, scope: !1055)
!1090 = !DILocation(line: 328, column: 11, scope: !1055)
!1091 = !DILocation(line: 320, column: 21, scope: !1055)
!1092 = !DILocation(line: 330, column: 16, scope: !1055)
!1093 = !DILocation(line: 330, column: 5, scope: !1055)
!1094 = !DILocation(line: 331, column: 22, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1055, file: !27, line: 330, column: 21)
!1096 = !DILocation(line: 320, column: 26, scope: !1055)
!1097 = !DILocation(line: 320, column: 18, scope: !1055)
!1098 = !DILocation(line: 332, column: 23, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !27, line: 332, column: 9)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !27, line: 332, column: 9)
!1101 = !DILocation(line: 332, column: 9, scope: !1100)
!1102 = !DILocation(line: 0, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !27, line: 332, column: 35)
!1104 = !DILocation(line: 333, column: 39, scope: !1103)
!1105 = !DILocation(line: 333, column: 22, scope: !1103)
!1106 = !DILocation(line: 333, column: 13, scope: !1103)
!1107 = !DILocation(line: 333, column: 20, scope: !1103)
!1108 = !DILocation(line: 332, column: 30, scope: !1099)
!1109 = distinct !{!1109, !1101, !1110}
!1110 = !DILocation(line: 334, column: 9, scope: !1100)
!1111 = !DILocation(line: 336, column: 39, scope: !1095)
!1112 = !DILocation(line: 337, column: 9, scope: !1095)
!1113 = !DILocation(line: 338, column: 38, scope: !1095)
!1114 = !DILocation(line: 338, column: 47, scope: !1095)
!1115 = !DILocation(line: 338, column: 16, scope: !1095)
!1116 = !DILocation(line: 338, column: 13, scope: !1095)
!1117 = distinct !{!1117, !1093, !1118}
!1118 = !DILocation(line: 339, column: 5, scope: !1055)
!1119 = !DILocation(line: 340, column: 1, scope: !1055)
!1120 = distinct !DISubprogram(name: "rej_uniform", scope: !27, file: !27, line: 281, type: !1121, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!16, !59, !16, !199, !16}
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1124 = !DILocalVariable(name: "a", arg: 1, scope: !1120, file: !27, line: 281, type: !59)
!1125 = !DILocalVariable(name: "len", arg: 2, scope: !1120, file: !27, line: 282, type: !16)
!1126 = !DILocalVariable(name: "buf", arg: 3, scope: !1120, file: !27, line: 283, type: !199)
!1127 = !DILocalVariable(name: "buflen", arg: 4, scope: !1120, file: !27, line: 284, type: !16)
!1128 = !DILocalVariable(name: "ctr", scope: !1120, file: !27, line: 285, type: !16)
!1129 = !DILocalVariable(name: "pos", scope: !1120, file: !27, line: 285, type: !16)
!1130 = !DILocalVariable(name: "t", scope: !1120, file: !27, line: 286, type: !14)
!1131 = !DILocation(line: 281, column: 43, scope: !1120)
!1132 = !DILocation(line: 282, column: 46, scope: !1120)
!1133 = !DILocation(line: 283, column: 54, scope: !1120)
!1134 = !DILocation(line: 284, column: 46, scope: !1120)
!1135 = !DILocation(line: 285, column: 23, scope: !1120)
!1136 = !DILocation(line: 285, column: 18, scope: !1120)
!1137 = !DILocation(line: 289, column: 16, scope: !1120)
!1138 = !DILocation(line: 289, column: 33, scope: !1120)
!1139 = !DILocation(line: 289, column: 22, scope: !1120)
!1140 = !DILocation(line: 290, column: 21, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1120, file: !27, line: 289, column: 44)
!1142 = !DILocation(line: 290, column: 14, scope: !1141)
!1143 = !DILocation(line: 286, column: 14, scope: !1120)
!1144 = !DILocation(line: 291, column: 31, scope: !1141)
!1145 = !DILocation(line: 291, column: 24, scope: !1141)
!1146 = !DILocation(line: 291, column: 14, scope: !1141)
!1147 = !DILocation(line: 291, column: 35, scope: !1141)
!1148 = !DILocation(line: 291, column: 11, scope: !1141)
!1149 = !DILocation(line: 292, column: 24, scope: !1141)
!1150 = !DILocation(line: 292, column: 14, scope: !1141)
!1151 = !DILocation(line: 292, column: 35, scope: !1141)
!1152 = !DILocation(line: 293, column: 11, scope: !1141)
!1153 = !DILocation(line: 295, column: 15, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1141, file: !27, line: 295, column: 13)
!1155 = !DILocation(line: 295, column: 13, scope: !1141)
!1156 = !DILocation(line: 296, column: 18, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !27, line: 295, column: 20)
!1158 = !DILocation(line: 296, column: 13, scope: !1157)
!1159 = !DILocation(line: 296, column: 22, scope: !1157)
!1160 = !DILocation(line: 297, column: 9, scope: !1157)
!1161 = !DILocation(line: 0, scope: !1120)
!1162 = !DILocation(line: 289, column: 29, scope: !1120)
!1163 = distinct !{!1163, !1164, !1165}
!1164 = !DILocation(line: 289, column: 5, scope: !1120)
!1165 = !DILocation(line: 298, column: 5, scope: !1120)
!1166 = !DILocation(line: 300, column: 5, scope: !1120)
!1167 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta", scope: !27, file: !27, line: 394, type: !1056, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1177}
!1169 = !DILocalVariable(name: "a", arg: 1, scope: !1167, file: !27, line: 394, type: !754)
!1170 = !DILocalVariable(name: "seed", arg: 2, scope: !1167, file: !27, line: 395, type: !199)
!1171 = !DILocalVariable(name: "nonce", arg: 3, scope: !1167, file: !27, line: 396, type: !41)
!1172 = !DILocalVariable(name: "ctr", scope: !1167, file: !27, line: 397, type: !16)
!1173 = !DILocalVariable(name: "buf", scope: !1167, file: !27, line: 398, type: !1174)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1344, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 168)
!1177 = !DILocalVariable(name: "state", scope: !1167, file: !27, line: 399, type: !1071)
!1178 = !DILocation(line: 394, column: 54, scope: !1167)
!1179 = !DILocation(line: 395, column: 29, scope: !1167)
!1180 = !DILocation(line: 396, column: 18, scope: !1167)
!1181 = !DILocation(line: 398, column: 5, scope: !1167)
!1182 = !DILocation(line: 398, column: 19, scope: !1167)
!1183 = !DILocation(line: 399, column: 5, scope: !1167)
!1184 = !DILocation(line: 399, column: 17, scope: !1167)
!1185 = !DILocation(line: 401, column: 5, scope: !1167)
!1186 = !DILocation(line: 402, column: 5, scope: !1167)
!1187 = !DILocation(line: 404, column: 19, scope: !1167)
!1188 = !DILocation(line: 404, column: 11, scope: !1167)
!1189 = !DILocation(line: 397, column: 18, scope: !1167)
!1190 = !DILocation(line: 406, column: 16, scope: !1167)
!1191 = !DILocation(line: 406, column: 5, scope: !1167)
!1192 = !DILocation(line: 407, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1167, file: !27, line: 406, column: 21)
!1194 = !DILocation(line: 408, column: 34, scope: !1193)
!1195 = !DILocation(line: 408, column: 43, scope: !1193)
!1196 = !DILocation(line: 408, column: 16, scope: !1193)
!1197 = !DILocation(line: 408, column: 13, scope: !1193)
!1198 = distinct !{!1198, !1191, !1199}
!1199 = !DILocation(line: 409, column: 5, scope: !1167)
!1200 = !DILocation(line: 410, column: 1, scope: !1167)
!1201 = distinct !DISubprogram(name: "rej_eta", scope: !27, file: !27, line: 356, type: !1121, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1203 = !DILocalVariable(name: "a", arg: 1, scope: !1201, file: !27, line: 356, type: !59)
!1204 = !DILocalVariable(name: "len", arg: 2, scope: !1201, file: !27, line: 357, type: !16)
!1205 = !DILocalVariable(name: "buf", arg: 3, scope: !1201, file: !27, line: 358, type: !199)
!1206 = !DILocalVariable(name: "buflen", arg: 4, scope: !1201, file: !27, line: 359, type: !16)
!1207 = !DILocalVariable(name: "ctr", scope: !1201, file: !27, line: 360, type: !16)
!1208 = !DILocalVariable(name: "pos", scope: !1201, file: !27, line: 360, type: !16)
!1209 = !DILocalVariable(name: "t0", scope: !1201, file: !27, line: 361, type: !14)
!1210 = !DILocalVariable(name: "t1", scope: !1201, file: !27, line: 361, type: !14)
!1211 = !DILocation(line: 356, column: 39, scope: !1201)
!1212 = !DILocation(line: 357, column: 42, scope: !1201)
!1213 = !DILocation(line: 358, column: 50, scope: !1201)
!1214 = !DILocation(line: 359, column: 42, scope: !1201)
!1215 = !DILocation(line: 360, column: 23, scope: !1201)
!1216 = !DILocation(line: 360, column: 18, scope: !1201)
!1217 = !DILocation(line: 364, column: 16, scope: !1201)
!1218 = !DILocation(line: 364, column: 22, scope: !1201)
!1219 = !DILocation(line: 365, column: 14, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1201, file: !27, line: 364, column: 39)
!1221 = !DILocation(line: 365, column: 23, scope: !1220)
!1222 = !DILocation(line: 361, column: 14, scope: !1201)
!1223 = !DILocation(line: 366, column: 21, scope: !1220)
!1224 = !DILocation(line: 366, column: 25, scope: !1220)
!1225 = !DILocation(line: 361, column: 18, scope: !1201)
!1226 = !DILocation(line: 368, column: 16, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !27, line: 368, column: 13)
!1228 = !DILocation(line: 368, column: 13, scope: !1220)
!1229 = !DILocation(line: 369, column: 32, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !27, line: 368, column: 28)
!1231 = !DILocation(line: 369, column: 18, scope: !1230)
!1232 = !DILocation(line: 369, column: 13, scope: !1230)
!1233 = !DILocation(line: 369, column: 22, scope: !1230)
!1234 = !DILocation(line: 370, column: 9, scope: !1230)
!1235 = !DILocation(line: 0, scope: !1201)
!1236 = !DILocation(line: 371, column: 16, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1220, file: !27, line: 371, column: 13)
!1238 = !DILocation(line: 371, column: 34, scope: !1237)
!1239 = !DILocation(line: 371, column: 27, scope: !1237)
!1240 = !DILocation(line: 372, column: 32, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !27, line: 371, column: 41)
!1242 = !DILocation(line: 372, column: 18, scope: !1241)
!1243 = !DILocation(line: 372, column: 13, scope: !1241)
!1244 = !DILocation(line: 372, column: 22, scope: !1241)
!1245 = !DILocation(line: 373, column: 9, scope: !1241)
!1246 = !DILocation(line: 0, scope: !1220)
!1247 = !DILocation(line: 364, column: 29, scope: !1201)
!1248 = distinct !{!1248, !1249, !1250}
!1249 = !DILocation(line: 364, column: 5, scope: !1201)
!1250 = !DILocation(line: 374, column: 5, scope: !1201)
!1251 = !DILocation(line: 376, column: 5, scope: !1201)
!1252 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1", scope: !27, file: !27, line: 472, type: !1056, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1265}
!1254 = !DILocalVariable(name: "a", arg: 1, scope: !1252, file: !27, line: 472, type: !754)
!1255 = !DILocalVariable(name: "seed", arg: 2, scope: !1252, file: !27, line: 473, type: !199)
!1256 = !DILocalVariable(name: "nonce", arg: 3, scope: !1252, file: !27, line: 474, type: !41)
!1257 = !DILocalVariable(name: "i", scope: !1252, file: !27, line: 475, type: !16)
!1258 = !DILocalVariable(name: "ctr", scope: !1252, file: !27, line: 475, type: !16)
!1259 = !DILocalVariable(name: "off", scope: !1252, file: !27, line: 475, type: !16)
!1260 = !DILocalVariable(name: "buflen", scope: !1252, file: !27, line: 476, type: !16)
!1261 = !DILocalVariable(name: "buf", scope: !1252, file: !27, line: 477, type: !1262)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 5472, elements: !1263)
!1263 = !{!1264}
!1264 = !DISubrange(count: 684)
!1265 = !DILocalVariable(name: "state", scope: !1252, file: !27, line: 478, type: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !1072, line: 32, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 30, size: 1600, elements: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1267, file: !1072, line: 31, baseType: !1076, size: 1600)
!1270 = !DILocation(line: 472, column: 59, scope: !1252)
!1271 = !DILocation(line: 473, column: 29, scope: !1252)
!1272 = !DILocation(line: 474, column: 18, scope: !1252)
!1273 = !DILocation(line: 476, column: 18, scope: !1252)
!1274 = !DILocation(line: 477, column: 5, scope: !1252)
!1275 = !DILocation(line: 477, column: 19, scope: !1252)
!1276 = !DILocation(line: 478, column: 5, scope: !1252)
!1277 = !DILocation(line: 478, column: 17, scope: !1252)
!1278 = !DILocation(line: 480, column: 5, scope: !1252)
!1279 = !DILocation(line: 481, column: 5, scope: !1252)
!1280 = !DILocation(line: 483, column: 24, scope: !1252)
!1281 = !DILocation(line: 483, column: 11, scope: !1252)
!1282 = !DILocation(line: 475, column: 21, scope: !1252)
!1283 = !DILocation(line: 485, column: 16, scope: !1252)
!1284 = !DILocation(line: 485, column: 5, scope: !1252)
!1285 = !DILocation(line: 486, column: 22, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1252, file: !27, line: 485, column: 21)
!1287 = !DILocation(line: 475, column: 26, scope: !1252)
!1288 = !DILocation(line: 475, column: 18, scope: !1252)
!1289 = !DILocation(line: 487, column: 23, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !27, line: 487, column: 9)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !27, line: 487, column: 9)
!1292 = !DILocation(line: 487, column: 9, scope: !1291)
!1293 = !DILocation(line: 0, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !27, line: 487, column: 35)
!1295 = !DILocation(line: 488, column: 39, scope: !1294)
!1296 = !DILocation(line: 488, column: 22, scope: !1294)
!1297 = !DILocation(line: 488, column: 13, scope: !1294)
!1298 = !DILocation(line: 488, column: 20, scope: !1294)
!1299 = !DILocation(line: 487, column: 30, scope: !1290)
!1300 = distinct !{!1300, !1292, !1301}
!1301 = !DILocation(line: 489, column: 9, scope: !1291)
!1302 = !DILocation(line: 491, column: 39, scope: !1286)
!1303 = !DILocation(line: 492, column: 9, scope: !1286)
!1304 = !DILocation(line: 493, column: 39, scope: !1286)
!1305 = !DILocation(line: 493, column: 48, scope: !1286)
!1306 = !DILocation(line: 493, column: 16, scope: !1286)
!1307 = !DILocation(line: 493, column: 13, scope: !1286)
!1308 = distinct !{!1308, !1284, !1309}
!1309 = !DILocation(line: 494, column: 5, scope: !1252)
!1310 = !DILocation(line: 495, column: 1, scope: !1252)
!1311 = distinct !DISubprogram(name: "rej_gamma1m1", scope: !27, file: !27, line: 427, type: !1121, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1313 = !DILocalVariable(name: "a", arg: 1, scope: !1311, file: !27, line: 427, type: !59)
!1314 = !DILocalVariable(name: "len", arg: 2, scope: !1311, file: !27, line: 428, type: !16)
!1315 = !DILocalVariable(name: "buf", arg: 3, scope: !1311, file: !27, line: 429, type: !199)
!1316 = !DILocalVariable(name: "buflen", arg: 4, scope: !1311, file: !27, line: 430, type: !16)
!1317 = !DILocalVariable(name: "ctr", scope: !1311, file: !27, line: 431, type: !16)
!1318 = !DILocalVariable(name: "pos", scope: !1311, file: !27, line: 431, type: !16)
!1319 = !DILocalVariable(name: "t0", scope: !1311, file: !27, line: 432, type: !14)
!1320 = !DILocalVariable(name: "t1", scope: !1311, file: !27, line: 432, type: !14)
!1321 = !DILocation(line: 427, column: 44, scope: !1311)
!1322 = !DILocation(line: 428, column: 47, scope: !1311)
!1323 = !DILocation(line: 429, column: 55, scope: !1311)
!1324 = !DILocation(line: 430, column: 47, scope: !1311)
!1325 = !DILocation(line: 431, column: 23, scope: !1311)
!1326 = !DILocation(line: 431, column: 18, scope: !1311)
!1327 = !DILocation(line: 435, column: 16, scope: !1311)
!1328 = !DILocation(line: 435, column: 22, scope: !1311)
!1329 = !DILocation(line: 435, column: 29, scope: !1311)
!1330 = !DILocation(line: 435, column: 33, scope: !1311)
!1331 = !DILocation(line: 435, column: 5, scope: !1311)
!1332 = !DILocation(line: 436, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1311, file: !27, line: 435, column: 44)
!1334 = !DILocation(line: 432, column: 14, scope: !1311)
!1335 = !DILocation(line: 437, column: 33, scope: !1333)
!1336 = !DILocation(line: 437, column: 25, scope: !1333)
!1337 = !DILocation(line: 437, column: 15, scope: !1333)
!1338 = !DILocation(line: 437, column: 38, scope: !1333)
!1339 = !DILocation(line: 437, column: 12, scope: !1333)
!1340 = !DILocation(line: 438, column: 33, scope: !1333)
!1341 = !DILocation(line: 438, column: 25, scope: !1333)
!1342 = !DILocation(line: 438, column: 15, scope: !1333)
!1343 = !DILocation(line: 438, column: 38, scope: !1333)
!1344 = !DILocation(line: 439, column: 12, scope: !1333)
!1345 = !DILocation(line: 441, column: 28, scope: !1333)
!1346 = !DILocation(line: 432, column: 18, scope: !1311)
!1347 = !DILocation(line: 442, column: 33, scope: !1333)
!1348 = !DILocation(line: 442, column: 25, scope: !1333)
!1349 = !DILocation(line: 442, column: 15, scope: !1333)
!1350 = !DILocation(line: 442, column: 38, scope: !1333)
!1351 = !DILocation(line: 442, column: 12, scope: !1333)
!1352 = !DILocation(line: 443, column: 33, scope: !1333)
!1353 = !DILocation(line: 443, column: 25, scope: !1333)
!1354 = !DILocation(line: 443, column: 15, scope: !1333)
!1355 = !DILocation(line: 443, column: 38, scope: !1333)
!1356 = !DILocation(line: 443, column: 12, scope: !1333)
!1357 = !DILocation(line: 447, column: 16, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1333, file: !27, line: 447, column: 13)
!1359 = !DILocation(line: 447, column: 13, scope: !1333)
!1360 = !DILocation(line: 448, column: 39, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !27, line: 447, column: 35)
!1362 = !DILocation(line: 448, column: 18, scope: !1361)
!1363 = !DILocation(line: 448, column: 13, scope: !1361)
!1364 = !DILocation(line: 448, column: 22, scope: !1361)
!1365 = !DILocation(line: 449, column: 9, scope: !1361)
!1366 = !DILocation(line: 0, scope: !1311)
!1367 = !DILocation(line: 450, column: 16, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1333, file: !27, line: 450, column: 13)
!1369 = !DILocation(line: 450, column: 41, scope: !1368)
!1370 = !DILocation(line: 450, column: 34, scope: !1368)
!1371 = !DILocation(line: 451, column: 39, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !27, line: 450, column: 48)
!1373 = !DILocation(line: 451, column: 18, scope: !1372)
!1374 = !DILocation(line: 451, column: 13, scope: !1372)
!1375 = !DILocation(line: 451, column: 22, scope: !1372)
!1376 = !DILocation(line: 452, column: 9, scope: !1372)
!1377 = !DILocation(line: 0, scope: !1333)
!1378 = distinct !{!1378, !1331, !1379}
!1379 = !DILocation(line: 453, column: 5, scope: !1311)
!1380 = !DILocation(line: 455, column: 5, scope: !1311)
!1381 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack", scope: !27, file: !27, line: 507, type: !1382, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !198, !815}
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DILocalVariable(name: "r", arg: 1, scope: !1381, file: !27, line: 507, type: !198)
!1386 = !DILocalVariable(name: "a", arg: 2, scope: !1381, file: !27, line: 507, type: !815)
!1387 = !DILocalVariable(name: "i", scope: !1381, file: !27, line: 508, type: !16)
!1388 = !DILocalVariable(name: "t", scope: !1381, file: !27, line: 509, type: !1389)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !1390)
!1390 = !{!1391}
!1391 = !DISubrange(count: 8)
!1392 = !DILocation(line: 507, column: 59, scope: !1381)
!1393 = !DILocation(line: 507, column: 74, scope: !1381)
!1394 = !DILocation(line: 508, column: 18, scope: !1381)
!1395 = !DILocation(line: 511, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1381, file: !27, line: 511, column: 5)
!1397 = !DILocation(line: 512, column: 49, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !27, line: 511, column: 33)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !27, line: 511, column: 5)
!1400 = !DILocation(line: 512, column: 37, scope: !1398)
!1401 = !DILocation(line: 512, column: 16, scope: !1398)
!1402 = !DILocation(line: 513, column: 53, scope: !1398)
!1403 = !DILocation(line: 513, column: 37, scope: !1398)
!1404 = !DILocation(line: 514, column: 40, scope: !1398)
!1405 = !DILocation(line: 514, column: 32, scope: !1398)
!1406 = !DILocation(line: 514, column: 16, scope: !1398)
!1407 = !DILocation(line: 514, column: 9, scope: !1398)
!1408 = !DILocation(line: 514, column: 14, scope: !1398)
!1409 = !DILocation(line: 511, column: 28, scope: !1399)
!1410 = !DILocation(line: 511, column: 19, scope: !1399)
!1411 = distinct !{!1411, !1395, !1412}
!1412 = !DILocation(line: 515, column: 5, scope: !1396)
!1413 = !DILocation(line: 516, column: 1, scope: !1381)
!1414 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack", scope: !27, file: !27, line: 527, type: !1415, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !754, !199}
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "r", arg: 1, scope: !1414, file: !27, line: 527, type: !754)
!1419 = !DILocalVariable(name: "a", arg: 2, scope: !1414, file: !27, line: 527, type: !199)
!1420 = !DILocalVariable(name: "i", scope: !1414, file: !27, line: 528, type: !16)
!1421 = !DILocation(line: 527, column: 52, scope: !1414)
!1422 = !DILocation(line: 527, column: 76, scope: !1414)
!1423 = !DILocation(line: 528, column: 18, scope: !1414)
!1424 = !DILocation(line: 529, column: 5, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1414, file: !27, line: 529, column: 5)
!1426 = !DILocation(line: 530, column: 32, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !27, line: 529, column: 33)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !27, line: 529, column: 5)
!1429 = !DILocation(line: 530, column: 37, scope: !1427)
!1430 = !DILocation(line: 530, column: 21, scope: !1427)
!1431 = !DILocation(line: 530, column: 9, scope: !1427)
!1432 = !DILocation(line: 530, column: 30, scope: !1427)
!1433 = !DILocation(line: 531, column: 32, scope: !1427)
!1434 = !DILocation(line: 531, column: 37, scope: !1427)
!1435 = !DILocation(line: 531, column: 25, scope: !1427)
!1436 = !DILocation(line: 531, column: 9, scope: !1427)
!1437 = !DILocation(line: 532, column: 40, scope: !1427)
!1438 = !DILocation(line: 532, column: 30, scope: !1427)
!1439 = !DILocation(line: 533, column: 40, scope: !1427)
!1440 = !DILocation(line: 533, column: 30, scope: !1427)
!1441 = !DILocation(line: 529, column: 28, scope: !1428)
!1442 = !DILocation(line: 529, column: 19, scope: !1428)
!1443 = distinct !{!1443, !1424, !1444}
!1444 = !DILocation(line: 534, column: 5, scope: !1425)
!1445 = !DILocation(line: 535, column: 1, scope: !1414)
!1446 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack", scope: !27, file: !27, line: 547, type: !1382, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DILocalVariable(name: "r", arg: 1, scope: !1446, file: !27, line: 547, type: !198)
!1449 = !DILocalVariable(name: "a", arg: 2, scope: !1446, file: !27, line: 547, type: !815)
!1450 = !DILocalVariable(name: "i", scope: !1446, file: !27, line: 548, type: !16)
!1451 = !DILocation(line: 547, column: 58, scope: !1446)
!1452 = !DILocation(line: 547, column: 73, scope: !1446)
!1453 = !DILocation(line: 548, column: 18, scope: !1446)
!1454 = !DILocation(line: 550, column: 5, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1446, file: !27, line: 550, column: 5)
!1456 = !DILocation(line: 551, column: 49, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !27, line: 550, column: 33)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !27, line: 550, column: 5)
!1459 = !DILocation(line: 551, column: 37, scope: !1457)
!1460 = !DILocation(line: 551, column: 25, scope: !1457)
!1461 = !DILocation(line: 551, column: 13, scope: !1457)
!1462 = !DILocation(line: 551, column: 9, scope: !1457)
!1463 = !DILocation(line: 551, column: 23, scope: !1457)
!1464 = !DILocation(line: 552, column: 37, scope: !1457)
!1465 = !DILocation(line: 552, column: 58, scope: !1457)
!1466 = !DILocation(line: 552, column: 83, scope: !1457)
!1467 = !DILocation(line: 552, column: 67, scope: !1457)
!1468 = !DILocation(line: 552, column: 88, scope: !1457)
!1469 = !DILocation(line: 552, column: 64, scope: !1457)
!1470 = !DILocation(line: 552, column: 25, scope: !1457)
!1471 = !DILocation(line: 552, column: 17, scope: !1457)
!1472 = !DILocation(line: 552, column: 9, scope: !1457)
!1473 = !DILocation(line: 552, column: 23, scope: !1457)
!1474 = !DILocation(line: 553, column: 37, scope: !1457)
!1475 = !DILocation(line: 553, column: 58, scope: !1457)
!1476 = !DILocation(line: 553, column: 83, scope: !1457)
!1477 = !DILocation(line: 553, column: 67, scope: !1457)
!1478 = !DILocation(line: 553, column: 88, scope: !1457)
!1479 = !DILocation(line: 553, column: 64, scope: !1457)
!1480 = !DILocation(line: 553, column: 25, scope: !1457)
!1481 = !DILocation(line: 553, column: 17, scope: !1457)
!1482 = !DILocation(line: 553, column: 9, scope: !1457)
!1483 = !DILocation(line: 553, column: 23, scope: !1457)
!1484 = !DILocation(line: 554, column: 37, scope: !1457)
!1485 = !DILocation(line: 554, column: 58, scope: !1457)
!1486 = !DILocation(line: 554, column: 83, scope: !1457)
!1487 = !DILocation(line: 554, column: 67, scope: !1457)
!1488 = !DILocation(line: 554, column: 88, scope: !1457)
!1489 = !DILocation(line: 554, column: 64, scope: !1457)
!1490 = !DILocation(line: 554, column: 25, scope: !1457)
!1491 = !DILocation(line: 554, column: 17, scope: !1457)
!1492 = !DILocation(line: 554, column: 9, scope: !1457)
!1493 = !DILocation(line: 554, column: 23, scope: !1457)
!1494 = !DILocation(line: 555, column: 37, scope: !1457)
!1495 = !DILocation(line: 555, column: 58, scope: !1457)
!1496 = !DILocation(line: 555, column: 83, scope: !1457)
!1497 = !DILocation(line: 555, column: 67, scope: !1457)
!1498 = !DILocation(line: 555, column: 88, scope: !1457)
!1499 = !DILocation(line: 555, column: 64, scope: !1457)
!1500 = !DILocation(line: 555, column: 25, scope: !1457)
!1501 = !DILocation(line: 555, column: 17, scope: !1457)
!1502 = !DILocation(line: 555, column: 9, scope: !1457)
!1503 = !DILocation(line: 555, column: 23, scope: !1457)
!1504 = !DILocation(line: 556, column: 37, scope: !1457)
!1505 = !DILocation(line: 556, column: 58, scope: !1457)
!1506 = !DILocation(line: 556, column: 83, scope: !1457)
!1507 = !DILocation(line: 556, column: 67, scope: !1457)
!1508 = !DILocation(line: 556, column: 88, scope: !1457)
!1509 = !DILocation(line: 556, column: 64, scope: !1457)
!1510 = !DILocation(line: 556, column: 25, scope: !1457)
!1511 = !DILocation(line: 556, column: 17, scope: !1457)
!1512 = !DILocation(line: 556, column: 9, scope: !1457)
!1513 = !DILocation(line: 556, column: 23, scope: !1457)
!1514 = !DILocation(line: 557, column: 37, scope: !1457)
!1515 = !DILocation(line: 557, column: 58, scope: !1457)
!1516 = !DILocation(line: 557, column: 83, scope: !1457)
!1517 = !DILocation(line: 557, column: 67, scope: !1457)
!1518 = !DILocation(line: 557, column: 88, scope: !1457)
!1519 = !DILocation(line: 557, column: 64, scope: !1457)
!1520 = !DILocation(line: 557, column: 25, scope: !1457)
!1521 = !DILocation(line: 557, column: 17, scope: !1457)
!1522 = !DILocation(line: 557, column: 9, scope: !1457)
!1523 = !DILocation(line: 557, column: 23, scope: !1457)
!1524 = !DILocation(line: 558, column: 37, scope: !1457)
!1525 = !DILocation(line: 558, column: 58, scope: !1457)
!1526 = !DILocation(line: 558, column: 83, scope: !1457)
!1527 = !DILocation(line: 558, column: 67, scope: !1457)
!1528 = !DILocation(line: 558, column: 88, scope: !1457)
!1529 = !DILocation(line: 558, column: 64, scope: !1457)
!1530 = !DILocation(line: 558, column: 25, scope: !1457)
!1531 = !DILocation(line: 558, column: 17, scope: !1457)
!1532 = !DILocation(line: 558, column: 9, scope: !1457)
!1533 = !DILocation(line: 558, column: 23, scope: !1457)
!1534 = !DILocation(line: 559, column: 37, scope: !1457)
!1535 = !DILocation(line: 559, column: 58, scope: !1457)
!1536 = !DILocation(line: 559, column: 25, scope: !1457)
!1537 = !DILocation(line: 559, column: 17, scope: !1457)
!1538 = !DILocation(line: 559, column: 9, scope: !1457)
!1539 = !DILocation(line: 559, column: 23, scope: !1457)
!1540 = !DILocation(line: 550, column: 28, scope: !1458)
!1541 = !DILocation(line: 550, column: 19, scope: !1458)
!1542 = distinct !{!1542, !1454, !1543}
!1543 = !DILocation(line: 560, column: 5, scope: !1455)
!1544 = !DILocation(line: 562, column: 1, scope: !1446)
!1545 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack", scope: !27, file: !27, line: 573, type: !1415, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1546)
!1546 = !{!1547, !1548, !1549}
!1547 = !DILocalVariable(name: "r", arg: 1, scope: !1545, file: !27, line: 573, type: !754)
!1548 = !DILocalVariable(name: "a", arg: 2, scope: !1545, file: !27, line: 573, type: !199)
!1549 = !DILocalVariable(name: "i", scope: !1545, file: !27, line: 574, type: !16)
!1550 = !DILocation(line: 573, column: 51, scope: !1545)
!1551 = !DILocation(line: 573, column: 75, scope: !1545)
!1552 = !DILocation(line: 574, column: 18, scope: !1545)
!1553 = !DILocation(line: 576, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !27, line: 576, column: 5)
!1555 = !DILocation(line: 577, column: 38, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !27, line: 576, column: 33)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !27, line: 576, column: 5)
!1558 = !DILocation(line: 577, column: 34, scope: !1556)
!1559 = !DILocation(line: 577, column: 33, scope: !1556)
!1560 = !DILocation(line: 577, column: 74, scope: !1556)
!1561 = !DILocation(line: 577, column: 66, scope: !1556)
!1562 = !DILocation(line: 577, column: 56, scope: !1556)
!1563 = !DILocation(line: 577, column: 79, scope: !1556)
!1564 = !DILocation(line: 577, column: 86, scope: !1556)
!1565 = !DILocation(line: 577, column: 21, scope: !1556)
!1566 = !DILocation(line: 577, column: 9, scope: !1556)
!1567 = !DILocation(line: 577, column: 30, scope: !1556)
!1568 = !DILocation(line: 578, column: 34, scope: !1556)
!1569 = !DILocation(line: 578, column: 47, scope: !1556)
!1570 = !DILocation(line: 578, column: 74, scope: !1556)
!1571 = !DILocation(line: 578, column: 66, scope: !1556)
!1572 = !DILocation(line: 578, column: 56, scope: !1556)
!1573 = !DILocation(line: 578, column: 79, scope: !1556)
!1574 = !DILocation(line: 578, column: 86, scope: !1556)
!1575 = !DILocation(line: 578, column: 25, scope: !1556)
!1576 = !DILocation(line: 578, column: 9, scope: !1556)
!1577 = !DILocation(line: 578, column: 30, scope: !1556)
!1578 = !DILocation(line: 579, column: 34, scope: !1556)
!1579 = !DILocation(line: 579, column: 47, scope: !1556)
!1580 = !DILocation(line: 579, column: 74, scope: !1556)
!1581 = !DILocation(line: 579, column: 66, scope: !1556)
!1582 = !DILocation(line: 579, column: 56, scope: !1556)
!1583 = !DILocation(line: 579, column: 79, scope: !1556)
!1584 = !DILocation(line: 579, column: 86, scope: !1556)
!1585 = !DILocation(line: 579, column: 25, scope: !1556)
!1586 = !DILocation(line: 579, column: 9, scope: !1556)
!1587 = !DILocation(line: 579, column: 30, scope: !1556)
!1588 = !DILocation(line: 580, column: 34, scope: !1556)
!1589 = !DILocation(line: 580, column: 47, scope: !1556)
!1590 = !DILocation(line: 580, column: 74, scope: !1556)
!1591 = !DILocation(line: 580, column: 66, scope: !1556)
!1592 = !DILocation(line: 580, column: 56, scope: !1556)
!1593 = !DILocation(line: 580, column: 79, scope: !1556)
!1594 = !DILocation(line: 580, column: 86, scope: !1556)
!1595 = !DILocation(line: 580, column: 25, scope: !1556)
!1596 = !DILocation(line: 580, column: 9, scope: !1556)
!1597 = !DILocation(line: 580, column: 30, scope: !1556)
!1598 = !DILocation(line: 581, column: 34, scope: !1556)
!1599 = !DILocation(line: 581, column: 47, scope: !1556)
!1600 = !DILocation(line: 581, column: 74, scope: !1556)
!1601 = !DILocation(line: 581, column: 66, scope: !1556)
!1602 = !DILocation(line: 581, column: 56, scope: !1556)
!1603 = !DILocation(line: 581, column: 79, scope: !1556)
!1604 = !DILocation(line: 581, column: 86, scope: !1556)
!1605 = !DILocation(line: 581, column: 25, scope: !1556)
!1606 = !DILocation(line: 581, column: 9, scope: !1556)
!1607 = !DILocation(line: 581, column: 30, scope: !1556)
!1608 = !DILocation(line: 582, column: 34, scope: !1556)
!1609 = !DILocation(line: 582, column: 47, scope: !1556)
!1610 = !DILocation(line: 582, column: 74, scope: !1556)
!1611 = !DILocation(line: 582, column: 66, scope: !1556)
!1612 = !DILocation(line: 582, column: 56, scope: !1556)
!1613 = !DILocation(line: 582, column: 79, scope: !1556)
!1614 = !DILocation(line: 582, column: 86, scope: !1556)
!1615 = !DILocation(line: 582, column: 25, scope: !1556)
!1616 = !DILocation(line: 582, column: 9, scope: !1556)
!1617 = !DILocation(line: 582, column: 30, scope: !1556)
!1618 = !DILocation(line: 583, column: 34, scope: !1556)
!1619 = !DILocation(line: 583, column: 47, scope: !1556)
!1620 = !DILocation(line: 583, column: 74, scope: !1556)
!1621 = !DILocation(line: 583, column: 66, scope: !1556)
!1622 = !DILocation(line: 583, column: 56, scope: !1556)
!1623 = !DILocation(line: 583, column: 79, scope: !1556)
!1624 = !DILocation(line: 583, column: 86, scope: !1556)
!1625 = !DILocation(line: 583, column: 25, scope: !1556)
!1626 = !DILocation(line: 583, column: 9, scope: !1556)
!1627 = !DILocation(line: 583, column: 30, scope: !1556)
!1628 = !DILocation(line: 584, column: 34, scope: !1556)
!1629 = !DILocation(line: 584, column: 47, scope: !1556)
!1630 = !DILocation(line: 584, column: 74, scope: !1556)
!1631 = !DILocation(line: 584, column: 66, scope: !1556)
!1632 = !DILocation(line: 584, column: 56, scope: !1556)
!1633 = !DILocation(line: 584, column: 79, scope: !1556)
!1634 = !DILocation(line: 584, column: 53, scope: !1556)
!1635 = !DILocation(line: 584, column: 25, scope: !1556)
!1636 = !DILocation(line: 584, column: 9, scope: !1556)
!1637 = !DILocation(line: 584, column: 30, scope: !1556)
!1638 = !DILocation(line: 576, column: 28, scope: !1557)
!1639 = !DILocation(line: 576, column: 19, scope: !1557)
!1640 = distinct !{!1640, !1553, !1641}
!1641 = !DILocation(line: 585, column: 5, scope: !1554)
!1642 = !DILocation(line: 587, column: 1, scope: !1545)
!1643 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack", scope: !27, file: !27, line: 599, type: !1382, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1644)
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DILocalVariable(name: "r", arg: 1, scope: !1643, file: !27, line: 599, type: !198)
!1646 = !DILocalVariable(name: "a", arg: 2, scope: !1643, file: !27, line: 599, type: !815)
!1647 = !DILocalVariable(name: "i", scope: !1643, file: !27, line: 600, type: !16)
!1648 = !DILocalVariable(name: "t", scope: !1643, file: !27, line: 601, type: !1649)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !215)
!1650 = !DILocation(line: 599, column: 58, scope: !1643)
!1651 = !DILocation(line: 599, column: 73, scope: !1643)
!1652 = !DILocation(line: 600, column: 18, scope: !1643)
!1653 = !DILocation(line: 603, column: 5, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1643, file: !27, line: 603, column: 5)
!1655 = !DILocation(line: 604, column: 50, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !27, line: 603, column: 33)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !27, line: 603, column: 5)
!1658 = !DILocation(line: 604, column: 38, scope: !1656)
!1659 = !DILocation(line: 604, column: 36, scope: !1656)
!1660 = !DILocation(line: 601, column: 14, scope: !1643)
!1661 = !DILocation(line: 605, column: 54, scope: !1656)
!1662 = !DILocation(line: 605, column: 38, scope: !1656)
!1663 = !DILocation(line: 605, column: 36, scope: !1656)
!1664 = !DILocation(line: 606, column: 54, scope: !1656)
!1665 = !DILocation(line: 606, column: 38, scope: !1656)
!1666 = !DILocation(line: 606, column: 36, scope: !1656)
!1667 = !DILocation(line: 607, column: 54, scope: !1656)
!1668 = !DILocation(line: 607, column: 38, scope: !1656)
!1669 = !DILocation(line: 607, column: 36, scope: !1656)
!1670 = !DILocation(line: 609, column: 25, scope: !1656)
!1671 = !DILocation(line: 609, column: 13, scope: !1656)
!1672 = !DILocation(line: 609, column: 9, scope: !1656)
!1673 = !DILocation(line: 609, column: 23, scope: !1656)
!1674 = !DILocation(line: 610, column: 41, scope: !1656)
!1675 = !DILocation(line: 610, column: 17, scope: !1656)
!1676 = !DILocation(line: 610, column: 9, scope: !1656)
!1677 = !DILocation(line: 611, column: 25, scope: !1656)
!1678 = !DILocation(line: 611, column: 22, scope: !1656)
!1679 = !DILocation(line: 612, column: 41, scope: !1656)
!1680 = !DILocation(line: 612, column: 25, scope: !1656)
!1681 = !DILocation(line: 612, column: 17, scope: !1656)
!1682 = !DILocation(line: 612, column: 9, scope: !1656)
!1683 = !DILocation(line: 612, column: 23, scope: !1656)
!1684 = !DILocation(line: 613, column: 41, scope: !1656)
!1685 = !DILocation(line: 613, column: 17, scope: !1656)
!1686 = !DILocation(line: 613, column: 9, scope: !1656)
!1687 = !DILocation(line: 614, column: 25, scope: !1656)
!1688 = !DILocation(line: 614, column: 22, scope: !1656)
!1689 = !DILocation(line: 615, column: 41, scope: !1656)
!1690 = !DILocation(line: 615, column: 25, scope: !1656)
!1691 = !DILocation(line: 615, column: 17, scope: !1656)
!1692 = !DILocation(line: 615, column: 9, scope: !1656)
!1693 = !DILocation(line: 615, column: 23, scope: !1656)
!1694 = !DILocation(line: 616, column: 41, scope: !1656)
!1695 = !DILocation(line: 616, column: 17, scope: !1656)
!1696 = !DILocation(line: 616, column: 9, scope: !1656)
!1697 = !DILocation(line: 617, column: 25, scope: !1656)
!1698 = !DILocation(line: 617, column: 22, scope: !1656)
!1699 = !DILocation(line: 618, column: 41, scope: !1656)
!1700 = !DILocation(line: 618, column: 25, scope: !1656)
!1701 = !DILocation(line: 618, column: 17, scope: !1656)
!1702 = !DILocation(line: 618, column: 9, scope: !1656)
!1703 = !DILocation(line: 618, column: 23, scope: !1656)
!1704 = !DILocation(line: 603, column: 28, scope: !1657)
!1705 = !DILocation(line: 603, column: 19, scope: !1657)
!1706 = distinct !{!1706, !1653, !1707}
!1707 = !DILocation(line: 619, column: 5, scope: !1654)
!1708 = !DILocation(line: 621, column: 1, scope: !1643)
!1709 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack", scope: !27, file: !27, line: 632, type: !1415, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DILocalVariable(name: "r", arg: 1, scope: !1709, file: !27, line: 632, type: !754)
!1712 = !DILocalVariable(name: "a", arg: 2, scope: !1709, file: !27, line: 632, type: !199)
!1713 = !DILocalVariable(name: "i", scope: !1709, file: !27, line: 633, type: !16)
!1714 = !DILocation(line: 632, column: 51, scope: !1709)
!1715 = !DILocation(line: 632, column: 75, scope: !1709)
!1716 = !DILocation(line: 633, column: 18, scope: !1709)
!1717 = !DILocation(line: 635, column: 5, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1709, file: !27, line: 635, column: 5)
!1719 = !DILocation(line: 636, column: 37, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !27, line: 635, column: 33)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !27, line: 635, column: 5)
!1722 = !DILocation(line: 636, column: 33, scope: !1720)
!1723 = !DILocation(line: 636, column: 21, scope: !1720)
!1724 = !DILocation(line: 636, column: 9, scope: !1720)
!1725 = !DILocation(line: 636, column: 31, scope: !1720)
!1726 = !DILocation(line: 637, column: 52, scope: !1720)
!1727 = !DILocation(line: 637, column: 44, scope: !1720)
!1728 = !DILocation(line: 637, column: 57, scope: !1720)
!1729 = !DILocation(line: 637, column: 65, scope: !1720)
!1730 = !DILocation(line: 637, column: 30, scope: !1720)
!1731 = !DILocation(line: 639, column: 33, scope: !1720)
!1732 = !DILocation(line: 639, column: 46, scope: !1720)
!1733 = !DILocation(line: 639, column: 25, scope: !1720)
!1734 = !DILocation(line: 639, column: 9, scope: !1720)
!1735 = !DILocation(line: 639, column: 31, scope: !1720)
!1736 = !DILocation(line: 640, column: 51, scope: !1720)
!1737 = !DILocation(line: 640, column: 43, scope: !1720)
!1738 = !DILocation(line: 640, column: 33, scope: !1720)
!1739 = !DILocation(line: 640, column: 56, scope: !1720)
!1740 = !DILocation(line: 640, column: 30, scope: !1720)
!1741 = !DILocation(line: 641, column: 52, scope: !1720)
!1742 = !DILocation(line: 641, column: 44, scope: !1720)
!1743 = !DILocation(line: 641, column: 57, scope: !1720)
!1744 = !DILocation(line: 641, column: 65, scope: !1720)
!1745 = !DILocation(line: 641, column: 30, scope: !1720)
!1746 = !DILocation(line: 643, column: 33, scope: !1720)
!1747 = !DILocation(line: 643, column: 46, scope: !1720)
!1748 = !DILocation(line: 643, column: 25, scope: !1720)
!1749 = !DILocation(line: 643, column: 9, scope: !1720)
!1750 = !DILocation(line: 643, column: 31, scope: !1720)
!1751 = !DILocation(line: 644, column: 51, scope: !1720)
!1752 = !DILocation(line: 644, column: 43, scope: !1720)
!1753 = !DILocation(line: 644, column: 33, scope: !1720)
!1754 = !DILocation(line: 644, column: 56, scope: !1720)
!1755 = !DILocation(line: 644, column: 30, scope: !1720)
!1756 = !DILocation(line: 645, column: 52, scope: !1720)
!1757 = !DILocation(line: 645, column: 44, scope: !1720)
!1758 = !DILocation(line: 645, column: 57, scope: !1720)
!1759 = !DILocation(line: 645, column: 65, scope: !1720)
!1760 = !DILocation(line: 645, column: 30, scope: !1720)
!1761 = !DILocation(line: 647, column: 33, scope: !1720)
!1762 = !DILocation(line: 647, column: 46, scope: !1720)
!1763 = !DILocation(line: 647, column: 25, scope: !1720)
!1764 = !DILocation(line: 647, column: 9, scope: !1720)
!1765 = !DILocation(line: 647, column: 31, scope: !1720)
!1766 = !DILocation(line: 648, column: 51, scope: !1720)
!1767 = !DILocation(line: 648, column: 43, scope: !1720)
!1768 = !DILocation(line: 648, column: 33, scope: !1720)
!1769 = !DILocation(line: 648, column: 56, scope: !1720)
!1770 = !DILocation(line: 648, column: 30, scope: !1720)
!1771 = !DILocation(line: 650, column: 52, scope: !1720)
!1772 = !DILocation(line: 650, column: 30, scope: !1720)
!1773 = !DILocation(line: 651, column: 52, scope: !1720)
!1774 = !DILocation(line: 651, column: 30, scope: !1720)
!1775 = !DILocation(line: 652, column: 52, scope: !1720)
!1776 = !DILocation(line: 652, column: 30, scope: !1720)
!1777 = !DILocation(line: 653, column: 52, scope: !1720)
!1778 = !DILocation(line: 653, column: 30, scope: !1720)
!1779 = !DILocation(line: 635, column: 28, scope: !1721)
!1780 = !DILocation(line: 635, column: 19, scope: !1721)
!1781 = distinct !{!1781, !1717, !1782}
!1782 = !DILocation(line: 654, column: 5, scope: !1718)
!1783 = !DILocation(line: 656, column: 1, scope: !1709)
!1784 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyz_pack", scope: !27, file: !27, line: 669, type: !1382, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1785)
!1785 = !{!1786, !1787, !1788, !1789}
!1786 = !DILocalVariable(name: "r", arg: 1, scope: !1784, file: !27, line: 669, type: !198)
!1787 = !DILocalVariable(name: "a", arg: 2, scope: !1784, file: !27, line: 669, type: !815)
!1788 = !DILocalVariable(name: "i", scope: !1784, file: !27, line: 670, type: !16)
!1789 = !DILocalVariable(name: "t", scope: !1784, file: !27, line: 671, type: !1790)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !1791)
!1791 = !{!1792}
!1792 = !DISubrange(count: 2)
!1793 = !DILocation(line: 669, column: 57, scope: !1784)
!1794 = !DILocation(line: 669, column: 72, scope: !1784)
!1795 = !DILocation(line: 670, column: 18, scope: !1784)
!1796 = !DILocation(line: 673, column: 5, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1784, file: !27, line: 673, column: 5)
!1798 = !DILocation(line: 675, column: 41, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !27, line: 673, column: 33)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !27, line: 673, column: 5)
!1801 = !DILocation(line: 675, column: 29, scope: !1799)
!1802 = !DILocation(line: 675, column: 27, scope: !1799)
!1803 = !DILocation(line: 671, column: 14, scope: !1784)
!1804 = !DILocation(line: 676, column: 32, scope: !1799)
!1805 = !DILocation(line: 676, column: 39, scope: !1799)
!1806 = !DILocation(line: 676, column: 14, scope: !1799)
!1807 = !DILocation(line: 677, column: 45, scope: !1799)
!1808 = !DILocation(line: 677, column: 29, scope: !1799)
!1809 = !DILocation(line: 677, column: 27, scope: !1799)
!1810 = !DILocation(line: 678, column: 32, scope: !1799)
!1811 = !DILocation(line: 678, column: 39, scope: !1799)
!1812 = !DILocation(line: 678, column: 14, scope: !1799)
!1813 = !DILocation(line: 680, column: 25, scope: !1799)
!1814 = !DILocation(line: 680, column: 13, scope: !1799)
!1815 = !DILocation(line: 680, column: 9, scope: !1799)
!1816 = !DILocation(line: 680, column: 23, scope: !1799)
!1817 = !DILocation(line: 681, column: 41, scope: !1799)
!1818 = !DILocation(line: 681, column: 25, scope: !1799)
!1819 = !DILocation(line: 681, column: 17, scope: !1799)
!1820 = !DILocation(line: 681, column: 9, scope: !1799)
!1821 = !DILocation(line: 681, column: 23, scope: !1799)
!1822 = !DILocation(line: 682, column: 41, scope: !1799)
!1823 = !DILocation(line: 682, column: 17, scope: !1799)
!1824 = !DILocation(line: 682, column: 9, scope: !1799)
!1825 = !DILocation(line: 683, column: 25, scope: !1799)
!1826 = !DILocation(line: 683, column: 22, scope: !1799)
!1827 = !DILocation(line: 684, column: 41, scope: !1799)
!1828 = !DILocation(line: 684, column: 25, scope: !1799)
!1829 = !DILocation(line: 684, column: 17, scope: !1799)
!1830 = !DILocation(line: 684, column: 9, scope: !1799)
!1831 = !DILocation(line: 684, column: 23, scope: !1799)
!1832 = !DILocation(line: 685, column: 41, scope: !1799)
!1833 = !DILocation(line: 685, column: 25, scope: !1799)
!1834 = !DILocation(line: 685, column: 17, scope: !1799)
!1835 = !DILocation(line: 685, column: 9, scope: !1799)
!1836 = !DILocation(line: 685, column: 23, scope: !1799)
!1837 = !DILocation(line: 673, column: 28, scope: !1800)
!1838 = !DILocation(line: 673, column: 19, scope: !1800)
!1839 = distinct !{!1839, !1796, !1840}
!1840 = !DILocation(line: 686, column: 5, scope: !1797)
!1841 = !DILocation(line: 688, column: 1, scope: !1784)
!1842 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack", scope: !27, file: !27, line: 700, type: !1415, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DILocalVariable(name: "r", arg: 1, scope: !1842, file: !27, line: 700, type: !754)
!1845 = !DILocalVariable(name: "a", arg: 2, scope: !1842, file: !27, line: 700, type: !199)
!1846 = !DILocalVariable(name: "i", scope: !1842, file: !27, line: 701, type: !16)
!1847 = !DILocation(line: 700, column: 50, scope: !1842)
!1848 = !DILocation(line: 700, column: 74, scope: !1842)
!1849 = !DILocation(line: 701, column: 18, scope: !1842)
!1850 = !DILocation(line: 703, column: 5, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1842, file: !27, line: 703, column: 5)
!1852 = !DILocation(line: 704, column: 37, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !27, line: 703, column: 33)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !27, line: 703, column: 5)
!1855 = !DILocation(line: 704, column: 33, scope: !1853)
!1856 = !DILocation(line: 704, column: 21, scope: !1853)
!1857 = !DILocation(line: 704, column: 9, scope: !1853)
!1858 = !DILocation(line: 704, column: 31, scope: !1853)
!1859 = !DILocation(line: 705, column: 51, scope: !1853)
!1860 = !DILocation(line: 705, column: 43, scope: !1853)
!1861 = !DILocation(line: 705, column: 33, scope: !1853)
!1862 = !DILocation(line: 705, column: 56, scope: !1853)
!1863 = !DILocation(line: 705, column: 30, scope: !1853)
!1864 = !DILocation(line: 706, column: 52, scope: !1853)
!1865 = !DILocation(line: 706, column: 44, scope: !1853)
!1866 = !DILocation(line: 706, column: 57, scope: !1853)
!1867 = !DILocation(line: 706, column: 65, scope: !1853)
!1868 = !DILocation(line: 706, column: 30, scope: !1853)
!1869 = !DILocation(line: 708, column: 33, scope: !1853)
!1870 = !DILocation(line: 708, column: 46, scope: !1853)
!1871 = !DILocation(line: 708, column: 25, scope: !1853)
!1872 = !DILocation(line: 708, column: 9, scope: !1853)
!1873 = !DILocation(line: 708, column: 31, scope: !1853)
!1874 = !DILocation(line: 709, column: 51, scope: !1853)
!1875 = !DILocation(line: 709, column: 43, scope: !1853)
!1876 = !DILocation(line: 709, column: 33, scope: !1853)
!1877 = !DILocation(line: 709, column: 56, scope: !1853)
!1878 = !DILocation(line: 709, column: 30, scope: !1853)
!1879 = !DILocation(line: 710, column: 51, scope: !1853)
!1880 = !DILocation(line: 710, column: 43, scope: !1853)
!1881 = !DILocation(line: 710, column: 33, scope: !1853)
!1882 = !DILocation(line: 710, column: 56, scope: !1853)
!1883 = !DILocation(line: 710, column: 30, scope: !1853)
!1884 = !DILocation(line: 712, column: 43, scope: !1853)
!1885 = !DILocation(line: 713, column: 64, scope: !1853)
!1886 = !DILocation(line: 713, column: 71, scope: !1853)
!1887 = !DILocation(line: 713, column: 30, scope: !1853)
!1888 = !DILocation(line: 714, column: 43, scope: !1853)
!1889 = !DILocation(line: 715, column: 64, scope: !1853)
!1890 = !DILocation(line: 715, column: 71, scope: !1853)
!1891 = !DILocation(line: 715, column: 30, scope: !1853)
!1892 = !DILocation(line: 703, column: 28, scope: !1854)
!1893 = !DILocation(line: 703, column: 19, scope: !1854)
!1894 = distinct !{!1894, !1850, !1895}
!1895 = !DILocation(line: 716, column: 5, scope: !1851)
!1896 = !DILocation(line: 718, column: 1, scope: !1842)
!1897 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack", scope: !27, file: !27, line: 730, type: !1382, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1898)
!1898 = !{!1899, !1900, !1901}
!1899 = !DILocalVariable(name: "r", arg: 1, scope: !1897, file: !27, line: 730, type: !198)
!1900 = !DILocalVariable(name: "a", arg: 2, scope: !1897, file: !27, line: 730, type: !815)
!1901 = !DILocalVariable(name: "i", scope: !1897, file: !27, line: 731, type: !16)
!1902 = !DILocation(line: 730, column: 58, scope: !1897)
!1903 = !DILocation(line: 730, column: 73, scope: !1897)
!1904 = !DILocation(line: 731, column: 18, scope: !1897)
!1905 = !DILocation(line: 733, column: 5, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1897, file: !27, line: 733, column: 5)
!1907 = !DILocation(line: 734, column: 39, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !27, line: 733, column: 33)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !27, line: 733, column: 5)
!1910 = !DILocation(line: 734, column: 27, scope: !1908)
!1911 = !DILocation(line: 734, column: 67, scope: !1908)
!1912 = !DILocation(line: 734, column: 51, scope: !1908)
!1913 = !DILocation(line: 734, column: 72, scope: !1908)
!1914 = !DILocation(line: 734, column: 48, scope: !1908)
!1915 = !DILocation(line: 734, column: 16, scope: !1908)
!1916 = !DILocation(line: 734, column: 9, scope: !1908)
!1917 = !DILocation(line: 734, column: 14, scope: !1908)
!1918 = !DILocation(line: 733, column: 28, scope: !1909)
!1919 = !DILocation(line: 733, column: 19, scope: !1909)
!1920 = distinct !{!1920, !1905, !1921}
!1921 = !DILocation(line: 735, column: 5, scope: !1906)
!1922 = !DILocation(line: 737, column: 1, scope: !1897)
!1923 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze", scope: !32, file: !32, line: 18, type: !1924, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1936)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyvecl", file: !204, line: 11, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 9, size: 24576, elements: !1929)
!1929 = !{!1930}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1928, file: !204, line: 10, baseType: !1931, size: 24576)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1932, size: 24576, elements: !300)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !210, line: 9, baseType: !1933)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 7, size: 8192, elements: !1934)
!1934 = !{!1935}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "coeffs", scope: !1933, file: !210, line: 8, baseType: !214, size: 8192)
!1936 = !{!1937, !1938}
!1937 = !DILocalVariable(name: "v", arg: 1, scope: !1923, file: !32, line: 18, type: !1926)
!1938 = !DILocalVariable(name: "i", scope: !1923, file: !32, line: 19, type: !16)
!1939 = !DILocation(line: 18, column: 57, scope: !1923)
!1940 = !DILocation(line: 19, column: 18, scope: !1923)
!1941 = !DILocation(line: 21, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1923, file: !32, line: 21, column: 5)
!1943 = !DILocation(line: 22, column: 47, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !32, line: 21, column: 29)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !32, line: 21, column: 5)
!1946 = !DILocation(line: 22, column: 9, scope: !1944)
!1947 = !DILocation(line: 21, column: 24, scope: !1945)
!1948 = !DILocation(line: 21, column: 19, scope: !1945)
!1949 = distinct !{!1949, !1941, !1950}
!1950 = !DILocation(line: 23, column: 5, scope: !1942)
!1951 = !DILocation(line: 24, column: 1, scope: !1923)
!1952 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add", scope: !32, file: !32, line: 36, type: !1953, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1957)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1926, !1955, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1957 = !{!1958, !1959, !1960, !1961}
!1958 = !DILocalVariable(name: "w", arg: 1, scope: !1952, file: !32, line: 36, type: !1926)
!1959 = !DILocalVariable(name: "u", arg: 2, scope: !1952, file: !32, line: 36, type: !1955)
!1960 = !DILocalVariable(name: "v", arg: 3, scope: !1952, file: !32, line: 36, type: !1955)
!1961 = !DILocalVariable(name: "i", scope: !1952, file: !32, line: 37, type: !16)
!1962 = !DILocation(line: 36, column: 54, scope: !1952)
!1963 = !DILocation(line: 36, column: 73, scope: !1952)
!1964 = !DILocation(line: 36, column: 92, scope: !1952)
!1965 = !DILocation(line: 37, column: 18, scope: !1952)
!1966 = !DILocation(line: 39, column: 5, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1952, file: !32, line: 39, column: 5)
!1968 = !DILocation(line: 40, column: 44, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !32, line: 39, column: 29)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !32, line: 39, column: 5)
!1971 = !DILocation(line: 40, column: 56, scope: !1969)
!1972 = !DILocation(line: 40, column: 68, scope: !1969)
!1973 = !DILocation(line: 40, column: 9, scope: !1969)
!1974 = !DILocation(line: 39, column: 24, scope: !1970)
!1975 = !DILocation(line: 39, column: 19, scope: !1970)
!1976 = distinct !{!1976, !1966, !1977}
!1977 = !DILocation(line: 41, column: 5, scope: !1967)
!1978 = !DILocation(line: 42, column: 1, scope: !1952)
!1979 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt", scope: !32, file: !32, line: 52, type: !1924, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1980)
!1980 = !{!1981, !1982}
!1981 = !DILocalVariable(name: "v", arg: 1, scope: !1979, file: !32, line: 52, type: !1926)
!1982 = !DILocalVariable(name: "i", scope: !1979, file: !32, line: 53, type: !16)
!1983 = !DILocation(line: 52, column: 54, scope: !1979)
!1984 = !DILocation(line: 53, column: 18, scope: !1979)
!1985 = !DILocation(line: 55, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !32, line: 55, column: 5)
!1987 = !DILocation(line: 56, column: 44, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !32, line: 55, column: 29)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !32, line: 55, column: 5)
!1990 = !DILocation(line: 56, column: 9, scope: !1988)
!1991 = !DILocation(line: 55, column: 24, scope: !1989)
!1992 = !DILocation(line: 55, column: 19, scope: !1989)
!1993 = distinct !{!1993, !1985, !1994}
!1994 = !DILocation(line: 57, column: 5, scope: !1986)
!1995 = !DILocation(line: 58, column: 1, scope: !1979)
!1996 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery", scope: !32, file: !32, line: 73, type: !1997, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2000)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1999, !1955, !1955}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!2000 = !{!2001, !2002, !2003, !2004, !2005}
!2001 = !DILocalVariable(name: "w", arg: 1, scope: !1996, file: !32, line: 73, type: !1999)
!2002 = !DILocalVariable(name: "u", arg: 2, scope: !1996, file: !32, line: 74, type: !1955)
!2003 = !DILocalVariable(name: "v", arg: 3, scope: !1996, file: !32, line: 75, type: !1955)
!2004 = !DILocalVariable(name: "i", scope: !1996, file: !32, line: 76, type: !16)
!2005 = !DILocalVariable(name: "t", scope: !1996, file: !32, line: 77, type: !1932)
!2006 = !DILocation(line: 73, column: 74, scope: !1996)
!2007 = !DILocation(line: 74, column: 25, scope: !1996)
!2008 = !DILocation(line: 75, column: 25, scope: !1996)
!2009 = !DILocation(line: 77, column: 5, scope: !1996)
!2010 = !DILocation(line: 79, column: 63, scope: !1996)
!2011 = !DILocation(line: 79, column: 75, scope: !1996)
!2012 = !DILocation(line: 79, column: 5, scope: !1996)
!2013 = !DILocation(line: 76, column: 18, scope: !1996)
!2014 = !DILocation(line: 81, column: 5, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1996, file: !32, line: 81, column: 5)
!2016 = !DILocation(line: 82, column: 68, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !32, line: 81, column: 29)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !32, line: 81, column: 5)
!2019 = !DILocation(line: 82, column: 80, scope: !2017)
!2020 = !DILocation(line: 77, column: 10, scope: !1996)
!2021 = !DILocation(line: 82, column: 9, scope: !2017)
!2022 = !DILocation(line: 83, column: 9, scope: !2017)
!2023 = !DILocation(line: 81, column: 24, scope: !2018)
!2024 = !DILocation(line: 81, column: 19, scope: !2018)
!2025 = distinct !{!2025, !2014, !2026}
!2026 = !DILocation(line: 84, column: 5, scope: !2015)
!2027 = !DILocation(line: 85, column: 1, scope: !1996)
!2028 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm", scope: !32, file: !32, line: 99, type: !2029, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!25, !1955, !14}
!2031 = !{!2032, !2033, !2034}
!2032 = !DILocalVariable(name: "v", arg: 1, scope: !2028, file: !32, line: 99, type: !1955)
!2033 = !DILocalVariable(name: "bound", arg: 2, scope: !2028, file: !32, line: 99, type: !14)
!2034 = !DILocalVariable(name: "i", scope: !2028, file: !32, line: 100, type: !16)
!2035 = !DILocation(line: 99, column: 63, scope: !2028)
!2036 = !DILocation(line: 99, column: 75, scope: !2028)
!2037 = !DILocation(line: 100, column: 18, scope: !2028)
!2038 = !DILocation(line: 102, column: 5, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2028, file: !32, line: 102, column: 5)
!2040 = !DILocation(line: 102, column: 19, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !32, line: 102, column: 5)
!2042 = distinct !{!2042, !2038, !2043}
!2043 = !DILocation(line: 106, column: 5, scope: !2039)
!2044 = !DILocation(line: 103, column: 52, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !32, line: 103, column: 13)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !32, line: 102, column: 29)
!2047 = !DILocation(line: 103, column: 13, scope: !2045)
!2048 = !DILocation(line: 102, column: 24, scope: !2041)
!2049 = !DILocation(line: 103, column: 13, scope: !2046)
!2050 = !DILocation(line: 0, scope: !2028)
!2051 = !DILocation(line: 108, column: 1, scope: !2028)
!2052 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce", scope: !32, file: !32, line: 123, type: !2053, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2061)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyveck", file: !204, line: 29, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 27, size: 32768, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2057, file: !204, line: 28, baseType: !2060, size: 32768)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1932, size: 32768, elements: !215)
!2061 = !{!2062, !2063}
!2062 = !DILocalVariable(name: "v", arg: 1, scope: !2052, file: !32, line: 123, type: !2055)
!2063 = !DILocalVariable(name: "i", scope: !2052, file: !32, line: 124, type: !16)
!2064 = !DILocation(line: 123, column: 57, scope: !2052)
!2065 = !DILocation(line: 124, column: 18, scope: !2052)
!2066 = !DILocation(line: 126, column: 5, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2052, file: !32, line: 126, column: 5)
!2068 = !DILocation(line: 127, column: 47, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !32, line: 126, column: 29)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !32, line: 126, column: 5)
!2071 = !DILocation(line: 127, column: 9, scope: !2069)
!2072 = !DILocation(line: 126, column: 24, scope: !2070)
!2073 = !DILocation(line: 126, column: 19, scope: !2070)
!2074 = distinct !{!2074, !2066, !2075}
!2075 = !DILocation(line: 128, column: 5, scope: !2067)
!2076 = !DILocation(line: 129, column: 1, scope: !2052)
!2077 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq", scope: !32, file: !32, line: 139, type: !2053, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2078)
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "v", arg: 1, scope: !2077, file: !32, line: 139, type: !2055)
!2080 = !DILocalVariable(name: "i", scope: !2077, file: !32, line: 140, type: !16)
!2081 = !DILocation(line: 139, column: 56, scope: !2077)
!2082 = !DILocation(line: 140, column: 18, scope: !2077)
!2083 = !DILocation(line: 142, column: 5, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2077, file: !32, line: 142, column: 5)
!2085 = !DILocation(line: 143, column: 46, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !32, line: 142, column: 29)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !32, line: 142, column: 5)
!2088 = !DILocation(line: 143, column: 9, scope: !2086)
!2089 = !DILocation(line: 142, column: 24, scope: !2087)
!2090 = !DILocation(line: 142, column: 19, scope: !2087)
!2091 = distinct !{!2091, !2083, !2092}
!2092 = !DILocation(line: 144, column: 5, scope: !2084)
!2093 = !DILocation(line: 145, column: 1, scope: !2077)
!2094 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze", scope: !32, file: !32, line: 155, type: !2053, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2095)
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "v", arg: 1, scope: !2094, file: !32, line: 155, type: !2055)
!2097 = !DILocalVariable(name: "i", scope: !2094, file: !32, line: 156, type: !16)
!2098 = !DILocation(line: 155, column: 57, scope: !2094)
!2099 = !DILocation(line: 156, column: 18, scope: !2094)
!2100 = !DILocation(line: 158, column: 5, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2094, file: !32, line: 158, column: 5)
!2102 = !DILocation(line: 159, column: 47, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !32, line: 158, column: 29)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !32, line: 158, column: 5)
!2105 = !DILocation(line: 159, column: 9, scope: !2103)
!2106 = !DILocation(line: 158, column: 24, scope: !2104)
!2107 = !DILocation(line: 158, column: 19, scope: !2104)
!2108 = distinct !{!2108, !2100, !2109}
!2109 = !DILocation(line: 160, column: 5, scope: !2101)
!2110 = !DILocation(line: 161, column: 1, scope: !2094)
!2111 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_add", scope: !32, file: !32, line: 173, type: !2112, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2116)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2055, !2114, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2116 = !{!2117, !2118, !2119, !2120}
!2117 = !DILocalVariable(name: "w", arg: 1, scope: !2111, file: !32, line: 173, type: !2055)
!2118 = !DILocalVariable(name: "u", arg: 2, scope: !2111, file: !32, line: 173, type: !2114)
!2119 = !DILocalVariable(name: "v", arg: 3, scope: !2111, file: !32, line: 173, type: !2114)
!2120 = !DILocalVariable(name: "i", scope: !2111, file: !32, line: 174, type: !16)
!2121 = !DILocation(line: 173, column: 54, scope: !2111)
!2122 = !DILocation(line: 173, column: 73, scope: !2111)
!2123 = !DILocation(line: 173, column: 92, scope: !2111)
!2124 = !DILocation(line: 174, column: 18, scope: !2111)
!2125 = !DILocation(line: 176, column: 5, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2111, file: !32, line: 176, column: 5)
!2127 = !DILocation(line: 177, column: 44, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !32, line: 176, column: 29)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !32, line: 176, column: 5)
!2130 = !DILocation(line: 177, column: 56, scope: !2128)
!2131 = !DILocation(line: 177, column: 68, scope: !2128)
!2132 = !DILocation(line: 177, column: 9, scope: !2128)
!2133 = !DILocation(line: 176, column: 24, scope: !2129)
!2134 = !DILocation(line: 176, column: 19, scope: !2129)
!2135 = distinct !{!2135, !2125, !2136}
!2136 = !DILocation(line: 178, column: 5, scope: !2126)
!2137 = !DILocation(line: 179, column: 1, scope: !2111)
!2138 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub", scope: !32, file: !32, line: 193, type: !2112, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2139)
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "w", arg: 1, scope: !2138, file: !32, line: 193, type: !2055)
!2141 = !DILocalVariable(name: "u", arg: 2, scope: !2138, file: !32, line: 193, type: !2114)
!2142 = !DILocalVariable(name: "v", arg: 3, scope: !2138, file: !32, line: 193, type: !2114)
!2143 = !DILocalVariable(name: "i", scope: !2138, file: !32, line: 194, type: !16)
!2144 = !DILocation(line: 193, column: 54, scope: !2138)
!2145 = !DILocation(line: 193, column: 73, scope: !2138)
!2146 = !DILocation(line: 193, column: 92, scope: !2138)
!2147 = !DILocation(line: 194, column: 18, scope: !2138)
!2148 = !DILocation(line: 196, column: 5, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2138, file: !32, line: 196, column: 5)
!2150 = !DILocation(line: 197, column: 44, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !32, line: 196, column: 29)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !32, line: 196, column: 5)
!2153 = !DILocation(line: 197, column: 56, scope: !2151)
!2154 = !DILocation(line: 197, column: 68, scope: !2151)
!2155 = !DILocation(line: 197, column: 9, scope: !2151)
!2156 = !DILocation(line: 196, column: 24, scope: !2152)
!2157 = !DILocation(line: 196, column: 19, scope: !2152)
!2158 = distinct !{!2158, !2148, !2159}
!2159 = !DILocation(line: 198, column: 5, scope: !2149)
!2160 = !DILocation(line: 199, column: 1, scope: !2138)
!2161 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl", scope: !32, file: !32, line: 209, type: !2053, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2162)
!2162 = !{!2163, !2164}
!2163 = !DILocalVariable(name: "v", arg: 1, scope: !2161, file: !32, line: 209, type: !2055)
!2164 = !DILocalVariable(name: "i", scope: !2161, file: !32, line: 210, type: !16)
!2165 = !DILocation(line: 209, column: 57, scope: !2161)
!2166 = !DILocation(line: 210, column: 18, scope: !2161)
!2167 = !DILocation(line: 212, column: 5, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2161, file: !32, line: 212, column: 5)
!2169 = !DILocation(line: 213, column: 47, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !32, line: 212, column: 29)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !32, line: 212, column: 5)
!2172 = !DILocation(line: 213, column: 9, scope: !2170)
!2173 = !DILocation(line: 212, column: 24, scope: !2171)
!2174 = !DILocation(line: 212, column: 19, scope: !2171)
!2175 = distinct !{!2175, !2167, !2176}
!2176 = !DILocation(line: 214, column: 5, scope: !2168)
!2177 = !DILocation(line: 215, column: 1, scope: !2161)
!2178 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt", scope: !32, file: !32, line: 225, type: !2053, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2179)
!2179 = !{!2180, !2181}
!2180 = !DILocalVariable(name: "v", arg: 1, scope: !2178, file: !32, line: 225, type: !2055)
!2181 = !DILocalVariable(name: "i", scope: !2178, file: !32, line: 226, type: !16)
!2182 = !DILocation(line: 225, column: 54, scope: !2178)
!2183 = !DILocation(line: 226, column: 18, scope: !2178)
!2184 = !DILocation(line: 228, column: 5, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2178, file: !32, line: 228, column: 5)
!2186 = !DILocation(line: 229, column: 44, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !32, line: 228, column: 29)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !32, line: 228, column: 5)
!2189 = !DILocation(line: 229, column: 9, scope: !2187)
!2190 = !DILocation(line: 228, column: 24, scope: !2188)
!2191 = !DILocation(line: 228, column: 19, scope: !2188)
!2192 = distinct !{!2192, !2184, !2193}
!2193 = !DILocation(line: 230, column: 5, scope: !2185)
!2194 = !DILocation(line: 231, column: 1, scope: !2178)
!2195 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery", scope: !32, file: !32, line: 242, type: !2053, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2196)
!2196 = !{!2197, !2198}
!2197 = !DILocalVariable(name: "v", arg: 1, scope: !2195, file: !32, line: 242, type: !2055)
!2198 = !DILocalVariable(name: "i", scope: !2195, file: !32, line: 243, type: !16)
!2199 = !DILocation(line: 242, column: 68, scope: !2195)
!2200 = !DILocation(line: 243, column: 18, scope: !2195)
!2201 = !DILocation(line: 245, column: 5, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2195, file: !32, line: 245, column: 5)
!2203 = !DILocation(line: 246, column: 58, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !32, line: 245, column: 29)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !32, line: 245, column: 5)
!2206 = !DILocation(line: 246, column: 9, scope: !2204)
!2207 = !DILocation(line: 245, column: 24, scope: !2205)
!2208 = !DILocation(line: 245, column: 19, scope: !2205)
!2209 = distinct !{!2209, !2201, !2210}
!2210 = !DILocation(line: 247, column: 5, scope: !2202)
!2211 = !DILocation(line: 248, column: 1, scope: !2195)
!2212 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm", scope: !32, file: !32, line: 262, type: !2213, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!25, !2114, !14}
!2215 = !{!2216, !2217, !2218}
!2216 = !DILocalVariable(name: "v", arg: 1, scope: !2212, file: !32, line: 262, type: !2114)
!2217 = !DILocalVariable(name: "bound", arg: 2, scope: !2212, file: !32, line: 262, type: !14)
!2218 = !DILocalVariable(name: "i", scope: !2212, file: !32, line: 263, type: !16)
!2219 = !DILocation(line: 262, column: 63, scope: !2212)
!2220 = !DILocation(line: 262, column: 75, scope: !2212)
!2221 = !DILocation(line: 263, column: 18, scope: !2212)
!2222 = !DILocation(line: 265, column: 5, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2212, file: !32, line: 265, column: 5)
!2224 = !DILocation(line: 265, column: 19, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2223, file: !32, line: 265, column: 5)
!2226 = distinct !{!2226, !2222, !2227}
!2227 = !DILocation(line: 269, column: 5, scope: !2223)
!2228 = !DILocation(line: 266, column: 52, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !32, line: 266, column: 13)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !32, line: 265, column: 29)
!2231 = !DILocation(line: 266, column: 13, scope: !2229)
!2232 = !DILocation(line: 265, column: 24, scope: !2225)
!2233 = !DILocation(line: 266, column: 13, scope: !2230)
!2234 = !DILocation(line: 0, scope: !2212)
!2235 = !DILocation(line: 271, column: 1, scope: !2212)
!2236 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round", scope: !32, file: !32, line: 287, type: !2237, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2055, !2055, !2114}
!2239 = !{!2240, !2241, !2242, !2243}
!2240 = !DILocalVariable(name: "v1", arg: 1, scope: !2236, file: !32, line: 287, type: !2055)
!2241 = !DILocalVariable(name: "v0", arg: 2, scope: !2236, file: !32, line: 287, type: !2055)
!2242 = !DILocalVariable(name: "v", arg: 3, scope: !2236, file: !32, line: 287, type: !2114)
!2243 = !DILocalVariable(name: "i", scope: !2236, file: !32, line: 288, type: !16)
!2244 = !DILocation(line: 287, column: 62, scope: !2236)
!2245 = !DILocation(line: 287, column: 76, scope: !2236)
!2246 = !DILocation(line: 287, column: 96, scope: !2236)
!2247 = !DILocation(line: 288, column: 18, scope: !2236)
!2248 = !DILocation(line: 290, column: 5, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2236, file: !32, line: 290, column: 5)
!2250 = !DILocation(line: 291, column: 52, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !32, line: 290, column: 29)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !32, line: 290, column: 5)
!2253 = !DILocation(line: 291, column: 65, scope: !2251)
!2254 = !DILocation(line: 291, column: 78, scope: !2251)
!2255 = !DILocation(line: 291, column: 9, scope: !2251)
!2256 = !DILocation(line: 290, column: 24, scope: !2252)
!2257 = !DILocation(line: 290, column: 19, scope: !2252)
!2258 = distinct !{!2258, !2248, !2259}
!2259 = !DILocation(line: 292, column: 5, scope: !2249)
!2260 = !DILocation(line: 293, column: 1, scope: !2236)
!2261 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose", scope: !32, file: !32, line: 310, type: !2237, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2262)
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DILocalVariable(name: "v1", arg: 1, scope: !2261, file: !32, line: 310, type: !2055)
!2264 = !DILocalVariable(name: "v0", arg: 2, scope: !2261, file: !32, line: 310, type: !2055)
!2265 = !DILocalVariable(name: "v", arg: 3, scope: !2261, file: !32, line: 310, type: !2114)
!2266 = !DILocalVariable(name: "i", scope: !2261, file: !32, line: 311, type: !16)
!2267 = !DILocation(line: 310, column: 60, scope: !2261)
!2268 = !DILocation(line: 310, column: 74, scope: !2261)
!2269 = !DILocation(line: 310, column: 94, scope: !2261)
!2270 = !DILocation(line: 311, column: 18, scope: !2261)
!2271 = !DILocation(line: 313, column: 5, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !32, line: 313, column: 5)
!2273 = !DILocation(line: 314, column: 50, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !32, line: 313, column: 29)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !32, line: 313, column: 5)
!2276 = !DILocation(line: 314, column: 63, scope: !2274)
!2277 = !DILocation(line: 314, column: 76, scope: !2274)
!2278 = !DILocation(line: 314, column: 9, scope: !2274)
!2279 = !DILocation(line: 313, column: 24, scope: !2275)
!2280 = !DILocation(line: 313, column: 19, scope: !2275)
!2281 = distinct !{!2281, !2271, !2282}
!2282 = !DILocation(line: 315, column: 5, scope: !2272)
!2283 = !DILocation(line: 316, column: 1, scope: !2261)
!2284 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint", scope: !32, file: !32, line: 329, type: !2285, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!16, !2055, !2114, !2114}
!2287 = !{!2288, !2289, !2290, !2291, !2292}
!2288 = !DILocalVariable(name: "h", arg: 1, scope: !2284, file: !32, line: 329, type: !2055)
!2289 = !DILocalVariable(name: "v0", arg: 2, scope: !2284, file: !32, line: 330, type: !2114)
!2290 = !DILocalVariable(name: "v1", arg: 3, scope: !2284, file: !32, line: 331, type: !2114)
!2291 = !DILocalVariable(name: "i", scope: !2284, file: !32, line: 332, type: !16)
!2292 = !DILocalVariable(name: "s", scope: !2284, file: !32, line: 332, type: !16)
!2293 = !DILocation(line: 329, column: 68, scope: !2284)
!2294 = !DILocation(line: 330, column: 25, scope: !2284)
!2295 = !DILocation(line: 331, column: 25, scope: !2284)
!2296 = !DILocation(line: 332, column: 21, scope: !2284)
!2297 = !DILocation(line: 332, column: 18, scope: !2284)
!2298 = !DILocation(line: 334, column: 5, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2284, file: !32, line: 334, column: 5)
!2300 = !DILocation(line: 335, column: 55, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !32, line: 334, column: 29)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !32, line: 334, column: 5)
!2303 = !DILocation(line: 335, column: 67, scope: !2301)
!2304 = !DILocation(line: 335, column: 80, scope: !2301)
!2305 = !DILocation(line: 335, column: 14, scope: !2301)
!2306 = !DILocation(line: 335, column: 11, scope: !2301)
!2307 = !DILocation(line: 334, column: 24, scope: !2302)
!2308 = !DILocation(line: 334, column: 19, scope: !2302)
!2309 = distinct !{!2309, !2298, !2310}
!2310 = !DILocation(line: 336, column: 5, scope: !2299)
!2311 = !DILocation(line: 338, column: 5, scope: !2284)
!2312 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint", scope: !32, file: !32, line: 351, type: !2112, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !2313)
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "w", arg: 1, scope: !2312, file: !32, line: 351, type: !2055)
!2315 = !DILocalVariable(name: "u", arg: 2, scope: !2312, file: !32, line: 351, type: !2114)
!2316 = !DILocalVariable(name: "h", arg: 3, scope: !2312, file: !32, line: 351, type: !2114)
!2317 = !DILocalVariable(name: "i", scope: !2312, file: !32, line: 352, type: !16)
!2318 = !DILocation(line: 351, column: 59, scope: !2312)
!2319 = !DILocation(line: 351, column: 78, scope: !2312)
!2320 = !DILocation(line: 351, column: 97, scope: !2312)
!2321 = !DILocation(line: 352, column: 18, scope: !2312)
!2322 = !DILocation(line: 354, column: 5, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2312, file: !32, line: 354, column: 5)
!2324 = !DILocation(line: 355, column: 49, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !32, line: 354, column: 29)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !32, line: 354, column: 5)
!2327 = !DILocation(line: 355, column: 61, scope: !2325)
!2328 = !DILocation(line: 355, column: 73, scope: !2325)
!2329 = !DILocation(line: 355, column: 9, scope: !2325)
!2330 = !DILocation(line: 354, column: 24, scope: !2326)
!2331 = !DILocation(line: 354, column: 19, scope: !2326)
!2332 = distinct !{!2332, !2322, !2333}
!2333 = !DILocation(line: 356, column: 5, scope: !2323)
!2334 = !DILocation(line: 357, column: 1, scope: !2312)
!2335 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce", scope: !34, file: !34, line: 15, type: !2336, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!14, !6}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "a", arg: 1, scope: !2335, file: !34, line: 15, type: !6)
!2340 = !DILocalVariable(name: "t", scope: !2335, file: !34, line: 16, type: !6)
!2341 = !DILocation(line: 15, column: 62, scope: !2335)
!2342 = !DILocation(line: 18, column: 11, scope: !2335)
!2343 = !DILocation(line: 16, column: 14, scope: !2335)
!2344 = !DILocation(line: 19, column: 7, scope: !2335)
!2345 = !DILocation(line: 20, column: 7, scope: !2335)
!2346 = !DILocation(line: 21, column: 11, scope: !2335)
!2347 = !DILocation(line: 22, column: 7, scope: !2335)
!2348 = !DILocation(line: 23, column: 12, scope: !2335)
!2349 = !DILocation(line: 23, column: 5, scope: !2335)
!2350 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_reduce32", scope: !34, file: !34, line: 36, type: !2351, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!14, !14}
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "a", arg: 1, scope: !2350, file: !34, line: 36, type: !14)
!2355 = !DILocalVariable(name: "t", scope: !2350, file: !34, line: 37, type: !14)
!2356 = !DILocation(line: 36, column: 53, scope: !2350)
!2357 = !DILocation(line: 39, column: 11, scope: !2350)
!2358 = !DILocation(line: 37, column: 14, scope: !2350)
!2359 = !DILocation(line: 40, column: 7, scope: !2350)
!2360 = !DILocation(line: 41, column: 20, scope: !2350)
!2361 = !DILocation(line: 41, column: 7, scope: !2350)
!2362 = !DILocation(line: 42, column: 5, scope: !2350)
!2363 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_csubq", scope: !34, file: !34, line: 54, type: !2351, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !2364)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "a", arg: 1, scope: !2363, file: !34, line: 54, type: !14)
!2366 = !DILocation(line: 54, column: 50, scope: !2363)
!2367 = !DILocation(line: 55, column: 7, scope: !2363)
!2368 = !DILocation(line: 56, column: 22, scope: !2363)
!2369 = !DILocation(line: 56, column: 29, scope: !2363)
!2370 = !DILocation(line: 56, column: 7, scope: !2363)
!2371 = !DILocation(line: 57, column: 5, scope: !2363)
!2372 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_freeze", scope: !34, file: !34, line: 70, type: !2351, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !2373)
!2373 = !{!2374}
!2374 = !DILocalVariable(name: "a", arg: 1, scope: !2372, file: !34, line: 70, type: !14)
!2375 = !DILocation(line: 70, column: 51, scope: !2372)
!2376 = !DILocation(line: 71, column: 9, scope: !2372)
!2377 = !DILocation(line: 72, column: 9, scope: !2372)
!2378 = !DILocation(line: 73, column: 5, scope: !2372)
!2379 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_power2round", scope: !37, file: !37, line: 15, type: !2380, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!14, !14, !59}
!2382 = !{!2383, !2384, !2385}
!2383 = !DILocalVariable(name: "a", arg: 1, scope: !2379, file: !37, line: 15, type: !14)
!2384 = !DILocalVariable(name: "a0", arg: 2, scope: !2379, file: !37, line: 15, type: !59)
!2385 = !DILocalVariable(name: "t", scope: !2379, file: !37, line: 16, type: !14)
!2386 = !DILocation(line: 15, column: 56, scope: !2379)
!2387 = !DILocation(line: 15, column: 69, scope: !2379)
!2388 = !DILocation(line: 19, column: 11, scope: !2379)
!2389 = !DILocation(line: 16, column: 14, scope: !2379)
!2390 = !DILocation(line: 20, column: 7, scope: !2379)
!2391 = !DILocation(line: 21, column: 33, scope: !2379)
!2392 = !DILocation(line: 21, column: 40, scope: !2379)
!2393 = !DILocation(line: 21, column: 7, scope: !2379)
!2394 = !DILocation(line: 23, column: 14, scope: !2379)
!2395 = !DILocation(line: 23, column: 9, scope: !2379)
!2396 = !DILocation(line: 22, column: 7, scope: !2379)
!2397 = !DILocation(line: 24, column: 12, scope: !2379)
!2398 = !DILocation(line: 24, column: 17, scope: !2379)
!2399 = !DILocation(line: 25, column: 5, scope: !2379)
!2400 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_decompose", scope: !37, file: !37, line: 42, type: !2380, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2401)
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DILocalVariable(name: "a", arg: 1, scope: !2400, file: !37, line: 42, type: !14)
!2403 = !DILocalVariable(name: "a0", arg: 2, scope: !2400, file: !37, line: 42, type: !59)
!2404 = !DILocalVariable(name: "t", scope: !2400, file: !37, line: 43, type: !23)
!2405 = !DILocalVariable(name: "u", scope: !2400, file: !37, line: 43, type: !23)
!2406 = !DILocation(line: 42, column: 54, scope: !2400)
!2407 = !DILocation(line: 42, column: 67, scope: !2400)
!2408 = !DILocation(line: 45, column: 11, scope: !2400)
!2409 = !DILocation(line: 43, column: 13, scope: !2400)
!2410 = !DILocation(line: 46, column: 24, scope: !2400)
!2411 = !DILocation(line: 46, column: 31, scope: !2400)
!2412 = !DILocation(line: 46, column: 7, scope: !2400)
!2413 = !DILocation(line: 47, column: 7, scope: !2400)
!2414 = !DILocation(line: 48, column: 13, scope: !2400)
!2415 = !DILocation(line: 48, column: 20, scope: !2400)
!2416 = !DILocation(line: 48, column: 7, scope: !2400)
!2417 = !DILocation(line: 49, column: 7, scope: !2400)
!2418 = !DILocation(line: 50, column: 7, scope: !2400)
!2419 = !DILocation(line: 53, column: 21, scope: !2400)
!2420 = !DILocation(line: 43, column: 16, scope: !2400)
!2421 = !DILocation(line: 55, column: 12, scope: !2400)
!2422 = !DILocation(line: 55, column: 19, scope: !2400)
!2423 = !DILocation(line: 56, column: 7, scope: !2400)
!2424 = !DILocation(line: 59, column: 13, scope: !2400)
!2425 = !DILocation(line: 59, column: 32, scope: !2400)
!2426 = !DILocation(line: 59, column: 27, scope: !2400)
!2427 = !DILocation(line: 59, column: 9, scope: !2400)
!2428 = !DILocation(line: 60, column: 7, scope: !2400)
!2429 = !DILocation(line: 61, column: 5, scope: !2400)
!2430 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_make_hint", scope: !37, file: !37, line: 76, type: !2431, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!16, !14, !14}
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "a0", arg: 1, scope: !2430, file: !37, line: 76, type: !14)
!2435 = !DILocalVariable(name: "a1", arg: 2, scope: !2430, file: !37, line: 76, type: !14)
!2436 = !DILocation(line: 76, column: 58, scope: !2430)
!2437 = !DILocation(line: 76, column: 71, scope: !2430)
!2438 = !DILocation(line: 77, column: 22, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2430, file: !37, line: 77, column: 9)
!2440 = !DILocation(line: 77, column: 48, scope: !2439)
!2441 = !DILocation(line: 77, column: 68, scope: !2439)
!2442 = !DILocation(line: 77, column: 62, scope: !2439)
!2443 = !DILocation(line: 82, column: 1, scope: !2430)
!2444 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_use_hint", scope: !37, file: !37, line: 94, type: !2445, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!14, !14, !16}
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "a", arg: 1, scope: !2444, file: !37, line: 94, type: !14)
!2449 = !DILocalVariable(name: "hint", arg: 2, scope: !2444, file: !37, line: 94, type: !16)
!2450 = !DILocalVariable(name: "a0", scope: !2444, file: !37, line: 95, type: !14)
!2451 = !DILocalVariable(name: "a1", scope: !2444, file: !37, line: 95, type: !14)
!2452 = !DILocation(line: 94, column: 53, scope: !2444)
!2453 = !DILocation(line: 94, column: 69, scope: !2444)
!2454 = !DILocation(line: 95, column: 5, scope: !2444)
!2455 = !DILocation(line: 95, column: 14, scope: !2444)
!2456 = !DILocation(line: 97, column: 10, scope: !2444)
!2457 = !DILocation(line: 95, column: 18, scope: !2444)
!2458 = !DILocation(line: 98, column: 14, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2444, file: !37, line: 98, column: 9)
!2460 = !DILocation(line: 98, column: 9, scope: !2444)
!2461 = !DILocation(line: 101, column: 9, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2444, file: !37, line: 101, column: 9)
!2463 = !DILocation(line: 101, column: 12, scope: !2462)
!2464 = !DILocation(line: 101, column: 9, scope: !2444)
!2465 = !DILocation(line: 102, column: 20, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !37, line: 101, column: 17)
!2467 = !DILocation(line: 102, column: 25, scope: !2466)
!2468 = !DILocation(line: 102, column: 9, scope: !2466)
!2469 = !DILocation(line: 104, column: 16, scope: !2444)
!2470 = !DILocation(line: 104, column: 21, scope: !2444)
!2471 = !DILocation(line: 104, column: 5, scope: !2444)
!2472 = !DILocation(line: 0, scope: !2444)
!2473 = !DILocation(line: 105, column: 1, scope: !2444)
!2474 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_expand_mat", scope: !39, file: !39, line: 22, type: !2475, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2487)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477, !199}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyvecl", file: !204, line: 11, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 9, size: 24576, elements: !2480)
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2479, file: !204, line: 10, baseType: !2482, size: 24576)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 24576, elements: !300)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !210, line: 9, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 7, size: 8192, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "coeffs", scope: !2484, file: !210, line: 8, baseType: !214, size: 8192)
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "mat", arg: 1, scope: !2474, file: !39, line: 22, type: !2477)
!2489 = !DILocalVariable(name: "rho", arg: 2, scope: !2474, file: !39, line: 22, type: !199)
!2490 = !DILocalVariable(name: "i", scope: !2474, file: !39, line: 23, type: !16)
!2491 = !DILocalVariable(name: "j", scope: !2474, file: !39, line: 23, type: !16)
!2492 = !DILocation(line: 22, column: 51, scope: !2474)
!2493 = !DILocation(line: 22, column: 79, scope: !2474)
!2494 = !DILocation(line: 23, column: 18, scope: !2474)
!2495 = !DILocation(line: 25, column: 5, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2474, file: !39, line: 25, column: 5)
!2497 = !DILocation(line: 23, column: 21, scope: !2474)
!2498 = !DILocation(line: 0, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !39, line: 26, column: 33)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !39, line: 26, column: 9)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !39, line: 26, column: 9)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !39, line: 25, column: 29)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !39, line: 25, column: 5)
!2504 = !DILocation(line: 26, column: 9, scope: !2501)
!2505 = !DILocation(line: 27, column: 52, scope: !2499)
!2506 = !DILocation(line: 27, column: 92, scope: !2499)
!2507 = !DILocation(line: 27, column: 72, scope: !2499)
!2508 = !DILocation(line: 27, column: 13, scope: !2499)
!2509 = !DILocation(line: 26, column: 28, scope: !2500)
!2510 = !DILocation(line: 26, column: 23, scope: !2500)
!2511 = distinct !{!2511, !2504, !2512}
!2512 = !DILocation(line: 28, column: 9, scope: !2501)
!2513 = !DILocation(line: 25, column: 24, scope: !2503)
!2514 = !DILocation(line: 25, column: 19, scope: !2503)
!2515 = distinct !{!2515, !2495, !2516}
!2516 = !DILocation(line: 29, column: 5, scope: !2496)
!2517 = !DILocation(line: 30, column: 1, scope: !2474)
!2518 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_challenge", scope: !39, file: !39, line: 43, type: !2519, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2529)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{null, !2521, !199, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyveck", file: !204, line: 29, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 27, size: 32768, elements: !2526)
!2526 = !{!2527}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2525, file: !204, line: 28, baseType: !2528, size: 32768)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 32768, elements: !215)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2541, !2545}
!2530 = !DILocalVariable(name: "c", arg: 1, scope: !2518, file: !39, line: 43, type: !2521)
!2531 = !DILocalVariable(name: "mu", arg: 2, scope: !2518, file: !39, line: 44, type: !199)
!2532 = !DILocalVariable(name: "w1", arg: 3, scope: !2518, file: !39, line: 45, type: !2522)
!2533 = !DILocalVariable(name: "i", scope: !2518, file: !39, line: 46, type: !16)
!2534 = !DILocalVariable(name: "b", scope: !2518, file: !39, line: 46, type: !16)
!2535 = !DILocalVariable(name: "pos", scope: !2518, file: !39, line: 46, type: !16)
!2536 = !DILocalVariable(name: "signs", scope: !2518, file: !39, line: 47, type: !6)
!2537 = !DILocalVariable(name: "inbuf", scope: !2518, file: !39, line: 48, type: !2538)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4480, elements: !2539)
!2539 = !{!2540}
!2540 = !DISubrange(count: 560)
!2541 = !DILocalVariable(name: "outbuf", scope: !2518, file: !39, line: 49, type: !2542)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1088, elements: !2543)
!2543 = !{!2544}
!2544 = !DISubrange(count: 136)
!2545 = !DILocalVariable(name: "state", scope: !2518, file: !39, line: 50, type: !2546)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !1072, line: 32, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 30, size: 1600, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2547, file: !1072, line: 31, baseType: !1076, size: 1600)
!2550 = !DILocation(line: 43, column: 47, scope: !2518)
!2551 = !DILocation(line: 44, column: 61, scope: !2518)
!2552 = !DILocation(line: 45, column: 57, scope: !2518)
!2553 = !DILocation(line: 48, column: 5, scope: !2518)
!2554 = !DILocation(line: 48, column: 19, scope: !2518)
!2555 = !DILocation(line: 49, column: 5, scope: !2518)
!2556 = !DILocation(line: 49, column: 19, scope: !2518)
!2557 = !DILocation(line: 50, column: 5, scope: !2518)
!2558 = !DILocation(line: 46, column: 18, scope: !2518)
!2559 = !DILocation(line: 53, column: 18, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !39, line: 52, column: 36)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !39, line: 52, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2518, file: !39, line: 52, column: 5)
!2563 = !DILocation(line: 0, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !39, line: 55, column: 29)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !39, line: 55, column: 5)
!2566 = distinct !DILexicalBlock(scope: !2518, file: !39, line: 55, column: 5)
!2567 = !DILocation(line: 55, column: 5, scope: !2566)
!2568 = !DILocation(line: 56, column: 67, scope: !2564)
!2569 = !DILocation(line: 56, column: 63, scope: !2564)
!2570 = !DILocation(line: 56, column: 89, scope: !2564)
!2571 = !DILocation(line: 56, column: 9, scope: !2564)
!2572 = !DILocation(line: 55, column: 24, scope: !2565)
!2573 = !DILocation(line: 55, column: 19, scope: !2565)
!2574 = distinct !{!2574, !2567, !2575}
!2575 = !DILocation(line: 57, column: 5, scope: !2566)
!2576 = !DILocation(line: 50, column: 17, scope: !2518)
!2577 = !DILocation(line: 59, column: 5, scope: !2518)
!2578 = !DILocation(line: 60, column: 5, scope: !2518)
!2579 = !DILocation(line: 47, column: 14, scope: !2518)
!2580 = !DILocation(line: 63, column: 5, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2518, file: !39, line: 63, column: 5)
!2582 = !DILocation(line: 64, column: 28, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !39, line: 63, column: 29)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !39, line: 63, column: 5)
!2585 = !DILocation(line: 64, column: 18, scope: !2583)
!2586 = !DILocation(line: 64, column: 43, scope: !2583)
!2587 = !DILocation(line: 64, column: 38, scope: !2583)
!2588 = !DILocation(line: 64, column: 15, scope: !2583)
!2589 = !DILocation(line: 63, column: 24, scope: !2584)
!2590 = !DILocation(line: 63, column: 19, scope: !2584)
!2591 = distinct !{!2591, !2580, !2592}
!2592 = !DILocation(line: 65, column: 5, scope: !2581)
!2593 = !DILocation(line: 70, column: 22, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !39, line: 69, column: 29)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !39, line: 69, column: 5)
!2596 = distinct !DILexicalBlock(scope: !2518, file: !39, line: 69, column: 5)
!2597 = !DILocation(line: 75, column: 21, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !39, line: 75, column: 17)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !39, line: 74, column: 12)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !39, line: 73, column: 33)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !39, line: 73, column: 5)
!2602 = distinct !DILexicalBlock(scope: !2518, file: !39, line: 73, column: 5)
!2603 = !DILocation(line: 46, column: 24, scope: !2518)
!2604 = !DILocation(line: 0, scope: !2518)
!2605 = !DILocation(line: 75, column: 17, scope: !2599)
!2606 = !DILocation(line: 76, column: 17, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2598, file: !39, line: 75, column: 39)
!2608 = !DILocation(line: 78, column: 13, scope: !2607)
!2609 = !DILocation(line: 80, column: 27, scope: !2599)
!2610 = !DILocation(line: 80, column: 17, scope: !2599)
!2611 = !DILocation(line: 81, column: 20, scope: !2600)
!2612 = !DILocation(line: 46, column: 21, scope: !2518)
!2613 = !DILocation(line: 81, column: 9, scope: !2599)
!2614 = distinct !{!2614, !2615, !2616}
!2615 = !DILocation(line: 74, column: 9, scope: !2600)
!2616 = !DILocation(line: 81, column: 23, scope: !2600)
!2617 = !DILocation(line: 83, column: 24, scope: !2600)
!2618 = !DILocation(line: 83, column: 9, scope: !2600)
!2619 = !DILocation(line: 83, column: 22, scope: !2600)
!2620 = !DILocation(line: 85, column: 27, scope: !2600)
!2621 = !DILocation(line: 85, column: 42, scope: !2600)
!2622 = !DILocation(line: 85, column: 25, scope: !2600)
!2623 = !DILocation(line: 85, column: 47, scope: !2600)
!2624 = !DILocation(line: 85, column: 22, scope: !2600)
!2625 = !DILocation(line: 86, column: 15, scope: !2600)
!2626 = !DILocation(line: 73, column: 28, scope: !2601)
!2627 = !DILocation(line: 73, column: 21, scope: !2601)
!2628 = !DILocation(line: 73, column: 5, scope: !2602)
!2629 = distinct !{!2629, !2628, !2630}
!2630 = !DILocation(line: 87, column: 5, scope: !2602)
!2631 = !DILocation(line: 88, column: 1, scope: !2518)
!2632 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_keypair", scope: !39, file: !39, line: 102, type: !2633, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2636)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!25, !2635, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2636 = !{!2637, !2638, !2639, !2640, !2644, !2648, !2649, !2650, !2651, !2652, !2654, !2655, !2656, !2657, !2658, !2659}
!2637 = !DILocalVariable(name: "pk", arg: 1, scope: !2632, file: !39, line: 102, type: !2635)
!2638 = !DILocalVariable(name: "sk", arg: 2, scope: !2632, file: !39, line: 102, type: !2635)
!2639 = !DILocalVariable(name: "i", scope: !2632, file: !39, line: 103, type: !16)
!2640 = !DILocalVariable(name: "seedbuf", scope: !2632, file: !39, line: 104, type: !2641)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 768, elements: !2642)
!2642 = !{!2643}
!2643 = !DISubrange(count: 96)
!2644 = !DILocalVariable(name: "tr", scope: !2632, file: !39, line: 105, type: !2645)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 384, elements: !2646)
!2646 = !{!2647}
!2647 = !DISubrange(count: 48)
!2648 = !DILocalVariable(name: "rho", scope: !2632, file: !39, line: 106, type: !199)
!2649 = !DILocalVariable(name: "rhoprime", scope: !2632, file: !39, line: 106, type: !199)
!2650 = !DILocalVariable(name: "key", scope: !2632, file: !39, line: 106, type: !199)
!2651 = !DILocalVariable(name: "nonce", scope: !2632, file: !39, line: 107, type: !41)
!2652 = !DILocalVariable(name: "mat", scope: !2632, file: !39, line: 108, type: !2653)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 98304, elements: !215)
!2654 = !DILocalVariable(name: "s1", scope: !2632, file: !39, line: 109, type: !2478)
!2655 = !DILocalVariable(name: "s1hat", scope: !2632, file: !39, line: 109, type: !2478)
!2656 = !DILocalVariable(name: "s2", scope: !2632, file: !39, line: 110, type: !2524)
!2657 = !DILocalVariable(name: "t", scope: !2632, file: !39, line: 110, type: !2524)
!2658 = !DILocalVariable(name: "t1", scope: !2632, file: !39, line: 110, type: !2524)
!2659 = !DILocalVariable(name: "t0", scope: !2632, file: !39, line: 110, type: !2524)
!2660 = !DILocation(line: 102, column: 59, scope: !2632)
!2661 = !DILocation(line: 102, column: 72, scope: !2632)
!2662 = !DILocation(line: 104, column: 5, scope: !2632)
!2663 = !DILocation(line: 104, column: 19, scope: !2632)
!2664 = !DILocation(line: 105, column: 5, scope: !2632)
!2665 = !DILocation(line: 105, column: 19, scope: !2632)
!2666 = !DILocation(line: 107, column: 14, scope: !2632)
!2667 = !DILocation(line: 108, column: 5, scope: !2632)
!2668 = !DILocation(line: 108, column: 14, scope: !2632)
!2669 = !DILocation(line: 109, column: 5, scope: !2632)
!2670 = !DILocation(line: 110, column: 5, scope: !2632)
!2671 = !DILocation(line: 113, column: 5, scope: !2632)
!2672 = !DILocation(line: 106, column: 26, scope: !2632)
!2673 = !DILocation(line: 115, column: 24, scope: !2632)
!2674 = !DILocation(line: 106, column: 32, scope: !2632)
!2675 = !DILocation(line: 106, column: 43, scope: !2632)
!2676 = !DILocation(line: 119, column: 41, scope: !2632)
!2677 = !DILocation(line: 119, column: 5, scope: !2632)
!2678 = !DILocation(line: 103, column: 18, scope: !2632)
!2679 = !DILocation(line: 122, column: 5, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2632, file: !39, line: 122, column: 5)
!2681 = !DILocation(line: 123, column: 52, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !39, line: 122, column: 29)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !39, line: 122, column: 5)
!2684 = !DILocation(line: 123, column: 78, scope: !2682)
!2685 = !DILocation(line: 123, column: 9, scope: !2682)
!2686 = !DILocation(line: 122, column: 24, scope: !2683)
!2687 = !DILocation(line: 122, column: 19, scope: !2683)
!2688 = distinct !{!2688, !2679, !2689}
!2689 = !DILocation(line: 124, column: 5, scope: !2680)
!2690 = !DILocation(line: 116, column: 19, scope: !2632)
!2691 = !DILocation(line: 126, column: 52, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !39, line: 125, column: 29)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !39, line: 125, column: 5)
!2694 = distinct !DILexicalBlock(scope: !2632, file: !39, line: 125, column: 5)
!2695 = !DILocation(line: 126, column: 78, scope: !2692)
!2696 = !DILocation(line: 126, column: 9, scope: !2692)
!2697 = !DILocation(line: 125, column: 24, scope: !2693)
!2698 = !DILocation(line: 125, column: 19, scope: !2693)
!2699 = !DILocation(line: 125, column: 5, scope: !2694)
!2700 = distinct !{!2700, !2699, !2701}
!2701 = !DILocation(line: 127, column: 5, scope: !2694)
!2702 = !DILocation(line: 130, column: 13, scope: !2632)
!2703 = !{i64 0, i64 3072, !231}
!2704 = !DILocation(line: 109, column: 18, scope: !2632)
!2705 = !DILocation(line: 131, column: 5, scope: !2632)
!2706 = !DILocation(line: 132, column: 5, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2632, file: !39, line: 132, column: 5)
!2708 = !DILocation(line: 133, column: 72, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !39, line: 132, column: 29)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !39, line: 132, column: 5)
!2711 = !DILocation(line: 133, column: 83, scope: !2709)
!2712 = !DILocation(line: 133, column: 9, scope: !2709)
!2713 = !DILocation(line: 134, column: 9, scope: !2709)
!2714 = !DILocation(line: 135, column: 9, scope: !2709)
!2715 = !DILocation(line: 132, column: 24, scope: !2710)
!2716 = !DILocation(line: 132, column: 19, scope: !2710)
!2717 = distinct !{!2717, !2706, !2718}
!2718 = !DILocation(line: 136, column: 5, scope: !2707)
!2719 = !DILocation(line: 110, column: 14, scope: !2632)
!2720 = !DILocation(line: 110, column: 18, scope: !2632)
!2721 = !DILocation(line: 139, column: 5, scope: !2632)
!2722 = !DILocation(line: 142, column: 5, scope: !2632)
!2723 = !DILocation(line: 110, column: 21, scope: !2632)
!2724 = !DILocation(line: 110, column: 25, scope: !2632)
!2725 = !DILocation(line: 143, column: 5, scope: !2632)
!2726 = !DILocation(line: 144, column: 5, scope: !2632)
!2727 = !DILocation(line: 147, column: 5, scope: !2632)
!2728 = !DILocation(line: 109, column: 14, scope: !2632)
!2729 = !DILocation(line: 148, column: 5, scope: !2632)
!2730 = !DILocation(line: 151, column: 1, scope: !2632)
!2731 = !DILocation(line: 150, column: 5, scope: !2632)
!2732 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature", scope: !39, file: !39, line: 153, type: !2733, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2738)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!25, !2635, !2735, !2736, !44, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2739 = !DILocalVariable(name: "sig", arg: 1, scope: !2732, file: !39, line: 154, type: !2635)
!2740 = !DILocalVariable(name: "siglen", arg: 2, scope: !2732, file: !39, line: 154, type: !2735)
!2741 = !DILocalVariable(name: "m", arg: 3, scope: !2732, file: !39, line: 155, type: !2736)
!2742 = !DILocalVariable(name: "mlen", arg: 4, scope: !2732, file: !39, line: 155, type: !44)
!2743 = !DILocalVariable(name: "sk", arg: 5, scope: !2732, file: !39, line: 155, type: !2736)
!2744 = !DILocalVariable(name: "i", scope: !2732, file: !39, line: 156, type: !8)
!2745 = !DILocalVariable(name: "n", scope: !2732, file: !39, line: 157, type: !16)
!2746 = !DILocalVariable(name: "seedbuf", scope: !2732, file: !39, line: 158, type: !2747)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1664, elements: !2748)
!2748 = !{!2749}
!2749 = !DISubrange(count: 208)
!2750 = !DILocalVariable(name: "rho", scope: !2732, file: !39, line: 159, type: !198)
!2751 = !DILocalVariable(name: "tr", scope: !2732, file: !39, line: 159, type: !198)
!2752 = !DILocalVariable(name: "key", scope: !2732, file: !39, line: 159, type: !198)
!2753 = !DILocalVariable(name: "mu", scope: !2732, file: !39, line: 159, type: !198)
!2754 = !DILocalVariable(name: "rhoprime", scope: !2732, file: !39, line: 159, type: !198)
!2755 = !DILocalVariable(name: "nonce", scope: !2732, file: !39, line: 160, type: !41)
!2756 = !DILocalVariable(name: "c", scope: !2732, file: !39, line: 161, type: !2483)
!2757 = !DILocalVariable(name: "chat", scope: !2732, file: !39, line: 161, type: !2483)
!2758 = !DILocalVariable(name: "mat", scope: !2732, file: !39, line: 162, type: !2653)
!2759 = !DILocalVariable(name: "s1", scope: !2732, file: !39, line: 162, type: !2478)
!2760 = !DILocalVariable(name: "y", scope: !2732, file: !39, line: 162, type: !2478)
!2761 = !DILocalVariable(name: "yhat", scope: !2732, file: !39, line: 162, type: !2478)
!2762 = !DILocalVariable(name: "z", scope: !2732, file: !39, line: 162, type: !2478)
!2763 = !DILocalVariable(name: "t0", scope: !2732, file: !39, line: 163, type: !2524)
!2764 = !DILocalVariable(name: "s2", scope: !2732, file: !39, line: 163, type: !2524)
!2765 = !DILocalVariable(name: "w", scope: !2732, file: !39, line: 163, type: !2524)
!2766 = !DILocalVariable(name: "w1", scope: !2732, file: !39, line: 163, type: !2524)
!2767 = !DILocalVariable(name: "w0", scope: !2732, file: !39, line: 163, type: !2524)
!2768 = !DILocalVariable(name: "h", scope: !2732, file: !39, line: 164, type: !2524)
!2769 = !DILocalVariable(name: "cs2", scope: !2732, file: !39, line: 164, type: !2524)
!2770 = !DILocalVariable(name: "ct0", scope: !2732, file: !39, line: 164, type: !2524)
!2771 = !DILocalVariable(name: "state", scope: !2732, file: !39, line: 176, type: !2772)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !1072, line: 27, baseType: !2773)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 25, size: 1664, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2773, file: !1072, line: 26, baseType: !2776, size: 1664)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !2777)
!2777 = !{!2778}
!2778 = !DISubrange(count: 26)
!2779 = !DILocation(line: 154, column: 14, scope: !2732)
!2780 = !DILocation(line: 154, column: 27, scope: !2732)
!2781 = !DILocation(line: 155, column: 20, scope: !2732)
!2782 = !DILocation(line: 155, column: 30, scope: !2732)
!2783 = !DILocation(line: 155, column: 51, scope: !2732)
!2784 = !DILocation(line: 158, column: 5, scope: !2732)
!2785 = !DILocation(line: 158, column: 19, scope: !2732)
!2786 = !DILocation(line: 160, column: 14, scope: !2732)
!2787 = !DILocation(line: 161, column: 5, scope: !2732)
!2788 = !DILocation(line: 162, column: 5, scope: !2732)
!2789 = !DILocation(line: 162, column: 14, scope: !2732)
!2790 = !DILocation(line: 163, column: 5, scope: !2732)
!2791 = !DILocation(line: 164, column: 5, scope: !2732)
!2792 = !DILocation(line: 159, column: 20, scope: !2732)
!2793 = !DILocation(line: 167, column: 14, scope: !2732)
!2794 = !DILocation(line: 159, column: 26, scope: !2732)
!2795 = !DILocation(line: 168, column: 14, scope: !2732)
!2796 = !DILocation(line: 159, column: 31, scope: !2732)
!2797 = !DILocation(line: 169, column: 14, scope: !2732)
!2798 = !DILocation(line: 159, column: 37, scope: !2732)
!2799 = !DILocation(line: 170, column: 19, scope: !2732)
!2800 = !DILocation(line: 159, column: 42, scope: !2732)
!2801 = !DILocation(line: 162, column: 22, scope: !2732)
!2802 = !DILocation(line: 163, column: 14, scope: !2732)
!2803 = !DILocation(line: 163, column: 18, scope: !2732)
!2804 = !DILocation(line: 171, column: 5, scope: !2732)
!2805 = !DILocation(line: 176, column: 5, scope: !2732)
!2806 = !DILocation(line: 176, column: 20, scope: !2732)
!2807 = !DILocation(line: 177, column: 5, scope: !2732)
!2808 = !DILocation(line: 178, column: 5, scope: !2732)
!2809 = !DILocation(line: 179, column: 5, scope: !2732)
!2810 = !DILocation(line: 180, column: 5, scope: !2732)
!2811 = !DILocation(line: 181, column: 5, scope: !2732)
!2812 = !DILocation(line: 183, column: 5, scope: !2732)
!2813 = !DILocation(line: 186, column: 41, scope: !2732)
!2814 = !DILocation(line: 186, column: 5, scope: !2732)
!2815 = !DILocation(line: 187, column: 5, scope: !2732)
!2816 = !DILocation(line: 188, column: 5, scope: !2732)
!2817 = !DILocation(line: 189, column: 5, scope: !2732)
!2818 = !DILocation(line: 156, column: 24, scope: !2732)
!2819 = !DILocation(line: 194, column: 57, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !39, line: 193, column: 29)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !39, line: 193, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 193, column: 5)
!2823 = !DILocation(line: 194, column: 82, scope: !2820)
!2824 = !DILocation(line: 194, column: 9, scope: !2820)
!2825 = !DILocation(line: 193, column: 24, scope: !2821)
!2826 = !DILocation(line: 193, column: 19, scope: !2821)
!2827 = !DILocation(line: 193, column: 5, scope: !2822)
!2828 = distinct !{!2828, !2827, !2829}
!2829 = !DILocation(line: 195, column: 5, scope: !2822)
!2830 = !DILocation(line: 198, column: 12, scope: !2732)
!2831 = !DILocation(line: 162, column: 29, scope: !2732)
!2832 = !DILocation(line: 199, column: 5, scope: !2732)
!2833 = !DILocation(line: 200, column: 5, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 200, column: 5)
!2835 = !DILocation(line: 201, column: 72, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !39, line: 200, column: 29)
!2837 = distinct !DILexicalBlock(scope: !2834, file: !39, line: 200, column: 5)
!2838 = !DILocation(line: 201, column: 83, scope: !2836)
!2839 = !DILocation(line: 201, column: 9, scope: !2836)
!2840 = !DILocation(line: 202, column: 9, scope: !2836)
!2841 = !DILocation(line: 203, column: 9, scope: !2836)
!2842 = !DILocation(line: 200, column: 24, scope: !2837)
!2843 = !DILocation(line: 200, column: 19, scope: !2837)
!2844 = distinct !{!2844, !2833, !2845}
!2845 = !DILocation(line: 204, column: 5, scope: !2834)
!2846 = !DILocation(line: 163, column: 22, scope: !2732)
!2847 = !DILocation(line: 207, column: 5, scope: !2732)
!2848 = !DILocation(line: 163, column: 25, scope: !2732)
!2849 = !DILocation(line: 163, column: 29, scope: !2732)
!2850 = !DILocation(line: 208, column: 5, scope: !2732)
!2851 = !DILocation(line: 161, column: 10, scope: !2732)
!2852 = !DILocation(line: 209, column: 5, scope: !2732)
!2853 = !DILocation(line: 210, column: 12, scope: !2732)
!2854 = !{i64 0, i64 1024, !231}
!2855 = !DILocation(line: 161, column: 13, scope: !2732)
!2856 = !DILocation(line: 211, column: 5, scope: !2732)
!2857 = !DILocation(line: 215, column: 5, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 215, column: 5)
!2859 = !DILocation(line: 216, column: 64, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !39, line: 215, column: 29)
!2861 = distinct !DILexicalBlock(scope: !2858, file: !39, line: 215, column: 5)
!2862 = !DILocation(line: 216, column: 84, scope: !2860)
!2863 = !DILocation(line: 216, column: 9, scope: !2860)
!2864 = !DILocation(line: 217, column: 9, scope: !2860)
!2865 = !DILocation(line: 215, column: 24, scope: !2861)
!2866 = !DILocation(line: 215, column: 19, scope: !2861)
!2867 = distinct !{!2867, !2857, !2868}
!2868 = !DILocation(line: 218, column: 5, scope: !2858)
!2869 = !DILocation(line: 164, column: 17, scope: !2732)
!2870 = !DILocation(line: 219, column: 5, scope: !2732)
!2871 = !DILocation(line: 220, column: 5, scope: !2732)
!2872 = !DILocation(line: 221, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 221, column: 9)
!2874 = !DILocation(line: 221, column: 9, scope: !2732)
!2875 = !DILocation(line: 227, column: 64, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !39, line: 226, column: 29)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !39, line: 226, column: 5)
!2878 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 226, column: 5)
!2879 = !DILocation(line: 227, column: 82, scope: !2876)
!2880 = !DILocation(line: 227, column: 9, scope: !2876)
!2881 = !DILocation(line: 228, column: 9, scope: !2876)
!2882 = !DILocation(line: 226, column: 24, scope: !2877)
!2883 = !DILocation(line: 226, column: 19, scope: !2877)
!2884 = !DILocation(line: 226, column: 5, scope: !2878)
!2885 = distinct !{!2885, !2884, !2886}
!2886 = !DILocation(line: 229, column: 5, scope: !2878)
!2887 = !DILocation(line: 162, column: 26, scope: !2732)
!2888 = !DILocation(line: 162, column: 35, scope: !2732)
!2889 = !DILocation(line: 230, column: 5, scope: !2732)
!2890 = !DILocation(line: 231, column: 5, scope: !2732)
!2891 = !DILocation(line: 232, column: 9, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 232, column: 9)
!2893 = !DILocation(line: 232, column: 9, scope: !2732)
!2894 = !DILocation(line: 238, column: 64, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !39, line: 237, column: 29)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !39, line: 237, column: 5)
!2897 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 237, column: 5)
!2898 = !DILocation(line: 238, column: 84, scope: !2895)
!2899 = !DILocation(line: 238, column: 9, scope: !2895)
!2900 = !DILocation(line: 239, column: 9, scope: !2895)
!2901 = !DILocation(line: 237, column: 24, scope: !2896)
!2902 = !DILocation(line: 237, column: 19, scope: !2896)
!2903 = !DILocation(line: 237, column: 5, scope: !2897)
!2904 = distinct !{!2904, !2903, !2905}
!2905 = !DILocation(line: 240, column: 5, scope: !2897)
!2906 = !DILocation(line: 164, column: 22, scope: !2732)
!2907 = !DILocation(line: 242, column: 5, scope: !2732)
!2908 = !DILocation(line: 243, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 243, column: 9)
!2910 = !DILocation(line: 243, column: 9, scope: !2732)
!2911 = !DILocation(line: 247, column: 5, scope: !2732)
!2912 = !DILocation(line: 248, column: 5, scope: !2732)
!2913 = !DILocation(line: 164, column: 14, scope: !2732)
!2914 = !DILocation(line: 249, column: 9, scope: !2732)
!2915 = !DILocation(line: 157, column: 18, scope: !2732)
!2916 = !DILocation(line: 250, column: 11, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2732, file: !39, line: 250, column: 9)
!2918 = !DILocation(line: 250, column: 9, scope: !2732)
!2919 = !DILocation(line: 255, column: 5, scope: !2732)
!2920 = !DILocation(line: 257, column: 13, scope: !2732)
!2921 = !{!2922, !2922, i64 0}
!2922 = !{!"long", !90, i64 0}
!2923 = !DILocation(line: 259, column: 1, scope: !2732)
!2924 = !DILocation(line: 258, column: 5, scope: !2732)
!2925 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify", scope: !39, file: !39, line: 261, type: !2926, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!25, !2736, !44, !2736, !44, !2736}
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2929 = !DILocalVariable(name: "sig", arg: 1, scope: !2925, file: !39, line: 262, type: !2736)
!2930 = !DILocalVariable(name: "siglen", arg: 2, scope: !2925, file: !39, line: 262, type: !44)
!2931 = !DILocalVariable(name: "m", arg: 3, scope: !2925, file: !39, line: 263, type: !2736)
!2932 = !DILocalVariable(name: "mlen", arg: 4, scope: !2925, file: !39, line: 263, type: !44)
!2933 = !DILocalVariable(name: "pk", arg: 5, scope: !2925, file: !39, line: 263, type: !2736)
!2934 = !DILocalVariable(name: "i", scope: !2925, file: !39, line: 264, type: !8)
!2935 = !DILocalVariable(name: "rho", scope: !2925, file: !39, line: 265, type: !2936)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !2937)
!2937 = !{!2938}
!2938 = !DISubrange(count: 32)
!2939 = !DILocalVariable(name: "mu", scope: !2925, file: !39, line: 266, type: !2645)
!2940 = !DILocalVariable(name: "c", scope: !2925, file: !39, line: 267, type: !2483)
!2941 = !DILocalVariable(name: "chat", scope: !2925, file: !39, line: 267, type: !2483)
!2942 = !DILocalVariable(name: "cp", scope: !2925, file: !39, line: 267, type: !2483)
!2943 = !DILocalVariable(name: "mat", scope: !2925, file: !39, line: 268, type: !2653)
!2944 = !DILocalVariable(name: "z", scope: !2925, file: !39, line: 268, type: !2478)
!2945 = !DILocalVariable(name: "t1", scope: !2925, file: !39, line: 269, type: !2524)
!2946 = !DILocalVariable(name: "w1", scope: !2925, file: !39, line: 269, type: !2524)
!2947 = !DILocalVariable(name: "h", scope: !2925, file: !39, line: 269, type: !2524)
!2948 = !DILocalVariable(name: "tmp1", scope: !2925, file: !39, line: 269, type: !2524)
!2949 = !DILocalVariable(name: "tmp2", scope: !2925, file: !39, line: 269, type: !2524)
!2950 = !DILocalVariable(name: "state", scope: !2925, file: !39, line: 286, type: !2772)
!2951 = !DILocation(line: 262, column: 20, scope: !2925)
!2952 = !DILocation(line: 262, column: 32, scope: !2925)
!2953 = !DILocation(line: 263, column: 20, scope: !2925)
!2954 = !DILocation(line: 263, column: 30, scope: !2925)
!2955 = !DILocation(line: 263, column: 51, scope: !2925)
!2956 = !DILocation(line: 265, column: 5, scope: !2925)
!2957 = !DILocation(line: 265, column: 19, scope: !2925)
!2958 = !DILocation(line: 266, column: 5, scope: !2925)
!2959 = !DILocation(line: 266, column: 19, scope: !2925)
!2960 = !DILocation(line: 267, column: 5, scope: !2925)
!2961 = !DILocation(line: 268, column: 5, scope: !2925)
!2962 = !DILocation(line: 268, column: 14, scope: !2925)
!2963 = !DILocation(line: 269, column: 5, scope: !2925)
!2964 = !DILocation(line: 271, column: 16, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2925, file: !39, line: 271, column: 9)
!2966 = !DILocation(line: 271, column: 9, scope: !2925)
!2967 = !DILocation(line: 269, column: 14, scope: !2925)
!2968 = !DILocation(line: 275, column: 5, scope: !2925)
!2969 = !DILocation(line: 267, column: 10, scope: !2925)
!2970 = !DILocation(line: 268, column: 22, scope: !2925)
!2971 = !DILocation(line: 269, column: 22, scope: !2925)
!2972 = !DILocation(line: 276, column: 9, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2925, file: !39, line: 276, column: 9)
!2974 = !DILocation(line: 276, column: 9, scope: !2925)
!2975 = !DILocation(line: 279, column: 9, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2925, file: !39, line: 279, column: 9)
!2977 = !DILocation(line: 279, column: 9, scope: !2925)
!2978 = !DILocation(line: 284, column: 5, scope: !2925)
!2979 = !DILocation(line: 286, column: 5, scope: !2925)
!2980 = !DILocation(line: 286, column: 20, scope: !2925)
!2981 = !DILocation(line: 287, column: 5, scope: !2925)
!2982 = !DILocation(line: 288, column: 5, scope: !2925)
!2983 = !DILocation(line: 289, column: 5, scope: !2925)
!2984 = !DILocation(line: 290, column: 5, scope: !2925)
!2985 = !DILocation(line: 291, column: 5, scope: !2925)
!2986 = !DILocation(line: 294, column: 41, scope: !2925)
!2987 = !DILocation(line: 294, column: 5, scope: !2925)
!2988 = !DILocation(line: 296, column: 5, scope: !2925)
!2989 = !DILocation(line: 264, column: 24, scope: !2925)
!2990 = !DILocation(line: 297, column: 5, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2925, file: !39, line: 297, column: 5)
!2992 = !DILocation(line: 298, column: 72, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !39, line: 297, column: 30)
!2994 = distinct !DILexicalBlock(scope: !2991, file: !39, line: 297, column: 5)
!2995 = !DILocation(line: 298, column: 86, scope: !2993)
!2996 = !DILocation(line: 298, column: 9, scope: !2993)
!2997 = !DILocation(line: 297, column: 25, scope: !2994)
!2998 = !DILocation(line: 297, column: 19, scope: !2994)
!2999 = distinct !{!2999, !2990, !3000}
!3000 = !DILocation(line: 299, column: 5, scope: !2991)
!3001 = !DILocation(line: 301, column: 12, scope: !2925)
!3002 = !DILocation(line: 267, column: 13, scope: !2925)
!3003 = !DILocation(line: 302, column: 5, scope: !2925)
!3004 = !DILocation(line: 303, column: 5, scope: !2925)
!3005 = !DILocation(line: 304, column: 5, scope: !2925)
!3006 = !DILocation(line: 305, column: 5, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2925, file: !39, line: 305, column: 5)
!3008 = !DILocation(line: 306, column: 64, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !39, line: 305, column: 29)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !39, line: 305, column: 5)
!3011 = !DILocation(line: 306, column: 85, scope: !3009)
!3012 = !DILocation(line: 306, column: 9, scope: !3009)
!3013 = !DILocation(line: 305, column: 24, scope: !3010)
!3014 = !DILocation(line: 305, column: 19, scope: !3010)
!3015 = distinct !{!3015, !3006, !3016}
!3016 = !DILocation(line: 307, column: 5, scope: !3007)
!3017 = !DILocation(line: 269, column: 25, scope: !2925)
!3018 = !DILocation(line: 269, column: 31, scope: !2925)
!3019 = !DILocation(line: 309, column: 5, scope: !2925)
!3020 = !DILocation(line: 310, column: 5, scope: !2925)
!3021 = !DILocation(line: 311, column: 5, scope: !2925)
!3022 = !DILocation(line: 314, column: 5, scope: !2925)
!3023 = !DILocation(line: 269, column: 18, scope: !2925)
!3024 = !DILocation(line: 315, column: 5, scope: !2925)
!3025 = !DILocation(line: 267, column: 19, scope: !2925)
!3026 = !DILocation(line: 318, column: 5, scope: !2925)
!3027 = !DILocation(line: 319, column: 5, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2925, file: !39, line: 319, column: 5)
!3029 = !DILocation(line: 319, column: 19, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3028, file: !39, line: 319, column: 5)
!3031 = distinct !{!3031, !3027, !3032}
!3032 = !DILocation(line: 323, column: 5, scope: !3028)
!3033 = !DILocation(line: 320, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !39, line: 320, column: 13)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !39, line: 319, column: 29)
!3036 = !DILocation(line: 320, column: 28, scope: !3034)
!3037 = !DILocation(line: 320, column: 25, scope: !3034)
!3038 = !DILocation(line: 319, column: 24, scope: !3030)
!3039 = !DILocation(line: 320, column: 13, scope: !3035)
!3040 = !DILocation(line: 0, scope: !2925)
!3041 = !DILocation(line: 327, column: 1, scope: !2925)
!3042 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_crypto_sign", scope: !39, file: !39, line: 344, type: !2733, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !3043)
!3043 = !{!3044, !3045, !3046, !3047, !3048, !3049, !3050}
!3044 = !DILocalVariable(name: "sm", arg: 1, scope: !3042, file: !39, line: 344, type: !2635)
!3045 = !DILocalVariable(name: "smlen", arg: 2, scope: !3042, file: !39, line: 345, type: !2735)
!3046 = !DILocalVariable(name: "m", arg: 3, scope: !3042, file: !39, line: 346, type: !2736)
!3047 = !DILocalVariable(name: "mlen", arg: 4, scope: !3042, file: !39, line: 347, type: !44)
!3048 = !DILocalVariable(name: "sk", arg: 5, scope: !3042, file: !39, line: 348, type: !2736)
!3049 = !DILocalVariable(name: "i", scope: !3042, file: !39, line: 349, type: !44)
!3050 = !DILocalVariable(name: "rc", scope: !3042, file: !39, line: 350, type: !25)
!3051 = !DILocation(line: 344, column: 51, scope: !3042)
!3052 = !DILocation(line: 345, column: 17, scope: !3042)
!3053 = !DILocation(line: 346, column: 24, scope: !3042)
!3054 = !DILocation(line: 347, column: 16, scope: !3042)
!3055 = !DILocation(line: 348, column: 24, scope: !3042)
!3056 = !DILocation(line: 349, column: 12, scope: !3042)
!3057 = !DILocation(line: 351, column: 19, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !39, line: 351, column: 5)
!3059 = distinct !DILexicalBlock(scope: !3042, file: !39, line: 351, column: 5)
!3060 = !DILocation(line: 351, column: 5, scope: !3059)
!3061 = !DILocation(line: 352, column: 32, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !39, line: 351, column: 32)
!3063 = !DILocation(line: 352, column: 25, scope: !3062)
!3064 = !DILocation(line: 352, column: 9, scope: !3062)
!3065 = !DILocation(line: 352, column: 30, scope: !3062)
!3066 = !DILocation(line: 351, column: 28, scope: !3058)
!3067 = distinct !{!3067, !3060, !3068}
!3068 = !DILocation(line: 353, column: 5, scope: !3059)
!3069 = !DILocation(line: 354, column: 10, scope: !3042)
!3070 = !DILocation(line: 350, column: 9, scope: !3042)
!3071 = !DILocation(line: 355, column: 12, scope: !3042)
!3072 = !DILocation(line: 356, column: 5, scope: !3042)
!3073 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_open", scope: !39, file: !39, line: 374, type: !2733, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080}
!3075 = !DILocalVariable(name: "m", arg: 1, scope: !3073, file: !39, line: 374, type: !2635)
!3076 = !DILocalVariable(name: "mlen", arg: 2, scope: !3073, file: !39, line: 375, type: !2735)
!3077 = !DILocalVariable(name: "sm", arg: 3, scope: !3073, file: !39, line: 376, type: !2736)
!3078 = !DILocalVariable(name: "smlen", arg: 4, scope: !3073, file: !39, line: 377, type: !44)
!3079 = !DILocalVariable(name: "pk", arg: 5, scope: !3073, file: !39, line: 378, type: !2736)
!3080 = !DILocalVariable(name: "i", scope: !3073, file: !39, line: 379, type: !44)
!3081 = !DILocation(line: 374, column: 56, scope: !3073)
!3082 = !DILocation(line: 375, column: 17, scope: !3073)
!3083 = !DILocation(line: 376, column: 24, scope: !3073)
!3084 = !DILocation(line: 377, column: 16, scope: !3073)
!3085 = !DILocation(line: 378, column: 24, scope: !3073)
!3086 = !DILocation(line: 380, column: 15, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3073, file: !39, line: 380, column: 9)
!3088 = !DILocation(line: 380, column: 9, scope: !3073)
!3089 = !DILocation(line: 383, column: 19, scope: !3073)
!3090 = !DILocation(line: 383, column: 11, scope: !3073)
!3091 = !DILocation(line: 386, column: 16, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3073, file: !39, line: 385, column: 9)
!3093 = !DILocation(line: 385, column: 9, scope: !3092)
!3094 = !DILocation(line: 385, column: 9, scope: !3073)
!3095 = !DILocation(line: 398, column: 11, scope: !3073)
!3096 = !DILocation(line: 379, column: 12, scope: !3073)
!3097 = !DILocation(line: 399, column: 5, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3073, file: !39, line: 399, column: 5)
!3099 = !DILocation(line: 390, column: 25, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !39, line: 390, column: 9)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !39, line: 390, column: 9)
!3102 = distinct !DILexicalBlock(scope: !3092, file: !39, line: 388, column: 12)
!3103 = !DILocation(line: 390, column: 23, scope: !3100)
!3104 = !DILocation(line: 390, column: 9, scope: !3101)
!3105 = !DILocation(line: 391, column: 36, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !39, line: 390, column: 37)
!3107 = !DILocation(line: 391, column: 20, scope: !3106)
!3108 = !DILocation(line: 391, column: 13, scope: !3106)
!3109 = !DILocation(line: 391, column: 18, scope: !3106)
!3110 = !DILocation(line: 390, column: 32, scope: !3100)
!3111 = distinct !{!3111, !3104, !3112}
!3112 = !DILocation(line: 392, column: 9, scope: !3101)
!3113 = !DILocation(line: 399, column: 19, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3098, file: !39, line: 399, column: 5)
!3115 = !DILocation(line: 400, column: 14, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3114, file: !39, line: 399, column: 33)
!3117 = !DILocation(line: 404, column: 1, scope: !3073)
!3118 = !DILocation(line: 0, scope: !3073)
!3119 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init", scope: !48, file: !48, line: 4, type: !3120, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !3127)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !3122, !199, !41}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !1072, line: 22, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 20, size: 1600, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3124, file: !1072, line: 21, baseType: !1076, size: 1600)
!3127 = !{!3128, !3129, !3130, !3131, !3132}
!3128 = !DILocalVariable(name: "state", arg: 1, scope: !3119, file: !48, line: 4, type: !3122)
!3129 = !DILocalVariable(name: "seed", arg: 2, scope: !3119, file: !48, line: 5, type: !199)
!3130 = !DILocalVariable(name: "nonce", arg: 3, scope: !3119, file: !48, line: 6, type: !41)
!3131 = !DILocalVariable(name: "i", scope: !3119, file: !48, line: 7, type: !16)
!3132 = !DILocalVariable(name: "buf", scope: !3119, file: !48, line: 8, type: !3133)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 272, elements: !3134)
!3134 = !{!3135}
!3135 = !DISubrange(count: 34)
!3136 = !DILocation(line: 4, column: 65, scope: !3119)
!3137 = !DILocation(line: 5, column: 29, scope: !3119)
!3138 = !DILocation(line: 6, column: 18, scope: !3119)
!3139 = !DILocation(line: 8, column: 5, scope: !3119)
!3140 = !DILocation(line: 8, column: 19, scope: !3119)
!3141 = !DILocation(line: 7, column: 18, scope: !3119)
!3142 = !DILocation(line: 11, column: 16, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !48, line: 10, column: 37)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !48, line: 10, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3119, file: !48, line: 10, column: 5)
!3146 = !DILocation(line: 13, column: 22, scope: !3119)
!3147 = !DILocation(line: 13, column: 5, scope: !3119)
!3148 = !DILocation(line: 13, column: 20, scope: !3119)
!3149 = !DILocation(line: 14, column: 43, scope: !3119)
!3150 = !DILocation(line: 14, column: 26, scope: !3119)
!3151 = !DILocation(line: 14, column: 5, scope: !3119)
!3152 = !DILocation(line: 14, column: 24, scope: !3119)
!3153 = !DILocation(line: 16, column: 5, scope: !3119)
!3154 = !DILocation(line: 17, column: 1, scope: !3119)
!3155 = distinct !DISubprogram(name: "PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init", scope: !48, file: !48, line: 19, type: !3156, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !3163)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !3158, !199, !41}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !1072, line: 32, baseType: !3160)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 30, size: 1600, elements: !3161)
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3160, file: !1072, line: 31, baseType: !1076, size: 1600)
!3163 = !{!3164, !3165, !3166, !3167, !3168}
!3164 = !DILocalVariable(name: "state", arg: 1, scope: !3155, file: !48, line: 19, type: !3158)
!3165 = !DILocalVariable(name: "seed", arg: 2, scope: !3155, file: !48, line: 20, type: !199)
!3166 = !DILocalVariable(name: "nonce", arg: 3, scope: !3155, file: !48, line: 21, type: !41)
!3167 = !DILocalVariable(name: "i", scope: !3155, file: !48, line: 22, type: !16)
!3168 = !DILocalVariable(name: "buf", scope: !3155, file: !48, line: 23, type: !3169)
!3169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 400, elements: !3170)
!3170 = !{!3171}
!3171 = !DISubrange(count: 50)
!3172 = !DILocation(line: 19, column: 65, scope: !3155)
!3173 = !DILocation(line: 20, column: 29, scope: !3155)
!3174 = !DILocation(line: 21, column: 18, scope: !3155)
!3175 = !DILocation(line: 23, column: 5, scope: !3155)
!3176 = !DILocation(line: 23, column: 19, scope: !3155)
!3177 = !DILocation(line: 22, column: 18, scope: !3155)
!3178 = !DILocation(line: 26, column: 16, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !48, line: 25, column: 36)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !48, line: 25, column: 5)
!3181 = distinct !DILexicalBlock(scope: !3155, file: !48, line: 25, column: 5)
!3182 = !DILocation(line: 28, column: 21, scope: !3155)
!3183 = !DILocation(line: 28, column: 5, scope: !3155)
!3184 = !DILocation(line: 28, column: 19, scope: !3155)
!3185 = !DILocation(line: 29, column: 42, scope: !3155)
!3186 = !DILocation(line: 29, column: 25, scope: !3155)
!3187 = !DILocation(line: 29, column: 5, scope: !3155)
!3188 = !DILocation(line: 29, column: 23, scope: !3155)
!3189 = !DILocation(line: 31, column: 5, scope: !3155)
!3190 = !DILocation(line: 32, column: 1, scope: !3155)
