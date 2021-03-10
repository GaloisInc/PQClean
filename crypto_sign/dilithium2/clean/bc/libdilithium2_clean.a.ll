; ModuleID = 'libdilithium2_clean.a.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.16.0"

%struct.shake128incctx = type { [26 x i64] }
%struct.shake128ctx = type { [25 x i64] }
%struct.polyveck = type { [4 x %struct.poly] }
%struct.poly = type { [256 x i32] }
%struct.polyvecl = type { [3 x %struct.poly] }

@KeccakF_RoundConstants = internal constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 16
@zetas = internal constant [256 x i32] [i32 0, i32 25847, i32 5771523, i32 7861508, i32 237124, i32 7602457, i32 7504169, i32 466468, i32 1826347, i32 2353451, i32 8021166, i32 6288512, i32 3119733, i32 5495562, i32 3111497, i32 2680103, i32 2725464, i32 1024112, i32 7300517, i32 3585928, i32 7830929, i32 7260833, i32 2619752, i32 6271868, i32 6262231, i32 4520680, i32 6980856, i32 5102745, i32 1757237, i32 8360995, i32 4010497, i32 280005, i32 2706023, i32 95776, i32 3077325, i32 3530437, i32 6718724, i32 4788269, i32 5842901, i32 3915439, i32 4519302, i32 5336701, i32 3574422, i32 5512770, i32 3539968, i32 8079950, i32 2348700, i32 7841118, i32 6681150, i32 6736599, i32 3505694, i32 4558682, i32 3507263, i32 6239768, i32 6779997, i32 3699596, i32 811944, i32 531354, i32 954230, i32 3881043, i32 3900724, i32 5823537, i32 2071892, i32 5582638, i32 4450022, i32 6851714, i32 4702672, i32 5339162, i32 6927966, i32 3475950, i32 2176455, i32 6795196, i32 7122806, i32 1939314, i32 4296819, i32 7380215, i32 5190273, i32 5223087, i32 4747489, i32 126922, i32 3412210, i32 7396998, i32 2147896, i32 2715295, i32 5412772, i32 4686924, i32 7969390, i32 5903370, i32 7709315, i32 7151892, i32 8357436, i32 7072248, i32 7998430, i32 1349076, i32 1852771, i32 6949987, i32 5037034, i32 264944, i32 508951, i32 3097992, i32 44288, i32 7280319, i32 904516, i32 3958618, i32 4656075, i32 8371839, i32 1653064, i32 5130689, i32 2389356, i32 8169440, i32 759969, i32 7063561, i32 189548, i32 4827145, i32 3159746, i32 6529015, i32 5971092, i32 8202977, i32 1315589, i32 1341330, i32 1285669, i32 6795489, i32 7567685, i32 6940675, i32 5361315, i32 4499357, i32 4751448, i32 3839961, i32 2091667, i32 3407706, i32 2316500, i32 3817976, i32 5037939, i32 2244091, i32 5933984, i32 4817955, i32 266997, i32 2434439, i32 7144689, i32 3513181, i32 4860065, i32 4621053, i32 7183191, i32 5187039, i32 900702, i32 1859098, i32 909542, i32 819034, i32 495491, i32 6767243, i32 8337157, i32 7857917, i32 7725090, i32 5257975, i32 2031748, i32 3207046, i32 4823422, i32 7855319, i32 7611795, i32 4784579, i32 342297, i32 286988, i32 5942594, i32 4108315, i32 3437287, i32 5038140, i32 1735879, i32 203044, i32 2842341, i32 2691481, i32 5790267, i32 1265009, i32 4055324, i32 1247620, i32 2486353, i32 1595974, i32 4613401, i32 1250494, i32 2635921, i32 4832145, i32 5386378, i32 1869119, i32 1903435, i32 7329447, i32 7047359, i32 1237275, i32 5062207, i32 6950192, i32 7929317, i32 1312455, i32 3306115, i32 6417775, i32 7100756, i32 1917081, i32 5834105, i32 7005614, i32 1500165, i32 777191, i32 2235880, i32 3406031, i32 7838005, i32 5548557, i32 6709241, i32 6533464, i32 5796124, i32 4656147, i32 594136, i32 4603424, i32 6366809, i32 2432395, i32 2454455, i32 8215696, i32 1957272, i32 3369112, i32 185531, i32 7173032, i32 5196991, i32 162844, i32 1616392, i32 3014001, i32 810149, i32 1652634, i32 4686184, i32 6581310, i32 5341501, i32 3523897, i32 3866901, i32 269760, i32 2213111, i32 7404533, i32 1717735, i32 472078, i32 7953734, i32 1723600, i32 6577327, i32 1910376, i32 6712985, i32 7276084, i32 8119771, i32 4546524, i32 5441381, i32 6144432, i32 7959518, i32 6094090, i32 183443, i32 7403526, i32 1612842, i32 4834730, i32 7826001, i32 3919660, i32 8332111, i32 7018208, i32 3937738, i32 1400424, i32 7534263, i32 1976782], align 16
@zetas_inv = internal constant [256 x i32] [i32 6403635, i32 846154, i32 6979993, i32 4442679, i32 1362209, i32 48306, i32 4460757, i32 554416, i32 3545687, i32 6767575, i32 976891, i32 8196974, i32 2286327, i32 420899, i32 2235985, i32 2939036, i32 3833893, i32 260646, i32 1104333, i32 1667432, i32 6470041, i32 1803090, i32 6656817, i32 426683, i32 7908339, i32 6662682, i32 975884, i32 6167306, i32 8110657, i32 4513516, i32 4856520, i32 3038916, i32 1799107, i32 3694233, i32 6727783, i32 7570268, i32 5366416, i32 6764025, i32 8217573, i32 3183426, i32 1207385, i32 8194886, i32 5011305, i32 6423145, i32 164721, i32 5925962, i32 5948022, i32 2013608, i32 3776993, i32 7786281, i32 3724270, i32 2584293, i32 1846953, i32 1671176, i32 2831860, i32 542412, i32 4974386, i32 6144537, i32 7603226, i32 6880252, i32 1374803, i32 2546312, i32 6463336, i32 1279661, i32 1962642, i32 5074302, i32 7067962, i32 451100, i32 1430225, i32 3318210, i32 7143142, i32 1333058, i32 1050970, i32 6476982, i32 6511298, i32 2994039, i32 3548272, i32 5744496, i32 7129923, i32 3767016, i32 6784443, i32 5894064, i32 7132797, i32 4325093, i32 7115408, i32 2590150, i32 5688936, i32 5538076, i32 8177373, i32 6644538, i32 3342277, i32 4943130, i32 4272102, i32 2437823, i32 8093429, i32 8038120, i32 3595838, i32 768622, i32 525098, i32 3556995, i32 5173371, i32 6348669, i32 3122442, i32 655327, i32 522500, i32 43260, i32 1613174, i32 7884926, i32 7561383, i32 7470875, i32 6521319, i32 7479715, i32 3193378, i32 1197226, i32 3759364, i32 3520352, i32 4867236, i32 1235728, i32 5945978, i32 8113420, i32 3562462, i32 2446433, i32 6136326, i32 3342478, i32 4562441, i32 6063917, i32 4972711, i32 6288750, i32 4540456, i32 3628969, i32 3881060, i32 3019102, i32 1439742, i32 812732, i32 1584928, i32 7094748, i32 7039087, i32 7064828, i32 177440, i32 2409325, i32 1851402, i32 5220671, i32 3553272, i32 8190869, i32 1316856, i32 7620448, i32 210977, i32 5991061, i32 3249728, i32 6727353, i32 8578, i32 3724342, i32 4421799, i32 7475901, i32 1100098, i32 8336129, i32 5282425, i32 7871466, i32 8115473, i32 3343383, i32 1430430, i32 6527646, i32 7031341, i32 381987, i32 1308169, i32 22981, i32 1228525, i32 671102, i32 2477047, i32 411027, i32 3693493, i32 2967645, i32 5665122, i32 6232521, i32 983419, i32 4968207, i32 8253495, i32 3632928, i32 3157330, i32 3190144, i32 1000202, i32 4083598, i32 6441103, i32 1257611, i32 1585221, i32 6203962, i32 4904467, i32 1452451, i32 3041255, i32 3677745, i32 1528703, i32 3930395, i32 2797779, i32 6308525, i32 2556880, i32 4479693, i32 4499374, i32 7426187, i32 7849063, i32 7568473, i32 4680821, i32 1600420, i32 2140649, i32 4873154, i32 3821735, i32 4874723, i32 1643818, i32 1699267, i32 539299, i32 6031717, i32 300467, i32 4840449, i32 2867647, i32 4805995, i32 3043716, i32 3861115, i32 4464978, i32 2537516, i32 3592148, i32 1661693, i32 4849980, i32 5303092, i32 8284641, i32 5674394, i32 8100412, i32 4369920, i32 19422, i32 6623180, i32 3277672, i32 1399561, i32 3859737, i32 2118186, i32 2108549, i32 5760665, i32 1119584, i32 549488, i32 4794489, i32 1079900, i32 7356305, i32 5654953, i32 5700314, i32 5268920, i32 2884855, i32 5260684, i32 2091905, i32 359251, i32 6026966, i32 6554070, i32 7913949, i32 876248, i32 777960, i32 8143293, i32 518909, i32 2608894, i32 8354570, i32 0], align 16

; Function Attrs: nounwind ssp uwtable
define void @shake128_inc_init(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_init(i64* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @keccak_inc_init(i64*) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

; <label>:4:                                      ; preds = %11, %1
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 25
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %4
  %8 = load i64, i64* %3, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 %8
  store i64 0, i64* %10, align 8
  br label %11

; <label>:11:                                     ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %3, align 8
  br label %4

; <label>:14:                                     ; preds = %4
  %15 = load i64*, i64** %2, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 25
  store i64 0, i64* %16, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake128_inc_absorb(%struct.shake128incctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_inc_absorb(i64* %9, i32 168, i8* %10, i64 %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @keccak_inc_absorb(i64*, i32, i8*, i64) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %10

; <label>:10:                                     ; preds = %57, %4
  %11 = load i64, i64* %8, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 25
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %11, %14
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %77

; <label>:19:                                     ; preds = %10
  store i64 0, i64* %9, align 8
  br label %20

; <label>:20:                                     ; preds = %54, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 25
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub i32 %22, %26
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %57

; <label>:30:                                     ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 25
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = and i64 %40, 7
  %42 = mul i64 8, %41
  %43 = shl i64 %35, %42
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 25
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  %49 = lshr i64 %48, 3
  %50 = load i64*, i64** %5, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 %49
  %52 = load i64, i64* %51, align 8
  %53 = xor i64 %52, %43
  store i64 %53, i64* %51, align 8
  br label %54

; <label>:54:                                     ; preds = %30
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %20

; <label>:57:                                     ; preds = %20
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 25
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64*, i64** %5, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 25
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %67, %70
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %7, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 25
  store i64 0, i64* %75, align 8
  %76 = load i64*, i64** %5, align 8
  call void @KeccakF1600_StatePermute(i64* %76)
  br label %10

; <label>:77:                                     ; preds = %10
  store i64 0, i64* %9, align 8
  br label %78

; <label>:78:                                     ; preds = %106, %77
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %109

; <label>:82:                                     ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = load i64*, i64** %5, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 25
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %90, %91
  %93 = and i64 %92, 7
  %94 = mul i64 8, %93
  %95 = shl i64 %87, %94
  %96 = load i64*, i64** %5, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 25
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %98, %99
  %101 = lshr i64 %100, 3
  %102 = load i64*, i64** %5, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  %104 = load i64, i64* %103, align 8
  %105 = xor i64 %104, %95
  store i64 %105, i64* %103, align 8
  br label %106

; <label>:106:                                    ; preds = %82
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %9, align 8
  br label %78

; <label>:109:                                    ; preds = %78
  %110 = load i64, i64* %8, align 8
  %111 = load i64*, i64** %5, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 25
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %110
  store i64 %114, i64* %112, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @KeccakF1600_StatePermute(i64*) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %64 = load i64*, i64** %2, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %4, align 8
  %67 = load i64*, i64** %2, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %5, align 8
  %70 = load i64*, i64** %2, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load i64*, i64** %2, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %7, align 8
  %76 = load i64*, i64** %2, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 4
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %8, align 8
  %79 = load i64*, i64** %2, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 5
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  %82 = load i64*, i64** %2, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 6
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i64*, i64** %2, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 7
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  %88 = load i64*, i64** %2, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 8
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %12, align 8
  %91 = load i64*, i64** %2, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 9
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  %94 = load i64*, i64** %2, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 10
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  %97 = load i64*, i64** %2, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 11
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %15, align 8
  %100 = load i64*, i64** %2, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 12
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %16, align 8
  %103 = load i64*, i64** %2, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 13
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %17, align 8
  %106 = load i64*, i64** %2, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 14
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %18, align 8
  %109 = load i64*, i64** %2, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 15
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %19, align 8
  %112 = load i64*, i64** %2, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 16
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %20, align 8
  %115 = load i64*, i64** %2, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 17
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %21, align 8
  %118 = load i64*, i64** %2, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 18
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %22, align 8
  %121 = load i64*, i64** %2, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 19
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %23, align 8
  %124 = load i64*, i64** %2, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 20
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %24, align 8
  %127 = load i64*, i64** %2, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 21
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %25, align 8
  %130 = load i64*, i64** %2, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 22
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %26, align 8
  %133 = load i64*, i64** %2, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 23
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %27, align 8
  %136 = load i64*, i64** %2, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 24
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %139

; <label>:139:                                    ; preds = %1008, %1
  %140 = load i32, i32* %3, align 4
  %141 = icmp slt i32 %140, 24
  br i1 %141, label %142, label %1011

; <label>:142:                                    ; preds = %139
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* %9, align 8
  %145 = xor i64 %143, %144
  %146 = load i64, i64* %14, align 8
  %147 = xor i64 %145, %146
  %148 = load i64, i64* %19, align 8
  %149 = xor i64 %147, %148
  %150 = load i64, i64* %24, align 8
  %151 = xor i64 %149, %150
  store i64 %151, i64* %29, align 8
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* %10, align 8
  %154 = xor i64 %152, %153
  %155 = load i64, i64* %15, align 8
  %156 = xor i64 %154, %155
  %157 = load i64, i64* %20, align 8
  %158 = xor i64 %156, %157
  %159 = load i64, i64* %25, align 8
  %160 = xor i64 %158, %159
  store i64 %160, i64* %30, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %11, align 8
  %163 = xor i64 %161, %162
  %164 = load i64, i64* %16, align 8
  %165 = xor i64 %163, %164
  %166 = load i64, i64* %21, align 8
  %167 = xor i64 %165, %166
  %168 = load i64, i64* %26, align 8
  %169 = xor i64 %167, %168
  store i64 %169, i64* %31, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* %12, align 8
  %172 = xor i64 %170, %171
  %173 = load i64, i64* %17, align 8
  %174 = xor i64 %172, %173
  %175 = load i64, i64* %22, align 8
  %176 = xor i64 %174, %175
  %177 = load i64, i64* %27, align 8
  %178 = xor i64 %176, %177
  store i64 %178, i64* %32, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %13, align 8
  %181 = xor i64 %179, %180
  %182 = load i64, i64* %18, align 8
  %183 = xor i64 %181, %182
  %184 = load i64, i64* %23, align 8
  %185 = xor i64 %183, %184
  %186 = load i64, i64* %28, align 8
  %187 = xor i64 %185, %186
  store i64 %187, i64* %33, align 8
  %188 = load i64, i64* %33, align 8
  %189 = load i64, i64* %30, align 8
  %190 = shl i64 %189, 1
  %191 = load i64, i64* %30, align 8
  %192 = lshr i64 %191, 63
  %193 = xor i64 %190, %192
  %194 = xor i64 %188, %193
  store i64 %194, i64* %34, align 8
  %195 = load i64, i64* %29, align 8
  %196 = load i64, i64* %31, align 8
  %197 = shl i64 %196, 1
  %198 = load i64, i64* %31, align 8
  %199 = lshr i64 %198, 63
  %200 = xor i64 %197, %199
  %201 = xor i64 %195, %200
  store i64 %201, i64* %35, align 8
  %202 = load i64, i64* %30, align 8
  %203 = load i64, i64* %32, align 8
  %204 = shl i64 %203, 1
  %205 = load i64, i64* %32, align 8
  %206 = lshr i64 %205, 63
  %207 = xor i64 %204, %206
  %208 = xor i64 %202, %207
  store i64 %208, i64* %36, align 8
  %209 = load i64, i64* %31, align 8
  %210 = load i64, i64* %33, align 8
  %211 = shl i64 %210, 1
  %212 = load i64, i64* %33, align 8
  %213 = lshr i64 %212, 63
  %214 = xor i64 %211, %213
  %215 = xor i64 %209, %214
  store i64 %215, i64* %37, align 8
  %216 = load i64, i64* %32, align 8
  %217 = load i64, i64* %29, align 8
  %218 = shl i64 %217, 1
  %219 = load i64, i64* %29, align 8
  %220 = lshr i64 %219, 63
  %221 = xor i64 %218, %220
  %222 = xor i64 %216, %221
  store i64 %222, i64* %38, align 8
  %223 = load i64, i64* %34, align 8
  %224 = load i64, i64* %4, align 8
  %225 = xor i64 %224, %223
  store i64 %225, i64* %4, align 8
  %226 = load i64, i64* %4, align 8
  store i64 %226, i64* %29, align 8
  %227 = load i64, i64* %35, align 8
  %228 = load i64, i64* %10, align 8
  %229 = xor i64 %228, %227
  store i64 %229, i64* %10, align 8
  %230 = load i64, i64* %10, align 8
  %231 = shl i64 %230, 44
  %232 = load i64, i64* %10, align 8
  %233 = lshr i64 %232, 20
  %234 = xor i64 %231, %233
  store i64 %234, i64* %30, align 8
  %235 = load i64, i64* %36, align 8
  %236 = load i64, i64* %16, align 8
  %237 = xor i64 %236, %235
  store i64 %237, i64* %16, align 8
  %238 = load i64, i64* %16, align 8
  %239 = shl i64 %238, 43
  %240 = load i64, i64* %16, align 8
  %241 = lshr i64 %240, 21
  %242 = xor i64 %239, %241
  store i64 %242, i64* %31, align 8
  %243 = load i64, i64* %37, align 8
  %244 = load i64, i64* %22, align 8
  %245 = xor i64 %244, %243
  store i64 %245, i64* %22, align 8
  %246 = load i64, i64* %22, align 8
  %247 = shl i64 %246, 21
  %248 = load i64, i64* %22, align 8
  %249 = lshr i64 %248, 43
  %250 = xor i64 %247, %249
  store i64 %250, i64* %32, align 8
  %251 = load i64, i64* %38, align 8
  %252 = load i64, i64* %28, align 8
  %253 = xor i64 %252, %251
  store i64 %253, i64* %28, align 8
  %254 = load i64, i64* %28, align 8
  %255 = shl i64 %254, 14
  %256 = load i64, i64* %28, align 8
  %257 = lshr i64 %256, 50
  %258 = xor i64 %255, %257
  store i64 %258, i64* %33, align 8
  %259 = load i64, i64* %29, align 8
  %260 = load i64, i64* %30, align 8
  %261 = xor i64 %260, -1
  %262 = load i64, i64* %31, align 8
  %263 = and i64 %261, %262
  %264 = xor i64 %259, %263
  store i64 %264, i64* %39, align 8
  %265 = load i32, i32* %3, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [24 x i64], [24 x i64]* @KeccakF_RoundConstants, i64 0, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %39, align 8
  %270 = xor i64 %269, %268
  store i64 %270, i64* %39, align 8
  %271 = load i64, i64* %30, align 8
  %272 = load i64, i64* %31, align 8
  %273 = xor i64 %272, -1
  %274 = load i64, i64* %32, align 8
  %275 = and i64 %273, %274
  %276 = xor i64 %271, %275
  store i64 %276, i64* %40, align 8
  %277 = load i64, i64* %31, align 8
  %278 = load i64, i64* %32, align 8
  %279 = xor i64 %278, -1
  %280 = load i64, i64* %33, align 8
  %281 = and i64 %279, %280
  %282 = xor i64 %277, %281
  store i64 %282, i64* %41, align 8
  %283 = load i64, i64* %32, align 8
  %284 = load i64, i64* %33, align 8
  %285 = xor i64 %284, -1
  %286 = load i64, i64* %29, align 8
  %287 = and i64 %285, %286
  %288 = xor i64 %283, %287
  store i64 %288, i64* %42, align 8
  %289 = load i64, i64* %33, align 8
  %290 = load i64, i64* %29, align 8
  %291 = xor i64 %290, -1
  %292 = load i64, i64* %30, align 8
  %293 = and i64 %291, %292
  %294 = xor i64 %289, %293
  store i64 %294, i64* %43, align 8
  %295 = load i64, i64* %37, align 8
  %296 = load i64, i64* %7, align 8
  %297 = xor i64 %296, %295
  store i64 %297, i64* %7, align 8
  %298 = load i64, i64* %7, align 8
  %299 = shl i64 %298, 28
  %300 = load i64, i64* %7, align 8
  %301 = lshr i64 %300, 36
  %302 = xor i64 %299, %301
  store i64 %302, i64* %29, align 8
  %303 = load i64, i64* %38, align 8
  %304 = load i64, i64* %13, align 8
  %305 = xor i64 %304, %303
  store i64 %305, i64* %13, align 8
  %306 = load i64, i64* %13, align 8
  %307 = shl i64 %306, 20
  %308 = load i64, i64* %13, align 8
  %309 = lshr i64 %308, 44
  %310 = xor i64 %307, %309
  store i64 %310, i64* %30, align 8
  %311 = load i64, i64* %34, align 8
  %312 = load i64, i64* %14, align 8
  %313 = xor i64 %312, %311
  store i64 %313, i64* %14, align 8
  %314 = load i64, i64* %14, align 8
  %315 = shl i64 %314, 3
  %316 = load i64, i64* %14, align 8
  %317 = lshr i64 %316, 61
  %318 = xor i64 %315, %317
  store i64 %318, i64* %31, align 8
  %319 = load i64, i64* %35, align 8
  %320 = load i64, i64* %20, align 8
  %321 = xor i64 %320, %319
  store i64 %321, i64* %20, align 8
  %322 = load i64, i64* %20, align 8
  %323 = shl i64 %322, 45
  %324 = load i64, i64* %20, align 8
  %325 = lshr i64 %324, 19
  %326 = xor i64 %323, %325
  store i64 %326, i64* %32, align 8
  %327 = load i64, i64* %36, align 8
  %328 = load i64, i64* %26, align 8
  %329 = xor i64 %328, %327
  store i64 %329, i64* %26, align 8
  %330 = load i64, i64* %26, align 8
  %331 = shl i64 %330, 61
  %332 = load i64, i64* %26, align 8
  %333 = lshr i64 %332, 3
  %334 = xor i64 %331, %333
  store i64 %334, i64* %33, align 8
  %335 = load i64, i64* %29, align 8
  %336 = load i64, i64* %30, align 8
  %337 = xor i64 %336, -1
  %338 = load i64, i64* %31, align 8
  %339 = and i64 %337, %338
  %340 = xor i64 %335, %339
  store i64 %340, i64* %44, align 8
  %341 = load i64, i64* %30, align 8
  %342 = load i64, i64* %31, align 8
  %343 = xor i64 %342, -1
  %344 = load i64, i64* %32, align 8
  %345 = and i64 %343, %344
  %346 = xor i64 %341, %345
  store i64 %346, i64* %45, align 8
  %347 = load i64, i64* %31, align 8
  %348 = load i64, i64* %32, align 8
  %349 = xor i64 %348, -1
  %350 = load i64, i64* %33, align 8
  %351 = and i64 %349, %350
  %352 = xor i64 %347, %351
  store i64 %352, i64* %46, align 8
  %353 = load i64, i64* %32, align 8
  %354 = load i64, i64* %33, align 8
  %355 = xor i64 %354, -1
  %356 = load i64, i64* %29, align 8
  %357 = and i64 %355, %356
  %358 = xor i64 %353, %357
  store i64 %358, i64* %47, align 8
  %359 = load i64, i64* %33, align 8
  %360 = load i64, i64* %29, align 8
  %361 = xor i64 %360, -1
  %362 = load i64, i64* %30, align 8
  %363 = and i64 %361, %362
  %364 = xor i64 %359, %363
  store i64 %364, i64* %48, align 8
  %365 = load i64, i64* %35, align 8
  %366 = load i64, i64* %5, align 8
  %367 = xor i64 %366, %365
  store i64 %367, i64* %5, align 8
  %368 = load i64, i64* %5, align 8
  %369 = shl i64 %368, 1
  %370 = load i64, i64* %5, align 8
  %371 = lshr i64 %370, 63
  %372 = xor i64 %369, %371
  store i64 %372, i64* %29, align 8
  %373 = load i64, i64* %36, align 8
  %374 = load i64, i64* %11, align 8
  %375 = xor i64 %374, %373
  store i64 %375, i64* %11, align 8
  %376 = load i64, i64* %11, align 8
  %377 = shl i64 %376, 6
  %378 = load i64, i64* %11, align 8
  %379 = lshr i64 %378, 58
  %380 = xor i64 %377, %379
  store i64 %380, i64* %30, align 8
  %381 = load i64, i64* %37, align 8
  %382 = load i64, i64* %17, align 8
  %383 = xor i64 %382, %381
  store i64 %383, i64* %17, align 8
  %384 = load i64, i64* %17, align 8
  %385 = shl i64 %384, 25
  %386 = load i64, i64* %17, align 8
  %387 = lshr i64 %386, 39
  %388 = xor i64 %385, %387
  store i64 %388, i64* %31, align 8
  %389 = load i64, i64* %38, align 8
  %390 = load i64, i64* %23, align 8
  %391 = xor i64 %390, %389
  store i64 %391, i64* %23, align 8
  %392 = load i64, i64* %23, align 8
  %393 = shl i64 %392, 8
  %394 = load i64, i64* %23, align 8
  %395 = lshr i64 %394, 56
  %396 = xor i64 %393, %395
  store i64 %396, i64* %32, align 8
  %397 = load i64, i64* %34, align 8
  %398 = load i64, i64* %24, align 8
  %399 = xor i64 %398, %397
  store i64 %399, i64* %24, align 8
  %400 = load i64, i64* %24, align 8
  %401 = shl i64 %400, 18
  %402 = load i64, i64* %24, align 8
  %403 = lshr i64 %402, 46
  %404 = xor i64 %401, %403
  store i64 %404, i64* %33, align 8
  %405 = load i64, i64* %29, align 8
  %406 = load i64, i64* %30, align 8
  %407 = xor i64 %406, -1
  %408 = load i64, i64* %31, align 8
  %409 = and i64 %407, %408
  %410 = xor i64 %405, %409
  store i64 %410, i64* %49, align 8
  %411 = load i64, i64* %30, align 8
  %412 = load i64, i64* %31, align 8
  %413 = xor i64 %412, -1
  %414 = load i64, i64* %32, align 8
  %415 = and i64 %413, %414
  %416 = xor i64 %411, %415
  store i64 %416, i64* %50, align 8
  %417 = load i64, i64* %31, align 8
  %418 = load i64, i64* %32, align 8
  %419 = xor i64 %418, -1
  %420 = load i64, i64* %33, align 8
  %421 = and i64 %419, %420
  %422 = xor i64 %417, %421
  store i64 %422, i64* %51, align 8
  %423 = load i64, i64* %32, align 8
  %424 = load i64, i64* %33, align 8
  %425 = xor i64 %424, -1
  %426 = load i64, i64* %29, align 8
  %427 = and i64 %425, %426
  %428 = xor i64 %423, %427
  store i64 %428, i64* %52, align 8
  %429 = load i64, i64* %33, align 8
  %430 = load i64, i64* %29, align 8
  %431 = xor i64 %430, -1
  %432 = load i64, i64* %30, align 8
  %433 = and i64 %431, %432
  %434 = xor i64 %429, %433
  store i64 %434, i64* %53, align 8
  %435 = load i64, i64* %38, align 8
  %436 = load i64, i64* %8, align 8
  %437 = xor i64 %436, %435
  store i64 %437, i64* %8, align 8
  %438 = load i64, i64* %8, align 8
  %439 = shl i64 %438, 27
  %440 = load i64, i64* %8, align 8
  %441 = lshr i64 %440, 37
  %442 = xor i64 %439, %441
  store i64 %442, i64* %29, align 8
  %443 = load i64, i64* %34, align 8
  %444 = load i64, i64* %9, align 8
  %445 = xor i64 %444, %443
  store i64 %445, i64* %9, align 8
  %446 = load i64, i64* %9, align 8
  %447 = shl i64 %446, 36
  %448 = load i64, i64* %9, align 8
  %449 = lshr i64 %448, 28
  %450 = xor i64 %447, %449
  store i64 %450, i64* %30, align 8
  %451 = load i64, i64* %35, align 8
  %452 = load i64, i64* %15, align 8
  %453 = xor i64 %452, %451
  store i64 %453, i64* %15, align 8
  %454 = load i64, i64* %15, align 8
  %455 = shl i64 %454, 10
  %456 = load i64, i64* %15, align 8
  %457 = lshr i64 %456, 54
  %458 = xor i64 %455, %457
  store i64 %458, i64* %31, align 8
  %459 = load i64, i64* %36, align 8
  %460 = load i64, i64* %21, align 8
  %461 = xor i64 %460, %459
  store i64 %461, i64* %21, align 8
  %462 = load i64, i64* %21, align 8
  %463 = shl i64 %462, 15
  %464 = load i64, i64* %21, align 8
  %465 = lshr i64 %464, 49
  %466 = xor i64 %463, %465
  store i64 %466, i64* %32, align 8
  %467 = load i64, i64* %37, align 8
  %468 = load i64, i64* %27, align 8
  %469 = xor i64 %468, %467
  store i64 %469, i64* %27, align 8
  %470 = load i64, i64* %27, align 8
  %471 = shl i64 %470, 56
  %472 = load i64, i64* %27, align 8
  %473 = lshr i64 %472, 8
  %474 = xor i64 %471, %473
  store i64 %474, i64* %33, align 8
  %475 = load i64, i64* %29, align 8
  %476 = load i64, i64* %30, align 8
  %477 = xor i64 %476, -1
  %478 = load i64, i64* %31, align 8
  %479 = and i64 %477, %478
  %480 = xor i64 %475, %479
  store i64 %480, i64* %54, align 8
  %481 = load i64, i64* %30, align 8
  %482 = load i64, i64* %31, align 8
  %483 = xor i64 %482, -1
  %484 = load i64, i64* %32, align 8
  %485 = and i64 %483, %484
  %486 = xor i64 %481, %485
  store i64 %486, i64* %55, align 8
  %487 = load i64, i64* %31, align 8
  %488 = load i64, i64* %32, align 8
  %489 = xor i64 %488, -1
  %490 = load i64, i64* %33, align 8
  %491 = and i64 %489, %490
  %492 = xor i64 %487, %491
  store i64 %492, i64* %56, align 8
  %493 = load i64, i64* %32, align 8
  %494 = load i64, i64* %33, align 8
  %495 = xor i64 %494, -1
  %496 = load i64, i64* %29, align 8
  %497 = and i64 %495, %496
  %498 = xor i64 %493, %497
  store i64 %498, i64* %57, align 8
  %499 = load i64, i64* %33, align 8
  %500 = load i64, i64* %29, align 8
  %501 = xor i64 %500, -1
  %502 = load i64, i64* %30, align 8
  %503 = and i64 %501, %502
  %504 = xor i64 %499, %503
  store i64 %504, i64* %58, align 8
  %505 = load i64, i64* %36, align 8
  %506 = load i64, i64* %6, align 8
  %507 = xor i64 %506, %505
  store i64 %507, i64* %6, align 8
  %508 = load i64, i64* %6, align 8
  %509 = shl i64 %508, 62
  %510 = load i64, i64* %6, align 8
  %511 = lshr i64 %510, 2
  %512 = xor i64 %509, %511
  store i64 %512, i64* %29, align 8
  %513 = load i64, i64* %37, align 8
  %514 = load i64, i64* %12, align 8
  %515 = xor i64 %514, %513
  store i64 %515, i64* %12, align 8
  %516 = load i64, i64* %12, align 8
  %517 = shl i64 %516, 55
  %518 = load i64, i64* %12, align 8
  %519 = lshr i64 %518, 9
  %520 = xor i64 %517, %519
  store i64 %520, i64* %30, align 8
  %521 = load i64, i64* %38, align 8
  %522 = load i64, i64* %18, align 8
  %523 = xor i64 %522, %521
  store i64 %523, i64* %18, align 8
  %524 = load i64, i64* %18, align 8
  %525 = shl i64 %524, 39
  %526 = load i64, i64* %18, align 8
  %527 = lshr i64 %526, 25
  %528 = xor i64 %525, %527
  store i64 %528, i64* %31, align 8
  %529 = load i64, i64* %34, align 8
  %530 = load i64, i64* %19, align 8
  %531 = xor i64 %530, %529
  store i64 %531, i64* %19, align 8
  %532 = load i64, i64* %19, align 8
  %533 = shl i64 %532, 41
  %534 = load i64, i64* %19, align 8
  %535 = lshr i64 %534, 23
  %536 = xor i64 %533, %535
  store i64 %536, i64* %32, align 8
  %537 = load i64, i64* %35, align 8
  %538 = load i64, i64* %25, align 8
  %539 = xor i64 %538, %537
  store i64 %539, i64* %25, align 8
  %540 = load i64, i64* %25, align 8
  %541 = shl i64 %540, 2
  %542 = load i64, i64* %25, align 8
  %543 = lshr i64 %542, 62
  %544 = xor i64 %541, %543
  store i64 %544, i64* %33, align 8
  %545 = load i64, i64* %29, align 8
  %546 = load i64, i64* %30, align 8
  %547 = xor i64 %546, -1
  %548 = load i64, i64* %31, align 8
  %549 = and i64 %547, %548
  %550 = xor i64 %545, %549
  store i64 %550, i64* %59, align 8
  %551 = load i64, i64* %30, align 8
  %552 = load i64, i64* %31, align 8
  %553 = xor i64 %552, -1
  %554 = load i64, i64* %32, align 8
  %555 = and i64 %553, %554
  %556 = xor i64 %551, %555
  store i64 %556, i64* %60, align 8
  %557 = load i64, i64* %31, align 8
  %558 = load i64, i64* %32, align 8
  %559 = xor i64 %558, -1
  %560 = load i64, i64* %33, align 8
  %561 = and i64 %559, %560
  %562 = xor i64 %557, %561
  store i64 %562, i64* %61, align 8
  %563 = load i64, i64* %32, align 8
  %564 = load i64, i64* %33, align 8
  %565 = xor i64 %564, -1
  %566 = load i64, i64* %29, align 8
  %567 = and i64 %565, %566
  %568 = xor i64 %563, %567
  store i64 %568, i64* %62, align 8
  %569 = load i64, i64* %33, align 8
  %570 = load i64, i64* %29, align 8
  %571 = xor i64 %570, -1
  %572 = load i64, i64* %30, align 8
  %573 = and i64 %571, %572
  %574 = xor i64 %569, %573
  store i64 %574, i64* %63, align 8
  %575 = load i64, i64* %39, align 8
  %576 = load i64, i64* %44, align 8
  %577 = xor i64 %575, %576
  %578 = load i64, i64* %49, align 8
  %579 = xor i64 %577, %578
  %580 = load i64, i64* %54, align 8
  %581 = xor i64 %579, %580
  %582 = load i64, i64* %59, align 8
  %583 = xor i64 %581, %582
  store i64 %583, i64* %29, align 8
  %584 = load i64, i64* %40, align 8
  %585 = load i64, i64* %45, align 8
  %586 = xor i64 %584, %585
  %587 = load i64, i64* %50, align 8
  %588 = xor i64 %586, %587
  %589 = load i64, i64* %55, align 8
  %590 = xor i64 %588, %589
  %591 = load i64, i64* %60, align 8
  %592 = xor i64 %590, %591
  store i64 %592, i64* %30, align 8
  %593 = load i64, i64* %41, align 8
  %594 = load i64, i64* %46, align 8
  %595 = xor i64 %593, %594
  %596 = load i64, i64* %51, align 8
  %597 = xor i64 %595, %596
  %598 = load i64, i64* %56, align 8
  %599 = xor i64 %597, %598
  %600 = load i64, i64* %61, align 8
  %601 = xor i64 %599, %600
  store i64 %601, i64* %31, align 8
  %602 = load i64, i64* %42, align 8
  %603 = load i64, i64* %47, align 8
  %604 = xor i64 %602, %603
  %605 = load i64, i64* %52, align 8
  %606 = xor i64 %604, %605
  %607 = load i64, i64* %57, align 8
  %608 = xor i64 %606, %607
  %609 = load i64, i64* %62, align 8
  %610 = xor i64 %608, %609
  store i64 %610, i64* %32, align 8
  %611 = load i64, i64* %43, align 8
  %612 = load i64, i64* %48, align 8
  %613 = xor i64 %611, %612
  %614 = load i64, i64* %53, align 8
  %615 = xor i64 %613, %614
  %616 = load i64, i64* %58, align 8
  %617 = xor i64 %615, %616
  %618 = load i64, i64* %63, align 8
  %619 = xor i64 %617, %618
  store i64 %619, i64* %33, align 8
  %620 = load i64, i64* %33, align 8
  %621 = load i64, i64* %30, align 8
  %622 = shl i64 %621, 1
  %623 = load i64, i64* %30, align 8
  %624 = lshr i64 %623, 63
  %625 = xor i64 %622, %624
  %626 = xor i64 %620, %625
  store i64 %626, i64* %34, align 8
  %627 = load i64, i64* %29, align 8
  %628 = load i64, i64* %31, align 8
  %629 = shl i64 %628, 1
  %630 = load i64, i64* %31, align 8
  %631 = lshr i64 %630, 63
  %632 = xor i64 %629, %631
  %633 = xor i64 %627, %632
  store i64 %633, i64* %35, align 8
  %634 = load i64, i64* %30, align 8
  %635 = load i64, i64* %32, align 8
  %636 = shl i64 %635, 1
  %637 = load i64, i64* %32, align 8
  %638 = lshr i64 %637, 63
  %639 = xor i64 %636, %638
  %640 = xor i64 %634, %639
  store i64 %640, i64* %36, align 8
  %641 = load i64, i64* %31, align 8
  %642 = load i64, i64* %33, align 8
  %643 = shl i64 %642, 1
  %644 = load i64, i64* %33, align 8
  %645 = lshr i64 %644, 63
  %646 = xor i64 %643, %645
  %647 = xor i64 %641, %646
  store i64 %647, i64* %37, align 8
  %648 = load i64, i64* %32, align 8
  %649 = load i64, i64* %29, align 8
  %650 = shl i64 %649, 1
  %651 = load i64, i64* %29, align 8
  %652 = lshr i64 %651, 63
  %653 = xor i64 %650, %652
  %654 = xor i64 %648, %653
  store i64 %654, i64* %38, align 8
  %655 = load i64, i64* %34, align 8
  %656 = load i64, i64* %39, align 8
  %657 = xor i64 %656, %655
  store i64 %657, i64* %39, align 8
  %658 = load i64, i64* %39, align 8
  store i64 %658, i64* %29, align 8
  %659 = load i64, i64* %35, align 8
  %660 = load i64, i64* %45, align 8
  %661 = xor i64 %660, %659
  store i64 %661, i64* %45, align 8
  %662 = load i64, i64* %45, align 8
  %663 = shl i64 %662, 44
  %664 = load i64, i64* %45, align 8
  %665 = lshr i64 %664, 20
  %666 = xor i64 %663, %665
  store i64 %666, i64* %30, align 8
  %667 = load i64, i64* %36, align 8
  %668 = load i64, i64* %51, align 8
  %669 = xor i64 %668, %667
  store i64 %669, i64* %51, align 8
  %670 = load i64, i64* %51, align 8
  %671 = shl i64 %670, 43
  %672 = load i64, i64* %51, align 8
  %673 = lshr i64 %672, 21
  %674 = xor i64 %671, %673
  store i64 %674, i64* %31, align 8
  %675 = load i64, i64* %37, align 8
  %676 = load i64, i64* %57, align 8
  %677 = xor i64 %676, %675
  store i64 %677, i64* %57, align 8
  %678 = load i64, i64* %57, align 8
  %679 = shl i64 %678, 21
  %680 = load i64, i64* %57, align 8
  %681 = lshr i64 %680, 43
  %682 = xor i64 %679, %681
  store i64 %682, i64* %32, align 8
  %683 = load i64, i64* %38, align 8
  %684 = load i64, i64* %63, align 8
  %685 = xor i64 %684, %683
  store i64 %685, i64* %63, align 8
  %686 = load i64, i64* %63, align 8
  %687 = shl i64 %686, 14
  %688 = load i64, i64* %63, align 8
  %689 = lshr i64 %688, 50
  %690 = xor i64 %687, %689
  store i64 %690, i64* %33, align 8
  %691 = load i64, i64* %29, align 8
  %692 = load i64, i64* %30, align 8
  %693 = xor i64 %692, -1
  %694 = load i64, i64* %31, align 8
  %695 = and i64 %693, %694
  %696 = xor i64 %691, %695
  store i64 %696, i64* %4, align 8
  %697 = load i32, i32* %3, align 4
  %698 = add nsw i32 %697, 1
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [24 x i64], [24 x i64]* @KeccakF_RoundConstants, i64 0, i64 %699
  %701 = load i64, i64* %700, align 8
  %702 = load i64, i64* %4, align 8
  %703 = xor i64 %702, %701
  store i64 %703, i64* %4, align 8
  %704 = load i64, i64* %30, align 8
  %705 = load i64, i64* %31, align 8
  %706 = xor i64 %705, -1
  %707 = load i64, i64* %32, align 8
  %708 = and i64 %706, %707
  %709 = xor i64 %704, %708
  store i64 %709, i64* %5, align 8
  %710 = load i64, i64* %31, align 8
  %711 = load i64, i64* %32, align 8
  %712 = xor i64 %711, -1
  %713 = load i64, i64* %33, align 8
  %714 = and i64 %712, %713
  %715 = xor i64 %710, %714
  store i64 %715, i64* %6, align 8
  %716 = load i64, i64* %32, align 8
  %717 = load i64, i64* %33, align 8
  %718 = xor i64 %717, -1
  %719 = load i64, i64* %29, align 8
  %720 = and i64 %718, %719
  %721 = xor i64 %716, %720
  store i64 %721, i64* %7, align 8
  %722 = load i64, i64* %33, align 8
  %723 = load i64, i64* %29, align 8
  %724 = xor i64 %723, -1
  %725 = load i64, i64* %30, align 8
  %726 = and i64 %724, %725
  %727 = xor i64 %722, %726
  store i64 %727, i64* %8, align 8
  %728 = load i64, i64* %37, align 8
  %729 = load i64, i64* %42, align 8
  %730 = xor i64 %729, %728
  store i64 %730, i64* %42, align 8
  %731 = load i64, i64* %42, align 8
  %732 = shl i64 %731, 28
  %733 = load i64, i64* %42, align 8
  %734 = lshr i64 %733, 36
  %735 = xor i64 %732, %734
  store i64 %735, i64* %29, align 8
  %736 = load i64, i64* %38, align 8
  %737 = load i64, i64* %48, align 8
  %738 = xor i64 %737, %736
  store i64 %738, i64* %48, align 8
  %739 = load i64, i64* %48, align 8
  %740 = shl i64 %739, 20
  %741 = load i64, i64* %48, align 8
  %742 = lshr i64 %741, 44
  %743 = xor i64 %740, %742
  store i64 %743, i64* %30, align 8
  %744 = load i64, i64* %34, align 8
  %745 = load i64, i64* %49, align 8
  %746 = xor i64 %745, %744
  store i64 %746, i64* %49, align 8
  %747 = load i64, i64* %49, align 8
  %748 = shl i64 %747, 3
  %749 = load i64, i64* %49, align 8
  %750 = lshr i64 %749, 61
  %751 = xor i64 %748, %750
  store i64 %751, i64* %31, align 8
  %752 = load i64, i64* %35, align 8
  %753 = load i64, i64* %55, align 8
  %754 = xor i64 %753, %752
  store i64 %754, i64* %55, align 8
  %755 = load i64, i64* %55, align 8
  %756 = shl i64 %755, 45
  %757 = load i64, i64* %55, align 8
  %758 = lshr i64 %757, 19
  %759 = xor i64 %756, %758
  store i64 %759, i64* %32, align 8
  %760 = load i64, i64* %36, align 8
  %761 = load i64, i64* %61, align 8
  %762 = xor i64 %761, %760
  store i64 %762, i64* %61, align 8
  %763 = load i64, i64* %61, align 8
  %764 = shl i64 %763, 61
  %765 = load i64, i64* %61, align 8
  %766 = lshr i64 %765, 3
  %767 = xor i64 %764, %766
  store i64 %767, i64* %33, align 8
  %768 = load i64, i64* %29, align 8
  %769 = load i64, i64* %30, align 8
  %770 = xor i64 %769, -1
  %771 = load i64, i64* %31, align 8
  %772 = and i64 %770, %771
  %773 = xor i64 %768, %772
  store i64 %773, i64* %9, align 8
  %774 = load i64, i64* %30, align 8
  %775 = load i64, i64* %31, align 8
  %776 = xor i64 %775, -1
  %777 = load i64, i64* %32, align 8
  %778 = and i64 %776, %777
  %779 = xor i64 %774, %778
  store i64 %779, i64* %10, align 8
  %780 = load i64, i64* %31, align 8
  %781 = load i64, i64* %32, align 8
  %782 = xor i64 %781, -1
  %783 = load i64, i64* %33, align 8
  %784 = and i64 %782, %783
  %785 = xor i64 %780, %784
  store i64 %785, i64* %11, align 8
  %786 = load i64, i64* %32, align 8
  %787 = load i64, i64* %33, align 8
  %788 = xor i64 %787, -1
  %789 = load i64, i64* %29, align 8
  %790 = and i64 %788, %789
  %791 = xor i64 %786, %790
  store i64 %791, i64* %12, align 8
  %792 = load i64, i64* %33, align 8
  %793 = load i64, i64* %29, align 8
  %794 = xor i64 %793, -1
  %795 = load i64, i64* %30, align 8
  %796 = and i64 %794, %795
  %797 = xor i64 %792, %796
  store i64 %797, i64* %13, align 8
  %798 = load i64, i64* %35, align 8
  %799 = load i64, i64* %40, align 8
  %800 = xor i64 %799, %798
  store i64 %800, i64* %40, align 8
  %801 = load i64, i64* %40, align 8
  %802 = shl i64 %801, 1
  %803 = load i64, i64* %40, align 8
  %804 = lshr i64 %803, 63
  %805 = xor i64 %802, %804
  store i64 %805, i64* %29, align 8
  %806 = load i64, i64* %36, align 8
  %807 = load i64, i64* %46, align 8
  %808 = xor i64 %807, %806
  store i64 %808, i64* %46, align 8
  %809 = load i64, i64* %46, align 8
  %810 = shl i64 %809, 6
  %811 = load i64, i64* %46, align 8
  %812 = lshr i64 %811, 58
  %813 = xor i64 %810, %812
  store i64 %813, i64* %30, align 8
  %814 = load i64, i64* %37, align 8
  %815 = load i64, i64* %52, align 8
  %816 = xor i64 %815, %814
  store i64 %816, i64* %52, align 8
  %817 = load i64, i64* %52, align 8
  %818 = shl i64 %817, 25
  %819 = load i64, i64* %52, align 8
  %820 = lshr i64 %819, 39
  %821 = xor i64 %818, %820
  store i64 %821, i64* %31, align 8
  %822 = load i64, i64* %38, align 8
  %823 = load i64, i64* %58, align 8
  %824 = xor i64 %823, %822
  store i64 %824, i64* %58, align 8
  %825 = load i64, i64* %58, align 8
  %826 = shl i64 %825, 8
  %827 = load i64, i64* %58, align 8
  %828 = lshr i64 %827, 56
  %829 = xor i64 %826, %828
  store i64 %829, i64* %32, align 8
  %830 = load i64, i64* %34, align 8
  %831 = load i64, i64* %59, align 8
  %832 = xor i64 %831, %830
  store i64 %832, i64* %59, align 8
  %833 = load i64, i64* %59, align 8
  %834 = shl i64 %833, 18
  %835 = load i64, i64* %59, align 8
  %836 = lshr i64 %835, 46
  %837 = xor i64 %834, %836
  store i64 %837, i64* %33, align 8
  %838 = load i64, i64* %29, align 8
  %839 = load i64, i64* %30, align 8
  %840 = xor i64 %839, -1
  %841 = load i64, i64* %31, align 8
  %842 = and i64 %840, %841
  %843 = xor i64 %838, %842
  store i64 %843, i64* %14, align 8
  %844 = load i64, i64* %30, align 8
  %845 = load i64, i64* %31, align 8
  %846 = xor i64 %845, -1
  %847 = load i64, i64* %32, align 8
  %848 = and i64 %846, %847
  %849 = xor i64 %844, %848
  store i64 %849, i64* %15, align 8
  %850 = load i64, i64* %31, align 8
  %851 = load i64, i64* %32, align 8
  %852 = xor i64 %851, -1
  %853 = load i64, i64* %33, align 8
  %854 = and i64 %852, %853
  %855 = xor i64 %850, %854
  store i64 %855, i64* %16, align 8
  %856 = load i64, i64* %32, align 8
  %857 = load i64, i64* %33, align 8
  %858 = xor i64 %857, -1
  %859 = load i64, i64* %29, align 8
  %860 = and i64 %858, %859
  %861 = xor i64 %856, %860
  store i64 %861, i64* %17, align 8
  %862 = load i64, i64* %33, align 8
  %863 = load i64, i64* %29, align 8
  %864 = xor i64 %863, -1
  %865 = load i64, i64* %30, align 8
  %866 = and i64 %864, %865
  %867 = xor i64 %862, %866
  store i64 %867, i64* %18, align 8
  %868 = load i64, i64* %38, align 8
  %869 = load i64, i64* %43, align 8
  %870 = xor i64 %869, %868
  store i64 %870, i64* %43, align 8
  %871 = load i64, i64* %43, align 8
  %872 = shl i64 %871, 27
  %873 = load i64, i64* %43, align 8
  %874 = lshr i64 %873, 37
  %875 = xor i64 %872, %874
  store i64 %875, i64* %29, align 8
  %876 = load i64, i64* %34, align 8
  %877 = load i64, i64* %44, align 8
  %878 = xor i64 %877, %876
  store i64 %878, i64* %44, align 8
  %879 = load i64, i64* %44, align 8
  %880 = shl i64 %879, 36
  %881 = load i64, i64* %44, align 8
  %882 = lshr i64 %881, 28
  %883 = xor i64 %880, %882
  store i64 %883, i64* %30, align 8
  %884 = load i64, i64* %35, align 8
  %885 = load i64, i64* %50, align 8
  %886 = xor i64 %885, %884
  store i64 %886, i64* %50, align 8
  %887 = load i64, i64* %50, align 8
  %888 = shl i64 %887, 10
  %889 = load i64, i64* %50, align 8
  %890 = lshr i64 %889, 54
  %891 = xor i64 %888, %890
  store i64 %891, i64* %31, align 8
  %892 = load i64, i64* %36, align 8
  %893 = load i64, i64* %56, align 8
  %894 = xor i64 %893, %892
  store i64 %894, i64* %56, align 8
  %895 = load i64, i64* %56, align 8
  %896 = shl i64 %895, 15
  %897 = load i64, i64* %56, align 8
  %898 = lshr i64 %897, 49
  %899 = xor i64 %896, %898
  store i64 %899, i64* %32, align 8
  %900 = load i64, i64* %37, align 8
  %901 = load i64, i64* %62, align 8
  %902 = xor i64 %901, %900
  store i64 %902, i64* %62, align 8
  %903 = load i64, i64* %62, align 8
  %904 = shl i64 %903, 56
  %905 = load i64, i64* %62, align 8
  %906 = lshr i64 %905, 8
  %907 = xor i64 %904, %906
  store i64 %907, i64* %33, align 8
  %908 = load i64, i64* %29, align 8
  %909 = load i64, i64* %30, align 8
  %910 = xor i64 %909, -1
  %911 = load i64, i64* %31, align 8
  %912 = and i64 %910, %911
  %913 = xor i64 %908, %912
  store i64 %913, i64* %19, align 8
  %914 = load i64, i64* %30, align 8
  %915 = load i64, i64* %31, align 8
  %916 = xor i64 %915, -1
  %917 = load i64, i64* %32, align 8
  %918 = and i64 %916, %917
  %919 = xor i64 %914, %918
  store i64 %919, i64* %20, align 8
  %920 = load i64, i64* %31, align 8
  %921 = load i64, i64* %32, align 8
  %922 = xor i64 %921, -1
  %923 = load i64, i64* %33, align 8
  %924 = and i64 %922, %923
  %925 = xor i64 %920, %924
  store i64 %925, i64* %21, align 8
  %926 = load i64, i64* %32, align 8
  %927 = load i64, i64* %33, align 8
  %928 = xor i64 %927, -1
  %929 = load i64, i64* %29, align 8
  %930 = and i64 %928, %929
  %931 = xor i64 %926, %930
  store i64 %931, i64* %22, align 8
  %932 = load i64, i64* %33, align 8
  %933 = load i64, i64* %29, align 8
  %934 = xor i64 %933, -1
  %935 = load i64, i64* %30, align 8
  %936 = and i64 %934, %935
  %937 = xor i64 %932, %936
  store i64 %937, i64* %23, align 8
  %938 = load i64, i64* %36, align 8
  %939 = load i64, i64* %41, align 8
  %940 = xor i64 %939, %938
  store i64 %940, i64* %41, align 8
  %941 = load i64, i64* %41, align 8
  %942 = shl i64 %941, 62
  %943 = load i64, i64* %41, align 8
  %944 = lshr i64 %943, 2
  %945 = xor i64 %942, %944
  store i64 %945, i64* %29, align 8
  %946 = load i64, i64* %37, align 8
  %947 = load i64, i64* %47, align 8
  %948 = xor i64 %947, %946
  store i64 %948, i64* %47, align 8
  %949 = load i64, i64* %47, align 8
  %950 = shl i64 %949, 55
  %951 = load i64, i64* %47, align 8
  %952 = lshr i64 %951, 9
  %953 = xor i64 %950, %952
  store i64 %953, i64* %30, align 8
  %954 = load i64, i64* %38, align 8
  %955 = load i64, i64* %53, align 8
  %956 = xor i64 %955, %954
  store i64 %956, i64* %53, align 8
  %957 = load i64, i64* %53, align 8
  %958 = shl i64 %957, 39
  %959 = load i64, i64* %53, align 8
  %960 = lshr i64 %959, 25
  %961 = xor i64 %958, %960
  store i64 %961, i64* %31, align 8
  %962 = load i64, i64* %34, align 8
  %963 = load i64, i64* %54, align 8
  %964 = xor i64 %963, %962
  store i64 %964, i64* %54, align 8
  %965 = load i64, i64* %54, align 8
  %966 = shl i64 %965, 41
  %967 = load i64, i64* %54, align 8
  %968 = lshr i64 %967, 23
  %969 = xor i64 %966, %968
  store i64 %969, i64* %32, align 8
  %970 = load i64, i64* %35, align 8
  %971 = load i64, i64* %60, align 8
  %972 = xor i64 %971, %970
  store i64 %972, i64* %60, align 8
  %973 = load i64, i64* %60, align 8
  %974 = shl i64 %973, 2
  %975 = load i64, i64* %60, align 8
  %976 = lshr i64 %975, 62
  %977 = xor i64 %974, %976
  store i64 %977, i64* %33, align 8
  %978 = load i64, i64* %29, align 8
  %979 = load i64, i64* %30, align 8
  %980 = xor i64 %979, -1
  %981 = load i64, i64* %31, align 8
  %982 = and i64 %980, %981
  %983 = xor i64 %978, %982
  store i64 %983, i64* %24, align 8
  %984 = load i64, i64* %30, align 8
  %985 = load i64, i64* %31, align 8
  %986 = xor i64 %985, -1
  %987 = load i64, i64* %32, align 8
  %988 = and i64 %986, %987
  %989 = xor i64 %984, %988
  store i64 %989, i64* %25, align 8
  %990 = load i64, i64* %31, align 8
  %991 = load i64, i64* %32, align 8
  %992 = xor i64 %991, -1
  %993 = load i64, i64* %33, align 8
  %994 = and i64 %992, %993
  %995 = xor i64 %990, %994
  store i64 %995, i64* %26, align 8
  %996 = load i64, i64* %32, align 8
  %997 = load i64, i64* %33, align 8
  %998 = xor i64 %997, -1
  %999 = load i64, i64* %29, align 8
  %1000 = and i64 %998, %999
  %1001 = xor i64 %996, %1000
  store i64 %1001, i64* %27, align 8
  %1002 = load i64, i64* %33, align 8
  %1003 = load i64, i64* %29, align 8
  %1004 = xor i64 %1003, -1
  %1005 = load i64, i64* %30, align 8
  %1006 = and i64 %1004, %1005
  %1007 = xor i64 %1002, %1006
  store i64 %1007, i64* %28, align 8
  br label %1008

; <label>:1008:                                   ; preds = %142
  %1009 = load i32, i32* %3, align 4
  %1010 = add nsw i32 %1009, 2
  store i32 %1010, i32* %3, align 4
  br label %139

; <label>:1011:                                   ; preds = %139
  %1012 = load i64, i64* %4, align 8
  %1013 = load i64*, i64** %2, align 8
  %1014 = getelementptr inbounds i64, i64* %1013, i64 0
  store i64 %1012, i64* %1014, align 8
  %1015 = load i64, i64* %5, align 8
  %1016 = load i64*, i64** %2, align 8
  %1017 = getelementptr inbounds i64, i64* %1016, i64 1
  store i64 %1015, i64* %1017, align 8
  %1018 = load i64, i64* %6, align 8
  %1019 = load i64*, i64** %2, align 8
  %1020 = getelementptr inbounds i64, i64* %1019, i64 2
  store i64 %1018, i64* %1020, align 8
  %1021 = load i64, i64* %7, align 8
  %1022 = load i64*, i64** %2, align 8
  %1023 = getelementptr inbounds i64, i64* %1022, i64 3
  store i64 %1021, i64* %1023, align 8
  %1024 = load i64, i64* %8, align 8
  %1025 = load i64*, i64** %2, align 8
  %1026 = getelementptr inbounds i64, i64* %1025, i64 4
  store i64 %1024, i64* %1026, align 8
  %1027 = load i64, i64* %9, align 8
  %1028 = load i64*, i64** %2, align 8
  %1029 = getelementptr inbounds i64, i64* %1028, i64 5
  store i64 %1027, i64* %1029, align 8
  %1030 = load i64, i64* %10, align 8
  %1031 = load i64*, i64** %2, align 8
  %1032 = getelementptr inbounds i64, i64* %1031, i64 6
  store i64 %1030, i64* %1032, align 8
  %1033 = load i64, i64* %11, align 8
  %1034 = load i64*, i64** %2, align 8
  %1035 = getelementptr inbounds i64, i64* %1034, i64 7
  store i64 %1033, i64* %1035, align 8
  %1036 = load i64, i64* %12, align 8
  %1037 = load i64*, i64** %2, align 8
  %1038 = getelementptr inbounds i64, i64* %1037, i64 8
  store i64 %1036, i64* %1038, align 8
  %1039 = load i64, i64* %13, align 8
  %1040 = load i64*, i64** %2, align 8
  %1041 = getelementptr inbounds i64, i64* %1040, i64 9
  store i64 %1039, i64* %1041, align 8
  %1042 = load i64, i64* %14, align 8
  %1043 = load i64*, i64** %2, align 8
  %1044 = getelementptr inbounds i64, i64* %1043, i64 10
  store i64 %1042, i64* %1044, align 8
  %1045 = load i64, i64* %15, align 8
  %1046 = load i64*, i64** %2, align 8
  %1047 = getelementptr inbounds i64, i64* %1046, i64 11
  store i64 %1045, i64* %1047, align 8
  %1048 = load i64, i64* %16, align 8
  %1049 = load i64*, i64** %2, align 8
  %1050 = getelementptr inbounds i64, i64* %1049, i64 12
  store i64 %1048, i64* %1050, align 8
  %1051 = load i64, i64* %17, align 8
  %1052 = load i64*, i64** %2, align 8
  %1053 = getelementptr inbounds i64, i64* %1052, i64 13
  store i64 %1051, i64* %1053, align 8
  %1054 = load i64, i64* %18, align 8
  %1055 = load i64*, i64** %2, align 8
  %1056 = getelementptr inbounds i64, i64* %1055, i64 14
  store i64 %1054, i64* %1056, align 8
  %1057 = load i64, i64* %19, align 8
  %1058 = load i64*, i64** %2, align 8
  %1059 = getelementptr inbounds i64, i64* %1058, i64 15
  store i64 %1057, i64* %1059, align 8
  %1060 = load i64, i64* %20, align 8
  %1061 = load i64*, i64** %2, align 8
  %1062 = getelementptr inbounds i64, i64* %1061, i64 16
  store i64 %1060, i64* %1062, align 8
  %1063 = load i64, i64* %21, align 8
  %1064 = load i64*, i64** %2, align 8
  %1065 = getelementptr inbounds i64, i64* %1064, i64 17
  store i64 %1063, i64* %1065, align 8
  %1066 = load i64, i64* %22, align 8
  %1067 = load i64*, i64** %2, align 8
  %1068 = getelementptr inbounds i64, i64* %1067, i64 18
  store i64 %1066, i64* %1068, align 8
  %1069 = load i64, i64* %23, align 8
  %1070 = load i64*, i64** %2, align 8
  %1071 = getelementptr inbounds i64, i64* %1070, i64 19
  store i64 %1069, i64* %1071, align 8
  %1072 = load i64, i64* %24, align 8
  %1073 = load i64*, i64** %2, align 8
  %1074 = getelementptr inbounds i64, i64* %1073, i64 20
  store i64 %1072, i64* %1074, align 8
  %1075 = load i64, i64* %25, align 8
  %1076 = load i64*, i64** %2, align 8
  %1077 = getelementptr inbounds i64, i64* %1076, i64 21
  store i64 %1075, i64* %1077, align 8
  %1078 = load i64, i64* %26, align 8
  %1079 = load i64*, i64** %2, align 8
  %1080 = getelementptr inbounds i64, i64* %1079, i64 22
  store i64 %1078, i64* %1080, align 8
  %1081 = load i64, i64* %27, align 8
  %1082 = load i64*, i64** %2, align 8
  %1083 = getelementptr inbounds i64, i64* %1082, i64 23
  store i64 %1081, i64* %1083, align 8
  %1084 = load i64, i64* %28, align 8
  %1085 = load i64*, i64** %2, align 8
  %1086 = getelementptr inbounds i64, i64* %1085, i64 24
  store i64 %1084, i64* %1086, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake128_inc_finalize(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_finalize(i64* %5, i32 168, i8 zeroext 31)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @keccak_inc_finalize(i64*, i32, i8 zeroext) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i64
  %9 = load i64*, i64** %4, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 25
  %11 = load i64, i64* %10, align 8
  %12 = and i64 %11, 7
  %13 = mul i64 8, %12
  %14 = shl i64 %8, %13
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 25
  %17 = load i64, i64* %16, align 8
  %18 = lshr i64 %17, 3
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %18
  %21 = load i64, i64* %20, align 8
  %22 = xor i64 %21, %14
  store i64 %22, i64* %20, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %23, 1
  %25 = and i32 %24, 7
  %26 = mul i32 8, %25
  %27 = zext i32 %26 to i64
  %28 = shl i64 128, %27
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 1
  %31 = lshr i32 %30, 3
  %32 = zext i32 %31 to i64
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 %32
  %35 = load i64, i64* %34, align 8
  %36 = xor i64 %35, %28
  store i64 %36, i64* %34, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 25
  store i64 0, i64* %38, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake128_inc_squeeze(i8*, i64, %struct.shake128incctx*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shake128incctx*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.shake128incctx* %2, %struct.shake128incctx** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.shake128incctx*, %struct.shake128incctx** %6, align 8
  %10 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds [26 x i64], [26 x i64]* %10, i32 0, i32 0
  call void @keccak_inc_squeeze(i8* %7, i64 %8, i64* %11, i32 168)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @keccak_inc_squeeze(i8*, i64, i64*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

; <label>:10:                                     ; preds = %50, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %10
  %15 = load i64, i64* %9, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 25
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br label %20

; <label>:20:                                     ; preds = %14, %10
  %21 = phi i1 [ false, %10 ], [ %19, %14 ]
  br i1 %21, label %22, label %53

; <label>:22:                                     ; preds = %20
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 25
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %28, %29
  %31 = lshr i64 %30, 3
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %31
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 25
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = and i64 %42, 7
  %44 = mul i64 8, %43
  %45 = lshr i64 %34, %44
  %46 = trunc i64 %45 to i8
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8 %46, i8* %49, align 1
  br label %50

; <label>:50:                                     ; preds = %22
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %10

; <label>:53:                                     ; preds = %20
  %54 = load i64, i64* %9, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 25
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %65

; <label>:65:                                     ; preds = %98, %53
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %111

; <label>:68:                                     ; preds = %65
  %69 = load i64*, i64** %7, align 8
  call void @KeccakF1600_StatePermute(i64* %69)
  store i64 0, i64* %9, align 8
  br label %70

; <label>:70:                                     ; preds = %95, %68
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %79

; <label>:74:                                     ; preds = %70
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br label %79

; <label>:79:                                     ; preds = %74, %70
  %80 = phi i1 [ false, %70 ], [ %78, %74 ]
  br i1 %80, label %81, label %98

; <label>:81:                                     ; preds = %79
  %82 = load i64, i64* %9, align 8
  %83 = lshr i64 %82, 3
  %84 = load i64*, i64** %7, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 %83
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = and i64 %87, 7
  %89 = mul i64 8, %88
  %90 = lshr i64 %86, %89
  %91 = trunc i64 %90 to i8
  %92 = load i64, i64* %9, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8 %91, i8* %94, align 1
  br label %95

; <label>:95:                                     ; preds = %81
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %70

; <label>:98:                                     ; preds = %79
  %99 = load i64, i64* %9, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %101, i8** %5, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = sub i64 %106, %107
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 25
  store i64 %108, i64* %110, align 8
  br label %65

; <label>:111:                                    ; preds = %65
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256_inc_init(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_init(i64* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256_inc_absorb(%struct.shake128incctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_inc_absorb(i64* %9, i32 136, i8* %10, i64 %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256_inc_finalize(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_finalize(i64* %5, i32 136, i8 zeroext 31)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256_inc_squeeze(i8*, i64, %struct.shake128incctx*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shake128incctx*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.shake128incctx* %2, %struct.shake128incctx** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.shake128incctx*, %struct.shake128incctx** %6, align 8
  %10 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds [26 x i64], [26 x i64]* %10, i32 0, i32 0
  call void @keccak_inc_squeeze(i8* %7, i64 %8, i64* %11, i32 136)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake128_absorb(%struct.shake128ctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128ctx* %0, %struct.shake128ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128ctx*, %struct.shake128ctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128ctx, %struct.shake128ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [25 x i64], [25 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_absorb(i64* %9, i32 168, i8* %10, i64 %11, i8 zeroext 31)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @keccak_absorb(i64*, i32, i8*, i64, i8 zeroext) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca [200 x i8], align 16
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  store i64 0, i64* %11, align 8
  br label %13

; <label>:13:                                     ; preds = %20, %5
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 25
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %13
  %17 = load i64, i64* %11, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 %17
  store i64 0, i64* %19, align 8
  br label %20

; <label>:20:                                     ; preds = %16
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %11, align 8
  br label %13

; <label>:23:                                     ; preds = %13
  br label %24

; <label>:24:                                     ; preds = %50, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp uge i64 %25, %27
  br i1 %28, label %29, label %60

; <label>:29:                                     ; preds = %24
  store i64 0, i64* %11, align 8
  br label %30

; <label>:30:                                     ; preds = %47, %29
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = udiv i32 %32, 8
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %50

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = mul i64 8, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i64 @load64(i8* %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 %42
  %45 = load i64, i64* %44, align 8
  %46 = xor i64 %45, %41
  store i64 %46, i64* %44, align 8
  br label %47

; <label>:47:                                     ; preds = %36
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  br label %30

; <label>:50:                                     ; preds = %30
  %51 = load i64*, i64** %6, align 8
  call void @KeccakF1600_StatePermute(i64* %51)
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %8, align 8
  br label %24

; <label>:60:                                     ; preds = %24
  store i64 0, i64* %11, align 8
  br label %61

; <label>:61:                                     ; preds = %69, %60
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %61
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 %67
  store i8 0, i8* %68, align 1
  br label %69

; <label>:69:                                     ; preds = %66
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %61

; <label>:72:                                     ; preds = %61
  store i64 0, i64* %11, align 8
  br label %73

; <label>:73:                                     ; preds = %84, %72
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %87

; <label>:77:                                     ; preds = %73
  %78 = load i64, i64* %11, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  %81 = load i8, i8* %80, align 1
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 %82
  store i8 %81, i8* %83, align 1
  br label %84

; <label>:84:                                     ; preds = %77
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %73

; <label>:87:                                     ; preds = %73
  %88 = load i8, i8* %10, align 1
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 %89
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* %7, align 4
  %92 = sub i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, 128
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 1
  store i64 0, i64* %11, align 8
  br label %99

; <label>:99:                                     ; preds = %116, %87
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %7, align 4
  %102 = udiv i32 %101, 8
  %103 = zext i32 %102 to i64
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %119

; <label>:105:                                    ; preds = %99
  %106 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i32 0, i32 0
  %107 = load i64, i64* %11, align 8
  %108 = mul i64 8, %107
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i64 @load64(i8* %109)
  %111 = load i64, i64* %11, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 %111
  %114 = load i64, i64* %113, align 8
  %115 = xor i64 %114, %110
  store i64 %115, i64* %113, align 8
  br label %116

; <label>:116:                                    ; preds = %105
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %99

; <label>:119:                                    ; preds = %99
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @load64(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

; <label>:5:                                      ; preds = %19, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = load i64, i64* %4, align 8
  %15 = mul i64 8, %14
  %16 = shl i64 %13, %15
  %17 = load i64, i64* %3, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %19

; <label>:19:                                     ; preds = %8
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %5

; <label>:22:                                     ; preds = %5
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

; Function Attrs: nounwind ssp uwtable
define void @shake128_squeezeblocks(i8*, i64, %struct.shake128ctx*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shake128ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.shake128ctx* %2, %struct.shake128ctx** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.shake128ctx*, %struct.shake128ctx** %6, align 8
  %10 = getelementptr inbounds %struct.shake128ctx, %struct.shake128ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds [25 x i64], [25 x i64]* %10, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %7, i64 %8, i64* %11, i32 168)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @keccak_squeezeblocks(i8*, i64, i64*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %33, %4
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %40

; <label>:13:                                     ; preds = %10
  %14 = load i64*, i64** %7, align 8
  call void @KeccakF1600_StatePermute(i64* %14)
  store i64 0, i64* %9, align 8
  br label %15

; <label>:15:                                     ; preds = %30, %13
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = lshr i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 8, %23
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i64, i64* %9, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 %26
  %29 = load i64, i64* %28, align 8
  call void @store64(i8* %25, i64 %29)
  br label %30

; <label>:30:                                     ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %15

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %6, align 8
  br label %10

; <label>:40:                                     ; preds = %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @store64(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %18, %2
  %7 = load i64, i64* %5, align 8
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = mul i64 8, %11
  %13 = lshr i64 %10, %12
  %14 = trunc i64 %13 to i8
  %15 = load i64, i64* %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8 %14, i8* %17, align 1
  br label %18

; <label>:18:                                     ; preds = %9
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %5, align 8
  br label %6

; <label>:21:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256_absorb(%struct.shake128ctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128ctx* %0, %struct.shake128ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128ctx*, %struct.shake128ctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128ctx, %struct.shake128ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [25 x i64], [25 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_absorb(i64* %9, i32 136, i8* %10, i64 %11, i8 zeroext 31)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256_squeezeblocks(i8*, i64, %struct.shake128ctx*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shake128ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.shake128ctx* %2, %struct.shake128ctx** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.shake128ctx*, %struct.shake128ctx** %6, align 8
  %10 = getelementptr inbounds %struct.shake128ctx, %struct.shake128ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds [25 x i64], [25 x i64]* %10, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %7, i64 %8, i64* %11, i32 136)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake128(i8*, i64, i8*, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [168 x i8], align 16
  %11 = alloca %struct.shake128ctx, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 168
  store i64 %14, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  call void @shake128_absorb(%struct.shake128ctx* %11, i8* %15, i64 %16)
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %9, align 8
  call void @shake128_squeezeblocks(i8* %17, i64 %18, %struct.shake128ctx* %11)
  %19 = load i64, i64* %9, align 8
  %20 = mul i64 %19, 168
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %23, 168
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %4
  %30 = getelementptr inbounds [168 x i8], [168 x i8]* %10, i32 0, i32 0
  call void @shake128_squeezeblocks(i8* %30, i64 1, %struct.shake128ctx* %11)
  store i64 0, i64* %12, align 8
  br label %31

; <label>:31:                                     ; preds = %42, %29
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds [168 x i8], [168 x i8]* %10, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8 %38, i8* %41, align 1
  br label %42

; <label>:42:                                     ; preds = %35
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %31

; <label>:45:                                     ; preds = %31
  br label %46

; <label>:46:                                     ; preds = %45, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @shake256(i8*, i64, i8*, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [136 x i8], align 16
  %11 = alloca %struct.shake128ctx, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 136
  store i64 %14, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  call void @shake256_absorb(%struct.shake128ctx* %11, i8* %15, i64 %16)
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %9, align 8
  call void @shake256_squeezeblocks(i8* %17, i64 %18, %struct.shake128ctx* %11)
  %19 = load i64, i64* %9, align 8
  %20 = mul i64 %19, 136
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %23, 136
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %4
  %30 = getelementptr inbounds [136 x i8], [136 x i8]* %10, i32 0, i32 0
  call void @shake256_squeezeblocks(i8* %30, i64 1, %struct.shake128ctx* %11)
  store i64 0, i64* %12, align 8
  br label %31

; <label>:31:                                     ; preds = %42, %29
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds [136 x i8], [136 x i8]* %10, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8 %38, i8* %41, align 1
  br label %42

; <label>:42:                                     ; preds = %35
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %31

; <label>:45:                                     ; preds = %31
  br label %46

; <label>:46:                                     ; preds = %45, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_256_inc_init(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_init(i64* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_256_inc_absorb(%struct.shake128incctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_inc_absorb(i64* %9, i32 136, i8* %10, i64 %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_256_inc_finalize(i8*, %struct.shake128incctx*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca [136 x i8], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.shake128incctx* %1, %struct.shake128incctx** %4, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  call void @keccak_inc_finalize(i64* %9, i32 136, i8 zeroext 6)
  %10 = getelementptr inbounds [136 x i8], [136 x i8]* %5, i32 0, i32 0
  %11 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %12 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds [26 x i64], [26 x i64]* %12, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %10, i64 1, i64* %13, i32 136)
  store i64 0, i64* %6, align 8
  br label %14

; <label>:14:                                     ; preds = %24, %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 32
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds [136 x i8], [136 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i64, i64* %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8 %20, i8* %23, align 1
  br label %24

; <label>:24:                                     ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %14

; <label>:27:                                     ; preds = %14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_256(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [25 x i64], align 16
  %8 = alloca [136 x i8], align 16
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds [25 x i64], [25 x i64]* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  call void @keccak_absorb(i64* %10, i32 136, i8* %11, i64 %12, i8 zeroext 6)
  %13 = getelementptr inbounds [136 x i8], [136 x i8]* %8, i32 0, i32 0
  %14 = getelementptr inbounds [25 x i64], [25 x i64]* %7, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %13, i64 1, i64* %14, i32 136)
  store i64 0, i64* %9, align 8
  br label %15

; <label>:15:                                     ; preds = %25, %3
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %16, 32
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds [136 x i8], [136 x i8]* %8, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8 %21, i8* %24, align 1
  br label %25

; <label>:25:                                     ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %15

; <label>:28:                                     ; preds = %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_384_inc_init(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_init(i64* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_384_inc_absorb(%struct.shake128incctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_inc_absorb(i64* %9, i32 104, i8* %10, i64 %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_384_inc_finalize(i8*, %struct.shake128incctx*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca [104 x i8], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.shake128incctx* %1, %struct.shake128incctx** %4, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  call void @keccak_inc_finalize(i64* %9, i32 104, i8 zeroext 6)
  %10 = getelementptr inbounds [104 x i8], [104 x i8]* %5, i32 0, i32 0
  %11 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %12 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds [26 x i64], [26 x i64]* %12, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %10, i64 1, i64* %13, i32 104)
  store i64 0, i64* %6, align 8
  br label %14

; <label>:14:                                     ; preds = %24, %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 48
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds [104 x i8], [104 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i64, i64* %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8 %20, i8* %23, align 1
  br label %24

; <label>:24:                                     ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %14

; <label>:27:                                     ; preds = %14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_384(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [25 x i64], align 16
  %8 = alloca [104 x i8], align 16
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds [25 x i64], [25 x i64]* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  call void @keccak_absorb(i64* %10, i32 104, i8* %11, i64 %12, i8 zeroext 6)
  %13 = getelementptr inbounds [104 x i8], [104 x i8]* %8, i32 0, i32 0
  %14 = getelementptr inbounds [25 x i64], [25 x i64]* %7, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %13, i64 1, i64* %14, i32 104)
  store i64 0, i64* %9, align 8
  br label %15

; <label>:15:                                     ; preds = %25, %3
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %16, 48
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds [104 x i8], [104 x i8]* %8, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8 %21, i8* %24, align 1
  br label %25

; <label>:25:                                     ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %15

; <label>:28:                                     ; preds = %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_512_inc_init(%struct.shake128incctx*) #0 {
  %2 = alloca %struct.shake128incctx*, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %2, align 8
  %3 = load %struct.shake128incctx*, %struct.shake128incctx** %2, align 8
  %4 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %3, i32 0, i32 0
  %5 = getelementptr inbounds [26 x i64], [26 x i64]* %4, i32 0, i32 0
  call void @keccak_inc_init(i64* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_512_inc_absorb(%struct.shake128incctx*, i8*, i64) #0 {
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.shake128incctx* %0, %struct.shake128incctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  call void @keccak_inc_absorb(i64* %9, i32 72, i8* %10, i64 %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_512_inc_finalize(i8*, %struct.shake128incctx*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.shake128incctx*, align 8
  %5 = alloca [72 x i8], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.shake128incctx* %1, %struct.shake128incctx** %4, align 8
  %7 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %8 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds [26 x i64], [26 x i64]* %8, i32 0, i32 0
  call void @keccak_inc_finalize(i64* %9, i32 72, i8 zeroext 6)
  %10 = getelementptr inbounds [72 x i8], [72 x i8]* %5, i32 0, i32 0
  %11 = load %struct.shake128incctx*, %struct.shake128incctx** %4, align 8
  %12 = getelementptr inbounds %struct.shake128incctx, %struct.shake128incctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds [26 x i64], [26 x i64]* %12, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %10, i64 1, i64* %13, i32 72)
  store i64 0, i64* %6, align 8
  br label %14

; <label>:14:                                     ; preds = %24, %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 64
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds [72 x i8], [72 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i64, i64* %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8 %20, i8* %23, align 1
  br label %24

; <label>:24:                                     ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %14

; <label>:27:                                     ; preds = %14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sha3_512(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [25 x i64], align 16
  %8 = alloca [72 x i8], align 16
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds [25 x i64], [25 x i64]* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  call void @keccak_absorb(i64* %10, i32 72, i8* %11, i64 %12, i8 zeroext 6)
  %13 = getelementptr inbounds [72 x i8], [72 x i8]* %8, i32 0, i32 0
  %14 = getelementptr inbounds [25 x i64], [25 x i64]* %7, i32 0, i32 0
  call void @keccak_squeezeblocks(i8* %13, i64 1, i64* %14, i32 72)
  store i64 0, i64* %9, align 8
  br label %15

; <label>:15:                                     ; preds = %25, %3
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %16, 64
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds [72 x i8], [72 x i8]* %8, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8 %21, i8* %24, align 1
  br label %25

; <label>:25:                                     ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %15

; <label>:28:                                     ; preds = %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_ntt(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %6, align 4
  store i32 128, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %76, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %79

; <label>:12:                                     ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

; <label>:13:                                     ; preds = %71, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 256
  br i1 %15, label %16, label %75

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* @zetas, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %5, align 4
  br label %23

; <label>:23:                                     ; preds = %67, %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %25, %26
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %70

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %31, %39
  %41 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %43
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 16760834
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %50, %51
  %53 = zext i32 %52 to i64
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 %53
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = load i32*, i32** %2, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32 %62, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %29
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %23

; <label>:70:                                     ; preds = %23
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %72, %73
  store i32 %74, i32* %4, align 4
  br label %13

; <label>:75:                                     ; preds = %13
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = lshr i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %9

; <label>:79:                                     ; preds = %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 41978, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %92, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %11, 256
  br i1 %12, label %13, label %95

; <label>:13:                                     ; preds = %10
  store i32 0, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %87, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp ult i32 %15, 256
  br i1 %16, label %17, label %91

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* @zetas_inv, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %5, align 4
  br label %24

; <label>:24:                                     ; preds = %83, %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %26, %27
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %86

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %36, %43
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 2145386752
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 %54
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %50, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = load i32*, i32** %2, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  %75 = mul i64 %66, %74
  %76 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  store i32 %76, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %30
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %24

; <label>:86:                                     ; preds = %24
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %88, %89
  store i32 %90, i32* %3, align 4
  br label %14

; <label>:91:                                     ; preds = %14
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %10

; <label>:95:                                     ; preds = %10
  store i32 0, i32* %5, align 4
  br label %96

; <label>:96:                                     ; preds = %112, %95
  %97 = load i32, i32* %5, align 4
  %98 = icmp ult i32 %97, 256
  br i1 %98, label %99, label %115

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = load i32*, i32** %2, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 %101
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = mul i64 41978, %105
  %107 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %106)
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = load i32*, i32** %2, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  store i32 %107, i32* %111, align 4
  br label %112

; <label>:112:                                    ; preds = %99
  %113 = load i32, i32* %5, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %96

; <label>:115:                                    ; preds = %96
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_pk(i8*, i8*, %struct.polyveck*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %24

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = load i8, i8* %15, align 1
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8 %16, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 32
  store i8* %26, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %41, %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %44

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul i32 %32, 288
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %39 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %38, i32 0, i32 0
  %40 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %39, i64 0, i64 %37
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8* %35, %struct.poly* %40)
  br label %41

; <label>:41:                                     ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %27

; <label>:44:                                     ; preds = %27
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(i8*, %struct.polyveck*, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %24

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = load i8, i8* %15, align 1
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8 %16, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 32
  store i8* %26, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %41, %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %44

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %34 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %33, i32 0, i32 0
  %35 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %34, i64 0, i64 %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = mul i32 %37, 288
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly* %35, i8* %40)
  br label %41

; <label>:41:                                     ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %27

; <label>:44:                                     ; preds = %27
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_sk(i8*, i8*, i8*, i8*, %struct.polyvecl*, %struct.polyveck*, %struct.polyveck*) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.polyvecl*, align 8
  %13 = alloca %struct.polyveck*, align 8
  %14 = alloca %struct.polyveck*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.polyvecl* %4, %struct.polyvecl** %12, align 8
  store %struct.polyveck* %5, %struct.polyveck** %13, align 8
  store %struct.polyveck* %6, %struct.polyveck** %14, align 8
  store i32 0, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %29, %7
  %17 = load i32, i32* %15, align 4
  %18 = icmp ult i32 %17, 32
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %15, align 4
  %21 = zext i32 %20 to i64
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  %24 = load i8, i8* %23, align 1
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8 %24, i8* %28, align 1
  br label %29

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %15, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %15, align 4
  br label %16

; <label>:32:                                     ; preds = %16
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 32
  store i8* %34, i8** %8, align 8
  store i32 0, i32* %15, align 4
  br label %35

; <label>:35:                                     ; preds = %48, %32
  %36 = load i32, i32* %15, align 4
  %37 = icmp ult i32 %36, 32
  br i1 %37, label %38, label %51

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8 %43, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %15, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %35

; <label>:51:                                     ; preds = %35
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 32
  store i8* %53, i8** %8, align 8
  store i32 0, i32* %15, align 4
  br label %54

; <label>:54:                                     ; preds = %67, %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp ult i32 %55, 48
  br i1 %56, label %57, label %70

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = load i8, i8* %61, align 1
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8 %62, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %57
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %54

; <label>:70:                                     ; preds = %54
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 48
  store i8* %72, i8** %8, align 8
  store i32 0, i32* %15, align 4
  br label %73

; <label>:73:                                     ; preds = %87, %70
  %74 = load i32, i32* %15, align 4
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %76, label %90

; <label>:76:                                     ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = mul i32 %78, 128
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i32, i32* %15, align 4
  %83 = zext i32 %82 to i64
  %84 = load %struct.polyvecl*, %struct.polyvecl** %12, align 8
  %85 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %84, i32 0, i32 0
  %86 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %85, i64 0, i64 %83
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %81, %struct.poly* %86)
  br label %87

; <label>:87:                                     ; preds = %76
  %88 = load i32, i32* %15, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %73

; <label>:90:                                     ; preds = %73
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 384
  store i8* %92, i8** %8, align 8
  store i32 0, i32* %15, align 4
  br label %93

; <label>:93:                                     ; preds = %107, %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp ult i32 %94, 4
  br i1 %95, label %96, label %110

; <label>:96:                                     ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = mul i32 %98, 128
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i32, i32* %15, align 4
  %103 = zext i32 %102 to i64
  %104 = load %struct.polyveck*, %struct.polyveck** %13, align 8
  %105 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %104, i32 0, i32 0
  %106 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %105, i64 0, i64 %103
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8* %101, %struct.poly* %106)
  br label %107

; <label>:107:                                    ; preds = %96
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %93

; <label>:110:                                    ; preds = %93
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 512
  store i8* %112, i8** %8, align 8
  store i32 0, i32* %15, align 4
  br label %113

; <label>:113:                                    ; preds = %127, %110
  %114 = load i32, i32* %15, align 4
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %130

; <label>:116:                                    ; preds = %113
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = mul i32 %118, 448
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i32, i32* %15, align 4
  %123 = zext i32 %122 to i64
  %124 = load %struct.polyveck*, %struct.polyveck** %14, align 8
  %125 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %124, i32 0, i32 0
  %126 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %125, i64 0, i64 %123
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8* %121, %struct.poly* %126)
  br label %127

; <label>:127:                                    ; preds = %116
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %113

; <label>:130:                                    ; preds = %113
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(i8*, i8*, i8*, %struct.polyvecl*, %struct.polyveck*, %struct.polyveck*, i8*) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.polyvecl*, align 8
  %12 = alloca %struct.polyveck*, align 8
  %13 = alloca %struct.polyveck*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.polyvecl* %3, %struct.polyvecl** %11, align 8
  store %struct.polyveck* %4, %struct.polyveck** %12, align 8
  store %struct.polyveck* %5, %struct.polyveck** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %29, %7
  %17 = load i32, i32* %15, align 4
  %18 = icmp ult i32 %17, 32
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %15, align 4
  %21 = zext i32 %20 to i64
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  %24 = load i8, i8* %23, align 1
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8 %24, i8* %28, align 1
  br label %29

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %15, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %15, align 4
  br label %16

; <label>:32:                                     ; preds = %16
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 32
  store i8* %34, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %35

; <label>:35:                                     ; preds = %48, %32
  %36 = load i32, i32* %15, align 4
  %37 = icmp ult i32 %36, 32
  br i1 %37, label %38, label %51

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8 %43, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %15, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %35

; <label>:51:                                     ; preds = %35
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 32
  store i8* %53, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %54

; <label>:54:                                     ; preds = %67, %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp ult i32 %55, 48
  br i1 %56, label %57, label %70

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = load i8, i8* %61, align 1
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8 %62, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %57
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %54

; <label>:70:                                     ; preds = %54
  %71 = load i8*, i8** %14, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 48
  store i8* %72, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %73

; <label>:73:                                     ; preds = %87, %70
  %74 = load i32, i32* %15, align 4
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %76, label %90

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = load %struct.polyvecl*, %struct.polyvecl** %11, align 8
  %80 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %79, i32 0, i32 0
  %81 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %80, i64 0, i64 %78
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = mul i32 %83, 128
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %81, i8* %86)
  br label %87

; <label>:87:                                     ; preds = %76
  %88 = load i32, i32* %15, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %73

; <label>:90:                                     ; preds = %73
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 384
  store i8* %92, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %93

; <label>:93:                                     ; preds = %107, %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp ult i32 %94, 4
  br i1 %95, label %96, label %110

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = load %struct.polyveck*, %struct.polyveck** %12, align 8
  %100 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %99, i32 0, i32 0
  %101 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %100, i64 0, i64 %98
  %102 = load i8*, i8** %14, align 8
  %103 = load i32, i32* %15, align 4
  %104 = mul i32 %103, 128
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly* %101, i8* %106)
  br label %107

; <label>:107:                                    ; preds = %96
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %93

; <label>:110:                                    ; preds = %93
  %111 = load i8*, i8** %14, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 512
  store i8* %112, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %113

; <label>:113:                                    ; preds = %127, %110
  %114 = load i32, i32* %15, align 4
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %130

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = load %struct.polyveck*, %struct.polyveck** %13, align 8
  %120 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %119, i32 0, i32 0
  %121 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %120, i64 0, i64 %118
  %122 = load i8*, i8** %14, align 8
  %123 = load i32, i32* %15, align 4
  %124 = mul i32 %123, 448
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly* %121, i8* %126)
  br label %127

; <label>:127:                                    ; preds = %116
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %113

; <label>:130:                                    ; preds = %113
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_pack_sig(i8*, %struct.polyvecl*, %struct.polyveck*, %struct.poly*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.polyvecl*, align 8
  %7 = alloca %struct.polyveck*, align 8
  %8 = alloca %struct.poly*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.polyvecl* %1, %struct.polyvecl** %6, align 8
  store %struct.polyveck* %2, %struct.polyveck** %7, align 8
  store %struct.poly* %3, %struct.poly** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

; <label>:14:                                     ; preds = %28, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = mul i32 %19, 640
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = load %struct.polyvecl*, %struct.polyvecl** %6, align 8
  %26 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %25, i32 0, i32 0
  %27 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %26, i64 0, i64 %24
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8* %22, %struct.poly* %27)
  br label %28

; <label>:28:                                     ; preds = %17
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %14

; <label>:31:                                     ; preds = %14
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1920
  store i8* %33, i8** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %34

; <label>:34:                                     ; preds = %73, %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %76

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %10, align 4
  br label %38

; <label>:38:                                     ; preds = %62, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp ult i32 %39, 256
  br i1 %40, label %41, label %65

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.polyveck*, %struct.polyveck** %7, align 8
  %47 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %46, i32 0, i32 0
  %48 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %47, i64 0, i64 %45
  %49 = getelementptr inbounds %struct.poly, %struct.poly* %48, i32 0, i32 0
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %49, i64 0, i64 %43
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* %10, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = zext i32 %56 to i64
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8 %55, i8* %60, align 1
  br label %61

; <label>:61:                                     ; preds = %53, %41
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %38

; <label>:65:                                     ; preds = %38
  %66 = load i32, i32* %11, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i32, i32* %9, align 4
  %69 = add i32 80, %68
  %70 = zext i32 %69 to i64
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8 %67, i8* %72, align 1
  br label %73

; <label>:73:                                     ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %34

; <label>:76:                                     ; preds = %34
  br label %77

; <label>:77:                                     ; preds = %80, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp ult i32 %78, 80
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = zext i32 %81 to i64
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8 0, i8* %85, align 1
  br label %77

; <label>:86:                                     ; preds = %77
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 84
  store i8* %88, i8** %5, align 8
  store i64 0, i64* %12, align 8
  store i64 1, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %89

; <label>:89:                                     ; preds = %146, %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ult i32 %90, 32
  br i1 %91, label %92, label %149

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8 0, i8* %96, align 1
  store i32 0, i32* %10, align 4
  br label %97

; <label>:97:                                     ; preds = %142, %92
  %98 = load i32, i32* %10, align 4
  %99 = icmp ult i32 %98, 8
  br i1 %99, label %100, label %145

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = mul i32 8, %101
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %102, %103
  %105 = zext i32 %104 to i64
  %106 = load %struct.poly*, %struct.poly** %8, align 8
  %107 = getelementptr inbounds %struct.poly, %struct.poly* %106, i32 0, i32 0
  %108 = getelementptr inbounds [256 x i32], [256 x i32]* %107, i64 0, i64 %105
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %141

; <label>:111:                                    ; preds = %100
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 1, %112
  %114 = trunc i32 %113 to i8
  %115 = zext i8 %114 to i32
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %115
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  %124 = load i32, i32* %9, align 4
  %125 = mul i32 8, %124
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = load %struct.poly*, %struct.poly** %8, align 8
  %130 = getelementptr inbounds %struct.poly, %struct.poly* %129, i32 0, i32 0
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %130, i64 0, i64 %128
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 8380416
  br i1 %133, label %134, label %138

; <label>:134:                                    ; preds = %111
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %12, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %12, align 8
  br label %138

; <label>:138:                                    ; preds = %134, %111
  %139 = load i64, i64* %13, align 8
  %140 = shl i64 %139, 1
  store i64 %140, i64* %13, align 8
  br label %141

; <label>:141:                                    ; preds = %138, %100
  br label %142

; <label>:142:                                    ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %97

; <label>:145:                                    ; preds = %97
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %89

; <label>:149:                                    ; preds = %89
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 32
  store i8* %151, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %152

; <label>:152:                                    ; preds = %166, %149
  %153 = load i32, i32* %9, align 4
  %154 = icmp ult i32 %153, 8
  br i1 %154, label %155, label %169

; <label>:155:                                    ; preds = %152
  %156 = load i64, i64* %12, align 8
  %157 = load i32, i32* %9, align 4
  %158 = mul i32 8, %157
  %159 = zext i32 %158 to i64
  %160 = lshr i64 %156, %159
  %161 = trunc i64 %160 to i8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8 %161, i8* %165, align 1
  br label %166

; <label>:166:                                    ; preds = %155
  %167 = load i32, i32* %9, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %152

; <label>:169:                                    ; preds = %152
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(%struct.polyvecl*, %struct.polyveck*, %struct.poly*, i8*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.polyvecl*, align 8
  %7 = alloca %struct.polyveck*, align 8
  %8 = alloca %struct.poly*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.polyvecl* %0, %struct.polyvecl** %6, align 8
  store %struct.polyveck* %1, %struct.polyveck** %7, align 8
  store %struct.poly* %2, %struct.poly** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

; <label>:14:                                     ; preds = %28, %4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.polyvecl*, %struct.polyvecl** %6, align 8
  %21 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %20, i32 0, i32 0
  %22 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %21, i64 0, i64 %19
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = mul i32 %24, 640
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly* %22, i8* %27)
  br label %28

; <label>:28:                                     ; preds = %17
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %14

; <label>:31:                                     ; preds = %14
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1920
  store i8* %33, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %34

; <label>:34:                                     ; preds = %131, %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %134

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %11, align 4
  br label %38

; <label>:38:                                     ; preds = %51, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %39, 256
  br i1 %40, label %41, label %54

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.polyveck*, %struct.polyveck** %7, align 8
  %47 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %46, i32 0, i32 0
  %48 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %47, i64 0, i64 %45
  %49 = getelementptr inbounds %struct.poly, %struct.poly* %48, i32 0, i32 0
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %49, i64 0, i64 %43
  store i32 0, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %41
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %38

; <label>:54:                                     ; preds = %38
  %55 = load i32, i32* %10, align 4
  %56 = add i32 80, %55
  %57 = zext i32 %56 to i64
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %73, label %64

; <label>:64:                                     ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = add i32 80, %65
  %67 = zext i32 %66 to i64
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sgt i32 %71, 80
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %64, %54
  store i32 1, i32* %5, align 4
  br label %246

; <label>:74:                                     ; preds = %64
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %11, align 4
  br label %76

; <label>:76:                                     ; preds = %120, %74
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add i32 80, %78
  %80 = zext i32 %79 to i64
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ult i32 %77, %84
  br i1 %85, label %86, label %123

; <label>:86:                                     ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %106

; <label>:90:                                     ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* %11, align 4
  %98 = sub i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sle i32 %96, %103
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %90
  store i32 1, i32* %5, align 4
  br label %246

; <label>:106:                                    ; preds = %90, %86
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i64
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = load %struct.polyveck*, %struct.polyveck** %7, align 8
  %116 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %115, i32 0, i32 0
  %117 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %116, i64 0, i64 %114
  %118 = getelementptr inbounds %struct.poly, %struct.poly* %117, i32 0, i32 0
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %118, i64 0, i64 %112
  store i32 1, i32* %119, align 4
  br label %120

; <label>:120:                                    ; preds = %106
  %121 = load i32, i32* %11, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %76

; <label>:123:                                    ; preds = %76
  %124 = load i32, i32* %10, align 4
  %125 = add i32 80, %124
  %126 = zext i32 %125 to i64
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 %126
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  store i32 %130, i32* %12, align 4
  br label %131

; <label>:131:                                    ; preds = %123
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %34

; <label>:134:                                    ; preds = %34
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %11, align 4
  br label %136

; <label>:136:                                    ; preds = %148, %134
  %137 = load i32, i32* %11, align 4
  %138 = icmp ult i32 %137, 80
  br i1 %138, label %139, label %151

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %147

; <label>:146:                                    ; preds = %139
  store i32 1, i32* %5, align 4
  br label %246

; <label>:147:                                    ; preds = %139
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %136

; <label>:151:                                    ; preds = %136
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 84
  store i8* %153, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %154

; <label>:154:                                    ; preds = %163, %151
  %155 = load i32, i32* %10, align 4
  %156 = icmp ult i32 %155, 256
  br i1 %156, label %157, label %166

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = load %struct.poly*, %struct.poly** %8, align 8
  %161 = getelementptr inbounds %struct.poly, %struct.poly* %160, i32 0, i32 0
  %162 = getelementptr inbounds [256 x i32], [256 x i32]* %161, i64 0, i64 %159
  store i32 0, i32* %162, align 4
  br label %163

; <label>:163:                                    ; preds = %157
  %164 = load i32, i32* %10, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %154

; <label>:166:                                    ; preds = %154
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %167

; <label>:167:                                    ; preds = %184, %166
  %168 = load i32, i32* %10, align 4
  %169 = icmp ult i32 %168, 8
  br i1 %169, label %170, label %187

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %10, align 4
  %172 = add i32 32, %171
  %173 = zext i32 %172 to i64
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i64
  %178 = load i32, i32* %10, align 4
  %179 = mul i32 8, %178
  %180 = zext i32 %179 to i64
  %181 = shl i64 %177, %180
  %182 = load i64, i64* %13, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %13, align 8
  br label %184

; <label>:184:                                    ; preds = %170
  %185 = load i32, i32* %10, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %167

; <label>:187:                                    ; preds = %167
  %188 = load i64, i64* %13, align 8
  %189 = lshr i64 %188, 60
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

; <label>:191:                                    ; preds = %187
  store i32 1, i32* %5, align 4
  br label %246

; <label>:192:                                    ; preds = %187
  store i32 0, i32* %10, align 4
  br label %193

; <label>:193:                                    ; preds = %242, %192
  %194 = load i32, i32* %10, align 4
  %195 = icmp ult i32 %194, 32
  br i1 %195, label %196, label %245

; <label>:196:                                    ; preds = %193
  store i32 0, i32* %11, align 4
  br label %197

; <label>:197:                                    ; preds = %238, %196
  %198 = load i32, i32* %11, align 4
  %199 = icmp ult i32 %198, 8
  br i1 %199, label %200, label %241

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = zext i32 %201 to i64
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 %202
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = load i32, i32* %11, align 4
  %208 = ashr i32 %206, %207
  %209 = and i32 %208, 1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %237

; <label>:211:                                    ; preds = %200
  %212 = load i32, i32* %10, align 4
  %213 = mul i32 8, %212
  %214 = load i32, i32* %11, align 4
  %215 = add i32 %213, %214
  %216 = zext i32 %215 to i64
  %217 = load %struct.poly*, %struct.poly** %8, align 8
  %218 = getelementptr inbounds %struct.poly, %struct.poly* %217, i32 0, i32 0
  %219 = getelementptr inbounds [256 x i32], [256 x i32]* %218, i64 0, i64 %216
  store i32 1, i32* %219, align 4
  %220 = load i64, i64* %13, align 8
  %221 = trunc i64 %220 to i32
  %222 = and i32 %221, 1
  %223 = sub nsw i32 0, %222
  %224 = and i32 %223, 8380417
  %225 = load i32, i32* %10, align 4
  %226 = mul i32 8, %225
  %227 = load i32, i32* %11, align 4
  %228 = add i32 %226, %227
  %229 = zext i32 %228 to i64
  %230 = load %struct.poly*, %struct.poly** %8, align 8
  %231 = getelementptr inbounds %struct.poly, %struct.poly* %230, i32 0, i32 0
  %232 = getelementptr inbounds [256 x i32], [256 x i32]* %231, i64 0, i64 %229
  %233 = load i32, i32* %232, align 4
  %234 = xor i32 %233, %224
  store i32 %234, i32* %232, align 4
  %235 = load i64, i64* %13, align 8
  %236 = lshr i64 %235, 1
  store i64 %236, i64* %13, align 8
  br label %237

; <label>:237:                                    ; preds = %211, %200
  br label %238

; <label>:238:                                    ; preds = %237
  %239 = load i32, i32* %11, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %197

; <label>:241:                                    ; preds = %197
  br label %242

; <label>:242:                                    ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %193

; <label>:245:                                    ; preds = %193
  store i32 0, i32* %5, align 4
  br label %246

; <label>:246:                                    ; preds = %245, %191, %146, %105, %73
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly*) #0 {
  %2 = alloca %struct.poly*, align 8
  %3 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %23

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.poly*, %struct.poly** %2, align 8
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %10, i32 0, i32 0
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.poly*, %struct.poly** %2, align 8
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %17, i32 0, i32 0
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %16
  store i32 %14, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

; <label>:23:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly*) #0 {
  %2 = alloca %struct.poly*, align 8
  %3 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %23

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.poly*, %struct.poly** %2, align 8
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %10, i32 0, i32 0
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.poly*, %struct.poly** %2, align 8
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %17, i32 0, i32 0
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %16
  store i32 %14, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

; <label>:23:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly*) #0 {
  %2 = alloca %struct.poly*, align 8
  %3 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %23

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.poly*, %struct.poly** %2, align 8
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %10, i32 0, i32 0
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_freeze(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.poly*, %struct.poly** %2, align 8
  %18 = getelementptr inbounds %struct.poly, %struct.poly* %17, i32 0, i32 0
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %16
  store i32 %14, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

; <label>:23:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %30, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %33

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %5, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.poly*, %struct.poly** %6, align 8
  %21 = getelementptr inbounds %struct.poly, %struct.poly* %20, i32 0, i32 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %19
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %17, %23
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.poly*, %struct.poly** %4, align 8
  %28 = getelementptr inbounds %struct.poly, %struct.poly* %27, i32 0, i32 0
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 %26
  store i32 %24, i32* %29, align 4
  br label %30

; <label>:30:                                     ; preds = %11
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

; <label>:33:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %31, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %34

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %5, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, 16760834
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.poly*, %struct.poly** %6, align 8
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %21, i32 0, i32 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %20
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %18, %24
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.poly*, %struct.poly** %4, align 8
  %29 = getelementptr inbounds %struct.poly, %struct.poly* %28, i32 0, i32 0
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %29, i64 0, i64 %27
  store i32 %25, i32* %30, align 4
  br label %31

; <label>:31:                                     ; preds = %11
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %8

; <label>:34:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly*) #0 {
  %2 = alloca %struct.poly*, align 8
  %3 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %18

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.poly*, %struct.poly** %2, align 8
  %11 = getelementptr inbounds %struct.poly, %struct.poly* %10, i32 0, i32 0
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %9
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 14
  store i32 %14, i32* %12, align 4
  br label %15

; <label>:15:                                     ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

; <label>:18:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly*) #0 {
  %2 = alloca %struct.poly*, align 8
  store %struct.poly* %0, %struct.poly** %2, align 8
  %3 = load %struct.poly*, %struct.poly** %2, align 8
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %3, i32 0, i32 0
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i32 0, i32 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_ntt(i32* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly*) #0 {
  %2 = alloca %struct.poly*, align 8
  store %struct.poly* %0, %struct.poly** %2, align 8
  %3 = load %struct.poly*, %struct.poly** %2, align 8
  %4 = getelementptr inbounds %struct.poly, %struct.poly* %3, i32 0, i32 0
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i32 0, i32 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_invntt_frominvmont(i32* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %33, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %36

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %5, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.poly*, %struct.poly** %6, align 8
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %21, i32 0, i32 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %20
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %18, %25
  %27 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.poly*, %struct.poly** %4, align 8
  %31 = getelementptr inbounds %struct.poly, %struct.poly* %30, i32 0, i32 0
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %31, i64 0, i64 %29
  store i32 %27, i32* %32, align 4
  br label %33

; <label>:33:                                     ; preds = %11
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %8

; <label>:36:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %29, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %32

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %6, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.poly*, %struct.poly** %5, align 8
  %21 = getelementptr inbounds %struct.poly, %struct.poly* %20, i32 0, i32 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %19
  %23 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_power2round(i32 %17, i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.poly*, %struct.poly** %4, align 8
  %27 = getelementptr inbounds %struct.poly, %struct.poly* %26, i32 0, i32 0
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %27, i64 0, i64 %25
  store i32 %23, i32* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

; <label>:32:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %29, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %32

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %6, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.poly*, %struct.poly** %5, align 8
  %21 = getelementptr inbounds %struct.poly, %struct.poly* %20, i32 0, i32 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %19
  %23 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32 %17, i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.poly*, %struct.poly** %4, align 8
  %27 = getelementptr inbounds %struct.poly, %struct.poly* %26, i32 0, i32 0
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %27, i64 0, i64 %25
  store i32 %23, i32* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

; <label>:32:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %39, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 256
  br i1 %11, label %12, label %42

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = load %struct.poly*, %struct.poly** %5, align 8
  %16 = getelementptr inbounds %struct.poly, %struct.poly* %15, i32 0, i32 0
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %14
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.poly*, %struct.poly** %6, align 8
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %21, i32 0, i32 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %20
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_make_hint(i32 %18, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.poly*, %struct.poly** %4, align 8
  %29 = getelementptr inbounds %struct.poly, %struct.poly* %28, i32 0, i32 0
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %29, i64 0, i64 %27
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.poly*, %struct.poly** %4, align 8
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %33, i32 0, i32 0
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %34, i64 0, i64 %32
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

; <label>:39:                                     ; preds = %12
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %9

; <label>:42:                                     ; preds = %9
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly*, %struct.poly*, %struct.poly*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.poly*, align 8
  %6 = alloca %struct.poly*, align 8
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.poly* %1, %struct.poly** %5, align 8
  store %struct.poly* %2, %struct.poly** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %30, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %33

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %5, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.poly*, %struct.poly** %6, align 8
  %21 = getelementptr inbounds %struct.poly, %struct.poly* %20, i32 0, i32 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %19
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_use_hint(i32 %17, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.poly*, %struct.poly** %4, align 8
  %28 = getelementptr inbounds %struct.poly, %struct.poly* %27, i32 0, i32 0
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i64 0, i64 %26
  store i32 %24, i32* %29, align 4
  br label %30

; <label>:30:                                     ; preds = %11
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

; <label>:33:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ult i32 %9, 256
  br i1 %10, label %11, label %33

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %4, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 4190208, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 31
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 4190208, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %11
  store i32 1, i32* %3, align 4
  br label %34

; <label>:29:                                     ; preds = %11
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

; <label>:33:                                     ; preds = %8
  store i32 0, i32* %3, align 4
  br label %34

; <label>:34:                                     ; preds = %33, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly*, i8*, i16 zeroext) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [842 x i8], align 16
  %12 = alloca %struct.shake128ctx, align 8
  store %struct.poly* %0, %struct.poly** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 840, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i16, i16* %6, align 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx* %12, i8* %13, i16 zeroext %14)
  %15 = getelementptr inbounds [842 x i8], [842 x i8]* %11, i32 0, i32 0
  call void @shake128_squeezeblocks(i8* %15, i64 5, %struct.shake128ctx* %12)
  %16 = load %struct.poly*, %struct.poly** %4, align 8
  %17 = getelementptr inbounds %struct.poly, %struct.poly* %16, i32 0, i32 0
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i32 0, i32 0
  %19 = getelementptr inbounds [842 x i8], [842 x i8]* %11, i32 0, i32 0
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @rej_uniform(i32* %18, i32 256, i8* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %22

; <label>:22:                                     ; preds = %47, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 256
  br i1 %24, label %25, label %67

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = urem i32 %26, 3
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %28

; <label>:28:                                     ; preds = %44, %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [842 x i8], [842 x i8]* %11, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [842 x i8], [842 x i8]* %11, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %28

; <label>:47:                                     ; preds = %28
  %48 = load i32, i32* %9, align 4
  %49 = add i32 168, %48
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds [842 x i8], [842 x i8]* %11, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  call void @shake128_squeezeblocks(i8* %53, i64 1, %struct.shake128ctx* %12)
  %54 = load %struct.poly*, %struct.poly** %4, align 8
  %55 = getelementptr inbounds %struct.poly, %struct.poly* %54, i32 0, i32 0
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 256, %60
  %62 = getelementptr inbounds [842 x i8], [842 x i8]* %11, i32 0, i32 0
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rej_uniform(i32* %59, i32 %61, i8* %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %22

; <label>:67:                                     ; preds = %22
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @rej_uniform(i32*, i32, i8*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %62, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %10, align 4
  %18 = add i32 %17, 3
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %18, %19
  br label %21

; <label>:21:                                     ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  br i1 %22, label %23, label %63

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = zext i32 %24 to i64
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = zext i32 %31 to i64
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = zext i32 %41 to i64
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 8388607
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %53, 8380417
  br i1 %54, label %55, label %62

; <label>:55:                                     ; preds = %23
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = zext i32 %57 to i64
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 %59
  store i32 %56, i32* %61, align 4
  br label %62

; <label>:62:                                     ; preds = %55, %23
  br label %12

; <label>:63:                                     ; preds = %21
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly*, i8*, i16 zeroext) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca [168 x i8], align 16
  %9 = alloca %struct.shake128ctx, align 8
  store %struct.poly* %0, %struct.poly** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %10 = load i8*, i8** %5, align 8
  %11 = load i16, i16* %6, align 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx* %9, i8* %10, i16 zeroext %11)
  %12 = getelementptr inbounds [168 x i8], [168 x i8]* %8, i32 0, i32 0
  call void @shake128_squeezeblocks(i8* %12, i64 1, %struct.shake128ctx* %9)
  %13 = load %struct.poly*, %struct.poly** %4, align 8
  %14 = getelementptr inbounds %struct.poly, %struct.poly* %13, i32 0, i32 0
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i32 0, i32 0
  %16 = getelementptr inbounds [168 x i8], [168 x i8]* %8, i32 0, i32 0
  %17 = call i32 @rej_eta(i32* %15, i32 256, i8* %16, i32 168)
  store i32 %17, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %21, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 256
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds [168 x i8], [168 x i8]* %8, i32 0, i32 0
  call void @shake128_squeezeblocks(i8* %22, i64 1, %struct.shake128ctx* %9)
  %23 = load %struct.poly*, %struct.poly** %4, align 8
  %24 = getelementptr inbounds %struct.poly, %struct.poly* %23, i32 0, i32 0
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 256, %29
  %31 = getelementptr inbounds [168 x i8], [168 x i8]* %8, i32 0, i32 0
  %32 = call i32 @rej_eta(i32* %28, i32 %30, i8* %31, i32 168)
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %18

; <label>:35:                                     ; preds = %18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @rej_eta(i32*, i32, i8*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %64, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ult i32 %18, %19
  br label %21

; <label>:21:                                     ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %65

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 15
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = zext i32 %31 to i64
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ule i32 %39, 12
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = sub i32 8380423, %42
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = zext i32 %44 to i64
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32 %43, i32* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %41, %23
  %50 = load i32, i32* %12, align 4
  %51 = icmp ule i32 %50, 12
  br i1 %51, label %52, label %64

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %64

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 8380423, %57
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = zext i32 %59 to i64
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 %61
  store i32 %58, i32* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %56, %52, %49
  br label %13

; <label>:65:                                     ; preds = %21
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly*, i8*, i16 zeroext) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [684 x i8], align 16
  %12 = alloca %struct.shake128ctx, align 8
  store %struct.poly* %0, %struct.poly** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 680, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i16, i16* %6, align 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init(%struct.shake128ctx* %12, i8* %13, i16 zeroext %14)
  %15 = getelementptr inbounds [684 x i8], [684 x i8]* %11, i32 0, i32 0
  call void @shake256_squeezeblocks(i8* %15, i64 5, %struct.shake128ctx* %12)
  %16 = load %struct.poly*, %struct.poly** %4, align 8
  %17 = getelementptr inbounds %struct.poly, %struct.poly* %16, i32 0, i32 0
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i32 0, i32 0
  %19 = getelementptr inbounds [684 x i8], [684 x i8]* %11, i32 0, i32 0
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @rej_gamma1m1(i32* %18, i32 256, i8* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %22

; <label>:22:                                     ; preds = %47, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 256
  br i1 %24, label %25, label %67

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = urem i32 %26, 5
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %28

; <label>:28:                                     ; preds = %44, %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [684 x i8], [684 x i8]* %11, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [684 x i8], [684 x i8]* %11, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %28

; <label>:47:                                     ; preds = %28
  %48 = load i32, i32* %9, align 4
  %49 = add i32 136, %48
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds [684 x i8], [684 x i8]* %11, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  call void @shake256_squeezeblocks(i8* %53, i64 1, %struct.shake128ctx* %12)
  %54 = load %struct.poly*, %struct.poly** %4, align 8
  %55 = getelementptr inbounds %struct.poly, %struct.poly* %54, i32 0, i32 0
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 256, %60
  %62 = getelementptr inbounds [684 x i8], [684 x i8]* %11, i32 0, i32 0
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rej_gamma1m1(i32* %59, i32 %61, i8* %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %22

; <label>:67:                                     ; preds = %22
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @rej_gamma1m1(i32*, i32, i8*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %108, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %10, align 4
  %19 = add i32 %18, 5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ule i32 %19, %20
  br label %22

; <label>:22:                                     ; preds = %17, %13
  %23 = phi i1 [ false, %13 ], [ %21, %17 ]
  br i1 %23, label %24, label %109

; <label>:24:                                     ; preds = %22
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 1048575
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 2
  %55 = zext i32 %54 to i64
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 4
  %73 = zext i32 %72 to i64
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 12
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 5
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ule i32 %83, 1047550
  br i1 %84, label %85, label %93

; <label>:85:                                     ; preds = %24
  %86 = load i32, i32* %11, align 4
  %87 = sub i32 8904192, %86
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = zext i32 %88 to i64
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 %90
  store i32 %87, i32* %92, align 4
  br label %93

; <label>:93:                                     ; preds = %85, %24
  %94 = load i32, i32* %12, align 4
  %95 = icmp ule i32 %94, 1047550
  br i1 %95, label %96, label %108

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %108

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = sub i32 8904192, %101
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = zext i32 %103 to i64
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32 %102, i32* %107, align 4
  br label %108

; <label>:108:                                    ; preds = %100, %96, %93
  br label %13

; <label>:109:                                    ; preds = %22
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_pack(i8*, %struct.poly*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  store %struct.poly* %1, %struct.poly** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %46, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 128
  br i1 %9, label %10, label %49

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 2, %11
  %13 = add i32 %12, 0
  %14 = zext i32 %13 to i64
  %15 = load %struct.poly*, %struct.poly** %4, align 8
  %16 = getelementptr inbounds %struct.poly, %struct.poly* %15, i32 0, i32 0
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %14
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 8380423, %18
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  store i8 %20, i8* %21, align 1
  %22 = load i32, i32* %5, align 4
  %23 = mul i32 2, %22
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = load %struct.poly*, %struct.poly** %4, align 8
  %27 = getelementptr inbounds %struct.poly, %struct.poly* %26, i32 0, i32 0
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %27, i64 0, i64 %25
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 8380423, %29
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 4
  %40 = or i32 %35, %39
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8 %41, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %10
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %7

; <label>:49:                                     ; preds = %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyeta_unpack(%struct.poly*, i8*) #0 {
  %3 = alloca %struct.poly*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %70, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 128
  br i1 %8, label %9, label %73

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 %11
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 2, %17
  %19 = add i32 %18, 0
  %20 = zext i32 %19 to i64
  %21 = load %struct.poly*, %struct.poly** %3, align 8
  %22 = getelementptr inbounds %struct.poly, %struct.poly* %21, i32 0, i32 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %20
  store i32 %16, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = load i32, i32* %5, align 4
  %32 = mul i32 2, %31
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = load %struct.poly*, %struct.poly** %3, align 8
  %36 = getelementptr inbounds %struct.poly, %struct.poly* %35, i32 0, i32 0
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %36, i64 0, i64 %34
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 2, %38
  %40 = add i32 %39, 0
  %41 = zext i32 %40 to i64
  %42 = load %struct.poly*, %struct.poly** %3, align 8
  %43 = getelementptr inbounds %struct.poly, %struct.poly* %42, i32 0, i32 0
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %43, i64 0, i64 %41
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 8380423, %45
  %47 = load i32, i32* %5, align 4
  %48 = mul i32 2, %47
  %49 = add i32 %48, 0
  %50 = zext i32 %49 to i64
  %51 = load %struct.poly*, %struct.poly** %3, align 8
  %52 = getelementptr inbounds %struct.poly, %struct.poly* %51, i32 0, i32 0
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %52, i64 0, i64 %50
  store i32 %46, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul i32 2, %54
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = load %struct.poly*, %struct.poly** %3, align 8
  %59 = getelementptr inbounds %struct.poly, %struct.poly* %58, i32 0, i32 0
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %59, i64 0, i64 %57
  %61 = load i32, i32* %60, align 4
  %62 = sub i32 8380423, %61
  %63 = load i32, i32* %5, align 4
  %64 = mul i32 2, %63
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = load %struct.poly*, %struct.poly** %3, align 8
  %68 = getelementptr inbounds %struct.poly, %struct.poly* %67, i32 0, i32 0
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %68, i64 0, i64 %66
  store i32 %62, i32* %69, align 4
  br label %70

; <label>:70:                                     ; preds = %9
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %6

; <label>:73:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_pack(i8*, %struct.poly*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.poly* %1, %struct.poly** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %224, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 32
  br i1 %8, label %9, label %227

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 8, %10
  %12 = add i32 %11, 0
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %4, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = lshr i32 %17, 0
  %19 = trunc i32 %18 to i8
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 9, %20
  %22 = add i32 %21, 0
  %23 = zext i32 %22 to i64
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8 %19, i8* %25, align 1
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 8, %26
  %28 = add i32 %27, 0
  %29 = zext i32 %28 to i64
  %30 = load %struct.poly*, %struct.poly** %4, align 8
  %31 = getelementptr inbounds %struct.poly, %struct.poly* %30, i32 0, i32 0
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %31, i64 0, i64 %29
  %33 = load i32, i32* %32, align 4
  %34 = lshr i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = mul i32 8, %35
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = load %struct.poly*, %struct.poly** %4, align 8
  %40 = getelementptr inbounds %struct.poly, %struct.poly* %39, i32 0, i32 0
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %40, i64 0, i64 %38
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 1
  %44 = or i32 %34, %43
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %5, align 4
  %47 = mul i32 9, %46
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8 %45, i8* %51, align 1
  %52 = load i32, i32* %5, align 4
  %53 = mul i32 8, %52
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = load %struct.poly*, %struct.poly** %4, align 8
  %57 = getelementptr inbounds %struct.poly, %struct.poly* %56, i32 0, i32 0
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %57, i64 0, i64 %55
  %59 = load i32, i32* %58, align 4
  %60 = lshr i32 %59, 7
  %61 = load i32, i32* %5, align 4
  %62 = mul i32 8, %61
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = load %struct.poly*, %struct.poly** %4, align 8
  %66 = getelementptr inbounds %struct.poly, %struct.poly* %65, i32 0, i32 0
  %67 = getelementptr inbounds [256 x i32], [256 x i32]* %66, i64 0, i64 %64
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 2
  %70 = or i32 %60, %69
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %5, align 4
  %73 = mul i32 9, %72
  %74 = add i32 %73, 2
  %75 = zext i32 %74 to i64
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8 %71, i8* %77, align 1
  %78 = load i32, i32* %5, align 4
  %79 = mul i32 8, %78
  %80 = add i32 %79, 2
  %81 = zext i32 %80 to i64
  %82 = load %struct.poly*, %struct.poly** %4, align 8
  %83 = getelementptr inbounds %struct.poly, %struct.poly* %82, i32 0, i32 0
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %83, i64 0, i64 %81
  %85 = load i32, i32* %84, align 4
  %86 = lshr i32 %85, 6
  %87 = load i32, i32* %5, align 4
  %88 = mul i32 8, %87
  %89 = add i32 %88, 3
  %90 = zext i32 %89 to i64
  %91 = load %struct.poly*, %struct.poly** %4, align 8
  %92 = getelementptr inbounds %struct.poly, %struct.poly* %91, i32 0, i32 0
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %92, i64 0, i64 %90
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 3
  %96 = or i32 %86, %95
  %97 = trunc i32 %96 to i8
  %98 = load i32, i32* %5, align 4
  %99 = mul i32 9, %98
  %100 = add i32 %99, 3
  %101 = zext i32 %100 to i64
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8 %97, i8* %103, align 1
  %104 = load i32, i32* %5, align 4
  %105 = mul i32 8, %104
  %106 = add i32 %105, 3
  %107 = zext i32 %106 to i64
  %108 = load %struct.poly*, %struct.poly** %4, align 8
  %109 = getelementptr inbounds %struct.poly, %struct.poly* %108, i32 0, i32 0
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* %109, i64 0, i64 %107
  %111 = load i32, i32* %110, align 4
  %112 = lshr i32 %111, 5
  %113 = load i32, i32* %5, align 4
  %114 = mul i32 8, %113
  %115 = add i32 %114, 4
  %116 = zext i32 %115 to i64
  %117 = load %struct.poly*, %struct.poly** %4, align 8
  %118 = getelementptr inbounds %struct.poly, %struct.poly* %117, i32 0, i32 0
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %118, i64 0, i64 %116
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 4
  %122 = or i32 %112, %121
  %123 = trunc i32 %122 to i8
  %124 = load i32, i32* %5, align 4
  %125 = mul i32 9, %124
  %126 = add i32 %125, 4
  %127 = zext i32 %126 to i64
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 %127
  store i8 %123, i8* %129, align 1
  %130 = load i32, i32* %5, align 4
  %131 = mul i32 8, %130
  %132 = add i32 %131, 4
  %133 = zext i32 %132 to i64
  %134 = load %struct.poly*, %struct.poly** %4, align 8
  %135 = getelementptr inbounds %struct.poly, %struct.poly* %134, i32 0, i32 0
  %136 = getelementptr inbounds [256 x i32], [256 x i32]* %135, i64 0, i64 %133
  %137 = load i32, i32* %136, align 4
  %138 = lshr i32 %137, 4
  %139 = load i32, i32* %5, align 4
  %140 = mul i32 8, %139
  %141 = add i32 %140, 5
  %142 = zext i32 %141 to i64
  %143 = load %struct.poly*, %struct.poly** %4, align 8
  %144 = getelementptr inbounds %struct.poly, %struct.poly* %143, i32 0, i32 0
  %145 = getelementptr inbounds [256 x i32], [256 x i32]* %144, i64 0, i64 %142
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 5
  %148 = or i32 %138, %147
  %149 = trunc i32 %148 to i8
  %150 = load i32, i32* %5, align 4
  %151 = mul i32 9, %150
  %152 = add i32 %151, 5
  %153 = zext i32 %152 to i64
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 %153
  store i8 %149, i8* %155, align 1
  %156 = load i32, i32* %5, align 4
  %157 = mul i32 8, %156
  %158 = add i32 %157, 5
  %159 = zext i32 %158 to i64
  %160 = load %struct.poly*, %struct.poly** %4, align 8
  %161 = getelementptr inbounds %struct.poly, %struct.poly* %160, i32 0, i32 0
  %162 = getelementptr inbounds [256 x i32], [256 x i32]* %161, i64 0, i64 %159
  %163 = load i32, i32* %162, align 4
  %164 = lshr i32 %163, 3
  %165 = load i32, i32* %5, align 4
  %166 = mul i32 8, %165
  %167 = add i32 %166, 6
  %168 = zext i32 %167 to i64
  %169 = load %struct.poly*, %struct.poly** %4, align 8
  %170 = getelementptr inbounds %struct.poly, %struct.poly* %169, i32 0, i32 0
  %171 = getelementptr inbounds [256 x i32], [256 x i32]* %170, i64 0, i64 %168
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 6
  %174 = or i32 %164, %173
  %175 = trunc i32 %174 to i8
  %176 = load i32, i32* %5, align 4
  %177 = mul i32 9, %176
  %178 = add i32 %177, 6
  %179 = zext i32 %178 to i64
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8 %175, i8* %181, align 1
  %182 = load i32, i32* %5, align 4
  %183 = mul i32 8, %182
  %184 = add i32 %183, 6
  %185 = zext i32 %184 to i64
  %186 = load %struct.poly*, %struct.poly** %4, align 8
  %187 = getelementptr inbounds %struct.poly, %struct.poly* %186, i32 0, i32 0
  %188 = getelementptr inbounds [256 x i32], [256 x i32]* %187, i64 0, i64 %185
  %189 = load i32, i32* %188, align 4
  %190 = lshr i32 %189, 2
  %191 = load i32, i32* %5, align 4
  %192 = mul i32 8, %191
  %193 = add i32 %192, 7
  %194 = zext i32 %193 to i64
  %195 = load %struct.poly*, %struct.poly** %4, align 8
  %196 = getelementptr inbounds %struct.poly, %struct.poly* %195, i32 0, i32 0
  %197 = getelementptr inbounds [256 x i32], [256 x i32]* %196, i64 0, i64 %194
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 7
  %200 = or i32 %190, %199
  %201 = trunc i32 %200 to i8
  %202 = load i32, i32* %5, align 4
  %203 = mul i32 9, %202
  %204 = add i32 %203, 7
  %205 = zext i32 %204 to i64
  %206 = load i8*, i8** %3, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 %205
  store i8 %201, i8* %207, align 1
  %208 = load i32, i32* %5, align 4
  %209 = mul i32 8, %208
  %210 = add i32 %209, 7
  %211 = zext i32 %210 to i64
  %212 = load %struct.poly*, %struct.poly** %4, align 8
  %213 = getelementptr inbounds %struct.poly, %struct.poly* %212, i32 0, i32 0
  %214 = getelementptr inbounds [256 x i32], [256 x i32]* %213, i64 0, i64 %211
  %215 = load i32, i32* %214, align 4
  %216 = lshr i32 %215, 1
  %217 = trunc i32 %216 to i8
  %218 = load i32, i32* %5, align 4
  %219 = mul i32 9, %218
  %220 = add i32 %219, 8
  %221 = zext i32 %220 to i64
  %222 = load i8*, i8** %3, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8 %217, i8* %223, align 1
  br label %224

; <label>:224:                                    ; preds = %9
  %225 = load i32, i32* %5, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %5, align 4
  br label %6

; <label>:227:                                    ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt1_unpack(%struct.poly*, i8*) #0 {
  %3 = alloca %struct.poly*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %225, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 32
  br i1 %8, label %9, label %228

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 9, %10
  %12 = add i32 %11, 0
  %13 = zext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 9, %18
  %20 = add i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %17, %26
  %28 = and i32 %27, 511
  %29 = load i32, i32* %5, align 4
  %30 = mul i32 8, %29
  %31 = add i32 %30, 0
  %32 = zext i32 %31 to i64
  %33 = load %struct.poly*, %struct.poly** %3, align 8
  %34 = getelementptr inbounds %struct.poly, %struct.poly* %33, i32 0, i32 0
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %34, i64 0, i64 %32
  store i32 %28, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul i32 9, %36
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = ashr i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = mul i32 9, %45
  %47 = add i32 %46, 2
  %48 = zext i32 %47 to i64
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 7
  %54 = or i32 %44, %53
  %55 = and i32 %54, 511
  %56 = load i32, i32* %5, align 4
  %57 = mul i32 8, %56
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = load %struct.poly*, %struct.poly** %3, align 8
  %61 = getelementptr inbounds %struct.poly, %struct.poly* %60, i32 0, i32 0
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %61, i64 0, i64 %59
  store i32 %55, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul i32 9, %63
  %65 = add i32 %64, 2
  %66 = zext i32 %65 to i64
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 2
  %72 = load i32, i32* %5, align 4
  %73 = mul i32 9, %72
  %74 = add i32 %73, 3
  %75 = zext i32 %74 to i64
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 6
  %81 = or i32 %71, %80
  %82 = and i32 %81, 511
  %83 = load i32, i32* %5, align 4
  %84 = mul i32 8, %83
  %85 = add i32 %84, 2
  %86 = zext i32 %85 to i64
  %87 = load %struct.poly*, %struct.poly** %3, align 8
  %88 = getelementptr inbounds %struct.poly, %struct.poly* %87, i32 0, i32 0
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %88, i64 0, i64 %86
  store i32 %82, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = mul i32 9, %90
  %92 = add i32 %91, 3
  %93 = zext i32 %92 to i64
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = ashr i32 %97, 3
  %99 = load i32, i32* %5, align 4
  %100 = mul i32 9, %99
  %101 = add i32 %100, 4
  %102 = zext i32 %101 to i64
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 5
  %108 = or i32 %98, %107
  %109 = and i32 %108, 511
  %110 = load i32, i32* %5, align 4
  %111 = mul i32 8, %110
  %112 = add i32 %111, 3
  %113 = zext i32 %112 to i64
  %114 = load %struct.poly*, %struct.poly** %3, align 8
  %115 = getelementptr inbounds %struct.poly, %struct.poly* %114, i32 0, i32 0
  %116 = getelementptr inbounds [256 x i32], [256 x i32]* %115, i64 0, i64 %113
  store i32 %109, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = mul i32 9, %117
  %119 = add i32 %118, 4
  %120 = zext i32 %119 to i64
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 %120
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = ashr i32 %124, 4
  %126 = load i32, i32* %5, align 4
  %127 = mul i32 9, %126
  %128 = add i32 %127, 5
  %129 = zext i32 %128 to i64
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl i32 %133, 4
  %135 = or i32 %125, %134
  %136 = and i32 %135, 511
  %137 = load i32, i32* %5, align 4
  %138 = mul i32 8, %137
  %139 = add i32 %138, 4
  %140 = zext i32 %139 to i64
  %141 = load %struct.poly*, %struct.poly** %3, align 8
  %142 = getelementptr inbounds %struct.poly, %struct.poly* %141, i32 0, i32 0
  %143 = getelementptr inbounds [256 x i32], [256 x i32]* %142, i64 0, i64 %140
  store i32 %136, i32* %143, align 4
  %144 = load i32, i32* %5, align 4
  %145 = mul i32 9, %144
  %146 = add i32 %145, 5
  %147 = zext i32 %146 to i64
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = ashr i32 %151, 5
  %153 = load i32, i32* %5, align 4
  %154 = mul i32 9, %153
  %155 = add i32 %154, 6
  %156 = zext i32 %155 to i64
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 %156
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl i32 %160, 3
  %162 = or i32 %152, %161
  %163 = and i32 %162, 511
  %164 = load i32, i32* %5, align 4
  %165 = mul i32 8, %164
  %166 = add i32 %165, 5
  %167 = zext i32 %166 to i64
  %168 = load %struct.poly*, %struct.poly** %3, align 8
  %169 = getelementptr inbounds %struct.poly, %struct.poly* %168, i32 0, i32 0
  %170 = getelementptr inbounds [256 x i32], [256 x i32]* %169, i64 0, i64 %167
  store i32 %163, i32* %170, align 4
  %171 = load i32, i32* %5, align 4
  %172 = mul i32 9, %171
  %173 = add i32 %172, 6
  %174 = zext i32 %173 to i64
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 %174
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = ashr i32 %178, 6
  %180 = load i32, i32* %5, align 4
  %181 = mul i32 9, %180
  %182 = add i32 %181, 7
  %183 = zext i32 %182 to i64
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 %183
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = shl i32 %187, 2
  %189 = or i32 %179, %188
  %190 = and i32 %189, 511
  %191 = load i32, i32* %5, align 4
  %192 = mul i32 8, %191
  %193 = add i32 %192, 6
  %194 = zext i32 %193 to i64
  %195 = load %struct.poly*, %struct.poly** %3, align 8
  %196 = getelementptr inbounds %struct.poly, %struct.poly* %195, i32 0, i32 0
  %197 = getelementptr inbounds [256 x i32], [256 x i32]* %196, i64 0, i64 %194
  store i32 %190, i32* %197, align 4
  %198 = load i32, i32* %5, align 4
  %199 = mul i32 9, %198
  %200 = add i32 %199, 7
  %201 = zext i32 %200 to i64
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 %201
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = ashr i32 %205, 7
  %207 = load i32, i32* %5, align 4
  %208 = mul i32 9, %207
  %209 = add i32 %208, 8
  %210 = zext i32 %209 to i64
  %211 = load i8*, i8** %4, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 %210
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = shl i32 %214, 1
  %216 = or i32 %206, %215
  %217 = and i32 %216, 511
  %218 = load i32, i32* %5, align 4
  %219 = mul i32 8, %218
  %220 = add i32 %219, 7
  %221 = zext i32 %220 to i64
  %222 = load %struct.poly*, %struct.poly** %3, align 8
  %223 = getelementptr inbounds %struct.poly, %struct.poly* %222, i32 0, i32 0
  %224 = getelementptr inbounds [256 x i32], [256 x i32]* %223, i64 0, i64 %221
  store i32 %217, i32* %224, align 4
  br label %225

; <label>:225:                                    ; preds = %9
  %226 = load i32, i32* %5, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %6

; <label>:228:                                    ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_pack(i8*, %struct.poly*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store i8* %0, i8** %3, align 8
  store %struct.poly* %1, %struct.poly** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %165, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %10, label %168

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 4, %11
  %13 = add i32 %12, 0
  %14 = zext i32 %13 to i64
  %15 = load %struct.poly*, %struct.poly** %4, align 8
  %16 = getelementptr inbounds %struct.poly, %struct.poly* %15, i32 0, i32 0
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %14
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 8388609, %18
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %5, align 4
  %22 = mul i32 4, %21
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = load %struct.poly*, %struct.poly** %4, align 8
  %26 = getelementptr inbounds %struct.poly, %struct.poly* %25, i32 0, i32 0
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %26, i64 0, i64 %24
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 8388609, %28
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul i32 4, %31
  %33 = add i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = load %struct.poly*, %struct.poly** %4, align 8
  %36 = getelementptr inbounds %struct.poly, %struct.poly* %35, i32 0, i32 0
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %36, i64 0, i64 %34
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 8388609, %38
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul i32 4, %41
  %43 = add i32 %42, 3
  %44 = zext i32 %43 to i64
  %45 = load %struct.poly*, %struct.poly** %4, align 8
  %46 = getelementptr inbounds %struct.poly, %struct.poly* %45, i32 0, i32 0
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %46, i64 0, i64 %44
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 8388609, %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = trunc i32 %52 to i8
  %54 = load i32, i32* %5, align 4
  %55 = mul i32 7, %54
  %56 = add i32 %55, 0
  %57 = zext i32 %56 to i64
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8 %53, i8* %59, align 1
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = lshr i32 %61, 8
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %5, align 4
  %65 = mul i32 7, %64
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8 %63, i8* %69, align 1
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 6
  %73 = trunc i32 %72 to i8
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = mul i32 7, %75
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, %74
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 1
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = lshr i32 %86, 2
  %88 = trunc i32 %87 to i8
  %89 = load i32, i32* %5, align 4
  %90 = mul i32 7, %89
  %91 = add i32 %90, 2
  %92 = zext i32 %91 to i64
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8 %88, i8* %94, align 1
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = lshr i32 %96, 10
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %5, align 4
  %100 = mul i32 7, %99
  %101 = add i32 %100, 3
  %102 = zext i32 %101 to i64
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8 %98, i8* %104, align 1
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %5, align 4
  %111 = mul i32 7, %110
  %112 = add i32 %111, 3
  %113 = zext i32 %112 to i64
  %114 = load i8*, i8** %3, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %117, %109
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %115, align 1
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = load i32, i32* %5, align 4
  %125 = mul i32 7, %124
  %126 = add i32 %125, 4
  %127 = zext i32 %126 to i64
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 %127
  store i8 %123, i8* %129, align 1
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = lshr i32 %131, 12
  %133 = trunc i32 %132 to i8
  %134 = load i32, i32* %5, align 4
  %135 = mul i32 7, %134
  %136 = add i32 %135, 5
  %137 = zext i32 %136 to i64
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 %137
  store i8 %133, i8* %139, align 1
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 2
  %143 = trunc i32 %142 to i8
  %144 = zext i8 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = mul i32 7, %145
  %147 = add i32 %146, 5
  %148 = zext i32 %147 to i64
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 %148
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, %144
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 1
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = lshr i32 %156, 6
  %158 = trunc i32 %157 to i8
  %159 = load i32, i32* %5, align 4
  %160 = mul i32 7, %159
  %161 = add i32 %160, 6
  %162 = zext i32 %161 to i64
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 %162
  store i8 %158, i8* %164, align 1
  br label %165

; <label>:165:                                    ; preds = %10
  %166 = load i32, i32* %5, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %7

; <label>:168:                                    ; preds = %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyt0_unpack(%struct.poly*, i8*) #0 {
  %3 = alloca %struct.poly*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %248, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %9, label %251

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 7, %10
  %12 = add i32 %11, 0
  %13 = zext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 4, %18
  %20 = add i32 %19, 0
  %21 = zext i32 %20 to i64
  %22 = load %struct.poly*, %struct.poly** %3, align 8
  %23 = getelementptr inbounds %struct.poly, %struct.poly* %22, i32 0, i32 0
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %21
  store i32 %17, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 7, %25
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 63
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = mul i32 4, %35
  %37 = add i32 %36, 0
  %38 = zext i32 %37 to i64
  %39 = load %struct.poly*, %struct.poly** %3, align 8
  %40 = getelementptr inbounds %struct.poly, %struct.poly* %39, i32 0, i32 0
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %40, i64 0, i64 %38
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %34
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul i32 7, %44
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = ashr i32 %51, 6
  %53 = load i32, i32* %5, align 4
  %54 = mul i32 4, %53
  %55 = add i32 %54, 1
  %56 = zext i32 %55 to i64
  %57 = load %struct.poly*, %struct.poly** %3, align 8
  %58 = getelementptr inbounds %struct.poly, %struct.poly* %57, i32 0, i32 0
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %58, i64 0, i64 %56
  store i32 %52, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = mul i32 7, %60
  %62 = add i32 %61, 2
  %63 = zext i32 %62 to i64
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 2
  %69 = load i32, i32* %5, align 4
  %70 = mul i32 4, %69
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = load %struct.poly*, %struct.poly** %3, align 8
  %74 = getelementptr inbounds %struct.poly, %struct.poly* %73, i32 0, i32 0
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %74, i64 0, i64 %72
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %68
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %5, align 4
  %79 = mul i32 7, %78
  %80 = add i32 %79, 3
  %81 = zext i32 %80 to i64
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 15
  %87 = shl i32 %86, 10
  %88 = load i32, i32* %5, align 4
  %89 = mul i32 4, %88
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = load %struct.poly*, %struct.poly** %3, align 8
  %93 = getelementptr inbounds %struct.poly, %struct.poly* %92, i32 0, i32 0
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %93, i64 0, i64 %91
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %87
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %5, align 4
  %98 = mul i32 7, %97
  %99 = add i32 %98, 3
  %100 = zext i32 %99 to i64
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 4
  %106 = load i32, i32* %5, align 4
  %107 = mul i32 4, %106
  %108 = add i32 %107, 2
  %109 = zext i32 %108 to i64
  %110 = load %struct.poly*, %struct.poly** %3, align 8
  %111 = getelementptr inbounds %struct.poly, %struct.poly* %110, i32 0, i32 0
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* %111, i64 0, i64 %109
  store i32 %105, i32* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = mul i32 7, %113
  %115 = add i32 %114, 4
  %116 = zext i32 %115 to i64
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 4
  %122 = load i32, i32* %5, align 4
  %123 = mul i32 4, %122
  %124 = add i32 %123, 2
  %125 = zext i32 %124 to i64
  %126 = load %struct.poly*, %struct.poly** %3, align 8
  %127 = getelementptr inbounds %struct.poly, %struct.poly* %126, i32 0, i32 0
  %128 = getelementptr inbounds [256 x i32], [256 x i32]* %127, i64 0, i64 %125
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %121
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %5, align 4
  %132 = mul i32 7, %131
  %133 = add i32 %132, 5
  %134 = zext i32 %133 to i64
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 %134
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 3
  %140 = shl i32 %139, 12
  %141 = load i32, i32* %5, align 4
  %142 = mul i32 4, %141
  %143 = add i32 %142, 2
  %144 = zext i32 %143 to i64
  %145 = load %struct.poly*, %struct.poly** %3, align 8
  %146 = getelementptr inbounds %struct.poly, %struct.poly* %145, i32 0, i32 0
  %147 = getelementptr inbounds [256 x i32], [256 x i32]* %146, i64 0, i64 %144
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %140
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %5, align 4
  %151 = mul i32 7, %150
  %152 = add i32 %151, 5
  %153 = zext i32 %152 to i64
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 %153
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = ashr i32 %157, 2
  %159 = load i32, i32* %5, align 4
  %160 = mul i32 4, %159
  %161 = add i32 %160, 3
  %162 = zext i32 %161 to i64
  %163 = load %struct.poly*, %struct.poly** %3, align 8
  %164 = getelementptr inbounds %struct.poly, %struct.poly* %163, i32 0, i32 0
  %165 = getelementptr inbounds [256 x i32], [256 x i32]* %164, i64 0, i64 %162
  store i32 %158, i32* %165, align 4
  %166 = load i32, i32* %5, align 4
  %167 = mul i32 7, %166
  %168 = add i32 %167, 6
  %169 = zext i32 %168 to i64
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 %169
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = shl i32 %173, 6
  %175 = load i32, i32* %5, align 4
  %176 = mul i32 4, %175
  %177 = add i32 %176, 3
  %178 = zext i32 %177 to i64
  %179 = load %struct.poly*, %struct.poly** %3, align 8
  %180 = getelementptr inbounds %struct.poly, %struct.poly* %179, i32 0, i32 0
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* %180, i64 0, i64 %178
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %174
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %5, align 4
  %185 = mul i32 4, %184
  %186 = add i32 %185, 0
  %187 = zext i32 %186 to i64
  %188 = load %struct.poly*, %struct.poly** %3, align 8
  %189 = getelementptr inbounds %struct.poly, %struct.poly* %188, i32 0, i32 0
  %190 = getelementptr inbounds [256 x i32], [256 x i32]* %189, i64 0, i64 %187
  %191 = load i32, i32* %190, align 4
  %192 = sub i32 8388609, %191
  %193 = load i32, i32* %5, align 4
  %194 = mul i32 4, %193
  %195 = add i32 %194, 0
  %196 = zext i32 %195 to i64
  %197 = load %struct.poly*, %struct.poly** %3, align 8
  %198 = getelementptr inbounds %struct.poly, %struct.poly* %197, i32 0, i32 0
  %199 = getelementptr inbounds [256 x i32], [256 x i32]* %198, i64 0, i64 %196
  store i32 %192, i32* %199, align 4
  %200 = load i32, i32* %5, align 4
  %201 = mul i32 4, %200
  %202 = add i32 %201, 1
  %203 = zext i32 %202 to i64
  %204 = load %struct.poly*, %struct.poly** %3, align 8
  %205 = getelementptr inbounds %struct.poly, %struct.poly* %204, i32 0, i32 0
  %206 = getelementptr inbounds [256 x i32], [256 x i32]* %205, i64 0, i64 %203
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 8388609, %207
  %209 = load i32, i32* %5, align 4
  %210 = mul i32 4, %209
  %211 = add i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = load %struct.poly*, %struct.poly** %3, align 8
  %214 = getelementptr inbounds %struct.poly, %struct.poly* %213, i32 0, i32 0
  %215 = getelementptr inbounds [256 x i32], [256 x i32]* %214, i64 0, i64 %212
  store i32 %208, i32* %215, align 4
  %216 = load i32, i32* %5, align 4
  %217 = mul i32 4, %216
  %218 = add i32 %217, 2
  %219 = zext i32 %218 to i64
  %220 = load %struct.poly*, %struct.poly** %3, align 8
  %221 = getelementptr inbounds %struct.poly, %struct.poly* %220, i32 0, i32 0
  %222 = getelementptr inbounds [256 x i32], [256 x i32]* %221, i64 0, i64 %219
  %223 = load i32, i32* %222, align 4
  %224 = sub i32 8388609, %223
  %225 = load i32, i32* %5, align 4
  %226 = mul i32 4, %225
  %227 = add i32 %226, 2
  %228 = zext i32 %227 to i64
  %229 = load %struct.poly*, %struct.poly** %3, align 8
  %230 = getelementptr inbounds %struct.poly, %struct.poly* %229, i32 0, i32 0
  %231 = getelementptr inbounds [256 x i32], [256 x i32]* %230, i64 0, i64 %228
  store i32 %224, i32* %231, align 4
  %232 = load i32, i32* %5, align 4
  %233 = mul i32 4, %232
  %234 = add i32 %233, 3
  %235 = zext i32 %234 to i64
  %236 = load %struct.poly*, %struct.poly** %3, align 8
  %237 = getelementptr inbounds %struct.poly, %struct.poly* %236, i32 0, i32 0
  %238 = getelementptr inbounds [256 x i32], [256 x i32]* %237, i64 0, i64 %235
  %239 = load i32, i32* %238, align 4
  %240 = sub i32 8388609, %239
  %241 = load i32, i32* %5, align 4
  %242 = mul i32 4, %241
  %243 = add i32 %242, 3
  %244 = zext i32 %243 to i64
  %245 = load %struct.poly*, %struct.poly** %3, align 8
  %246 = getelementptr inbounds %struct.poly, %struct.poly* %245, i32 0, i32 0
  %247 = getelementptr inbounds [256 x i32], [256 x i32]* %246, i64 0, i64 %244
  store i32 %240, i32* %247, align 4
  br label %248

; <label>:248:                                    ; preds = %9
  %249 = load i32, i32* %5, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %5, align 4
  br label %6

; <label>:251:                                    ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyz_pack(i8*, %struct.poly*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store %struct.poly* %1, %struct.poly** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %109, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 128
  br i1 %9, label %10, label %112

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 2, %11
  %13 = add i32 %12, 0
  %14 = zext i32 %13 to i64
  %15 = load %struct.poly*, %struct.poly** %4, align 8
  %16 = getelementptr inbounds %struct.poly, %struct.poly* %15, i32 0, i32 0
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %14
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 523775, %18
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 31
  %24 = and i32 %23, 8380417
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 2, %28
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = load %struct.poly*, %struct.poly** %4, align 8
  %33 = getelementptr inbounds %struct.poly, %struct.poly* %32, i32 0, i32 0
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %33, i64 0, i64 %31
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 523775, %35
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 31
  %41 = and i32 %40, 8380417
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* %5, align 4
  %49 = mul i32 5, %48
  %50 = add i32 %49, 0
  %51 = zext i32 %50 to i64
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8 %47, i8* %53, align 1
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = lshr i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = load i32, i32* %5, align 4
  %59 = mul i32 5, %58
  %60 = add i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8 %57, i8* %63, align 1
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %65, 16
  %67 = trunc i32 %66 to i8
  %68 = load i32, i32* %5, align 4
  %69 = mul i32 5, %68
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8 %67, i8* %73, align 1
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = mul i32 5, %79
  %81 = add i32 %80, 2
  %82 = zext i32 %81 to i64
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %78
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %84, align 1
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = load i32, i32* %5, align 4
  %94 = mul i32 5, %93
  %95 = add i32 %94, 3
  %96 = zext i32 %95 to i64
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8 %92, i8* %98, align 1
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = lshr i32 %100, 12
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %5, align 4
  %104 = mul i32 5, %103
  %105 = add i32 %104, 4
  %106 = zext i32 %105 to i64
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8 %102, i8* %108, align 1
  br label %109

; <label>:109:                                    ; preds = %10
  %110 = load i32, i32* %5, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %7

; <label>:112:                                    ; preds = %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyz_unpack(%struct.poly*, i8*) #0 {
  %3 = alloca %struct.poly*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.poly* %0, %struct.poly** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %184, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 128
  br i1 %8, label %9, label %187

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 5, %10
  %12 = add i32 %11, 0
  %13 = zext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 2, %18
  %20 = add i32 %19, 0
  %21 = zext i32 %20 to i64
  %22 = load %struct.poly*, %struct.poly** %3, align 8
  %23 = getelementptr inbounds %struct.poly, %struct.poly* %22, i32 0, i32 0
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %21
  store i32 %17, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 5, %25
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 2, %34
  %36 = add i32 %35, 0
  %37 = zext i32 %36 to i64
  %38 = load %struct.poly*, %struct.poly** %3, align 8
  %39 = getelementptr inbounds %struct.poly, %struct.poly* %38, i32 0, i32 0
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %39, i64 0, i64 %37
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %33
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul i32 5, %43
  %45 = add i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 15
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %5, align 4
  %54 = mul i32 2, %53
  %55 = add i32 %54, 0
  %56 = zext i32 %55 to i64
  %57 = load %struct.poly*, %struct.poly** %3, align 8
  %58 = getelementptr inbounds %struct.poly, %struct.poly* %57, i32 0, i32 0
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %58, i64 0, i64 %56
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %52
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul i32 5, %62
  %64 = add i32 %63, 2
  %65 = zext i32 %64 to i64
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = ashr i32 %69, 4
  %71 = load i32, i32* %5, align 4
  %72 = mul i32 2, %71
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = load %struct.poly*, %struct.poly** %3, align 8
  %76 = getelementptr inbounds %struct.poly, %struct.poly* %75, i32 0, i32 0
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %76, i64 0, i64 %74
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = mul i32 5, %78
  %80 = add i32 %79, 3
  %81 = zext i32 %80 to i64
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %5, align 4
  %88 = mul i32 2, %87
  %89 = add i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = load %struct.poly*, %struct.poly** %3, align 8
  %92 = getelementptr inbounds %struct.poly, %struct.poly* %91, i32 0, i32 0
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %92, i64 0, i64 %90
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %86
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %5, align 4
  %97 = mul i32 5, %96
  %98 = add i32 %97, 4
  %99 = zext i32 %98 to i64
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 12
  %105 = load i32, i32* %5, align 4
  %106 = mul i32 2, %105
  %107 = add i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = load %struct.poly*, %struct.poly** %3, align 8
  %110 = getelementptr inbounds %struct.poly, %struct.poly* %109, i32 0, i32 0
  %111 = getelementptr inbounds [256 x i32], [256 x i32]* %110, i64 0, i64 %108
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %104
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %5, align 4
  %115 = mul i32 2, %114
  %116 = add i32 %115, 0
  %117 = zext i32 %116 to i64
  %118 = load %struct.poly*, %struct.poly** %3, align 8
  %119 = getelementptr inbounds %struct.poly, %struct.poly* %118, i32 0, i32 0
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %119, i64 0, i64 %117
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 523775, %121
  %123 = load i32, i32* %5, align 4
  %124 = mul i32 2, %123
  %125 = add i32 %124, 0
  %126 = zext i32 %125 to i64
  %127 = load %struct.poly*, %struct.poly** %3, align 8
  %128 = getelementptr inbounds %struct.poly, %struct.poly* %127, i32 0, i32 0
  %129 = getelementptr inbounds [256 x i32], [256 x i32]* %128, i64 0, i64 %126
  store i32 %122, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = mul i32 2, %130
  %132 = add i32 %131, 0
  %133 = zext i32 %132 to i64
  %134 = load %struct.poly*, %struct.poly** %3, align 8
  %135 = getelementptr inbounds %struct.poly, %struct.poly* %134, i32 0, i32 0
  %136 = getelementptr inbounds [256 x i32], [256 x i32]* %135, i64 0, i64 %133
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 31
  %139 = and i32 %138, 8380417
  %140 = load i32, i32* %5, align 4
  %141 = mul i32 2, %140
  %142 = add i32 %141, 0
  %143 = zext i32 %142 to i64
  %144 = load %struct.poly*, %struct.poly** %3, align 8
  %145 = getelementptr inbounds %struct.poly, %struct.poly* %144, i32 0, i32 0
  %146 = getelementptr inbounds [256 x i32], [256 x i32]* %145, i64 0, i64 %143
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, %139
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %5, align 4
  %150 = mul i32 2, %149
  %151 = add i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = load %struct.poly*, %struct.poly** %3, align 8
  %154 = getelementptr inbounds %struct.poly, %struct.poly* %153, i32 0, i32 0
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %154, i64 0, i64 %152
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 523775, %156
  %158 = load i32, i32* %5, align 4
  %159 = mul i32 2, %158
  %160 = add i32 %159, 1
  %161 = zext i32 %160 to i64
  %162 = load %struct.poly*, %struct.poly** %3, align 8
  %163 = getelementptr inbounds %struct.poly, %struct.poly* %162, i32 0, i32 0
  %164 = getelementptr inbounds [256 x i32], [256 x i32]* %163, i64 0, i64 %161
  store i32 %157, i32* %164, align 4
  %165 = load i32, i32* %5, align 4
  %166 = mul i32 2, %165
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64
  %169 = load %struct.poly*, %struct.poly** %3, align 8
  %170 = getelementptr inbounds %struct.poly, %struct.poly* %169, i32 0, i32 0
  %171 = getelementptr inbounds [256 x i32], [256 x i32]* %170, i64 0, i64 %168
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 31
  %174 = and i32 %173, 8380417
  %175 = load i32, i32* %5, align 4
  %176 = mul i32 2, %175
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = load %struct.poly*, %struct.poly** %3, align 8
  %180 = getelementptr inbounds %struct.poly, %struct.poly* %179, i32 0, i32 0
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* %180, i64 0, i64 %178
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, %174
  store i32 %183, i32* %181, align 4
  br label %184

; <label>:184:                                    ; preds = %9
  %185 = load i32, i32* %5, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %6

; <label>:187:                                    ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8*, %struct.poly*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.poly* %1, %struct.poly** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 128
  br i1 %8, label %9, label %36

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 2, %10
  %12 = add i32 %11, 0
  %13 = zext i32 %12 to i64
  %14 = load %struct.poly*, %struct.poly** %4, align 8
  %15 = getelementptr inbounds %struct.poly, %struct.poly* %14, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %13
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 2, %18
  %20 = add i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = load %struct.poly*, %struct.poly** %4, align 8
  %23 = getelementptr inbounds %struct.poly, %struct.poly* %22, i32 0, i32 0
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %21
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 4
  %27 = or i32 %17, %26
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8 %28, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %9
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

; <label>:36:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(%struct.polyvecl*) #0 {
  %2 = alloca %struct.polyvecl*, align 8
  %3 = alloca i32, align 4
  store %struct.polyvecl* %0, %struct.polyvecl** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyvecl*, %struct.polyvecl** %2, align 8
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i32 0, i32 0
  %12 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(%struct.polyvecl*, %struct.polyvecl*, %struct.polyvecl*) #0 {
  %4 = alloca %struct.polyvecl*, align 8
  %5 = alloca %struct.polyvecl*, align 8
  %6 = alloca %struct.polyvecl*, align 8
  %7 = alloca i32, align 4
  store %struct.polyvecl* %0, %struct.polyvecl** %4, align 8
  store %struct.polyvecl* %1, %struct.polyvecl** %5, align 8
  store %struct.polyvecl* %2, %struct.polyvecl** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.polyvecl*, %struct.polyvecl** %4, align 8
  %15 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %14, i32 0, i32 0
  %16 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %15, i64 0, i64 %13
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyvecl*, %struct.polyvecl** %5, align 8
  %20 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %19, i32 0, i32 0
  %21 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %20, i64 0, i64 %18
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.polyvecl*, %struct.polyvecl** %6, align 8
  %25 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %24, i32 0, i32 0
  %26 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %25, i64 0, i64 %23
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %16, %struct.poly* %21, %struct.poly* %26)
  br label %27

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl*) #0 {
  %2 = alloca %struct.polyvecl*, align 8
  %3 = alloca i32, align 4
  store %struct.polyvecl* %0, %struct.polyvecl** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyvecl*, %struct.polyvecl** %2, align 8
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i32 0, i32 0
  %12 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly*, %struct.polyvecl*, %struct.polyvecl*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca %struct.polyvecl*, align 8
  %6 = alloca %struct.polyvecl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.poly, align 4
  store %struct.poly* %0, %struct.poly** %4, align 8
  store %struct.polyvecl* %1, %struct.polyvecl** %5, align 8
  store %struct.polyvecl* %2, %struct.polyvecl** %6, align 8
  %9 = load %struct.poly*, %struct.poly** %4, align 8
  %10 = load %struct.polyvecl*, %struct.polyvecl** %5, align 8
  %11 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %10, i32 0, i32 0
  %12 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %11, i64 0, i64 0
  %13 = load %struct.polyvecl*, %struct.polyvecl** %6, align 8
  %14 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i32 0, i32 0
  %15 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %14, i64 0, i64 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %9, %struct.poly* %12, %struct.poly* %15)
  store i32 1, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %32, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %35

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.polyvecl*, %struct.polyvecl** %5, align 8
  %23 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %22, i32 0, i32 0
  %24 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %23, i64 0, i64 %21
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.polyvecl*, %struct.polyvecl** %6, align 8
  %28 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %27, i32 0, i32 0
  %29 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %28, i64 0, i64 %26
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %8, %struct.poly* %24, %struct.poly* %29)
  %30 = load %struct.poly*, %struct.poly** %4, align 8
  %31 = load %struct.poly*, %struct.poly** %4, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %30, %struct.poly* %31, %struct.poly* %8)
  br label %32

; <label>:32:                                     ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %16

; <label>:35:                                     ; preds = %16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.polyvecl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.polyvecl* %0, %struct.polyvecl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.polyvecl*, %struct.polyvecl** %4, align 8
  %14 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i32 0, i32 0
  %15 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %14, i64 0, i64 %12
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %10
  store i32 1, i32* %3, align 4
  br label %25

; <label>:20:                                     ; preds = %10
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  store i32 0, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(%struct.polyveck*) #0 {
  %2 = alloca %struct.polyveck*, align 8
  %3 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyveck*, %struct.polyveck** %2, align 8
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck*) #0 {
  %2 = alloca %struct.polyveck*, align 8
  %3 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyveck*, %struct.polyveck** %2, align 8
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_csubq(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck*) #0 {
  %2 = alloca %struct.polyveck*, align 8
  %3 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyveck*, %struct.polyveck** %2, align 8
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_freeze(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) #0 {
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i32 0, i32 0
  %16 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %15, i64 0, i64 %13
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %20 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %19, i32 0, i32 0
  %21 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %20, i64 0, i64 %18
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %25 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %24, i32 0, i32 0
  %26 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %25, i64 0, i64 %23
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_add(%struct.poly* %16, %struct.poly* %21, %struct.poly* %26)
  br label %27

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) #0 {
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i32 0, i32 0
  %16 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %15, i64 0, i64 %13
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %20 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %19, i32 0, i32 0
  %21 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %20, i64 0, i64 %18
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %25 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %24, i32 0, i32 0
  %26 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %25, i64 0, i64 %23
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_sub(%struct.poly* %16, %struct.poly* %21, %struct.poly* %26)
  br label %27

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(%struct.polyveck*) #0 {
  %2 = alloca %struct.polyveck*, align 8
  %3 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyveck*, %struct.polyveck** %2, align 8
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_shiftl(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck*) #0 {
  %2 = alloca %struct.polyveck*, align 8
  %3 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyveck*, %struct.polyveck** %2, align 8
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(%struct.polyveck*) #0 {
  %2 = alloca %struct.polyveck*, align 8
  %3 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.polyveck*, %struct.polyveck** %2, align 8
  %11 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %11, i64 0, i64 %9
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %12)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %14 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %13, i32 0, i32 0
  %15 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %14, i64 0, i64 %12
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_chknorm(%struct.poly* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %10
  store i32 1, i32* %3, align 4
  br label %25

; <label>:20:                                     ; preds = %10
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %7

; <label>:24:                                     ; preds = %7
  store i32 0, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) #0 {
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i32 0, i32 0
  %16 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %15, i64 0, i64 %13
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %20 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %19, i32 0, i32 0
  %21 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %20, i64 0, i64 %18
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %25 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %24, i32 0, i32 0
  %26 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %25, i64 0, i64 %23
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_power2round(%struct.poly* %16, %struct.poly* %21, %struct.poly* %26)
  br label %27

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) #0 {
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i32 0, i32 0
  %16 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %15, i64 0, i64 %13
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %20 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %19, i32 0, i32 0
  %21 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %20, i64 0, i64 %18
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %25 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %24, i32 0, i32 0
  %26 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %25, i64 0, i64 %23
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_decompose(%struct.poly* %16, %struct.poly* %21, %struct.poly* %26)
  br label %27

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) #0 {
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %31, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %34

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %16 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i32 0, i32 0
  %17 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %16, i64 0, i64 %14
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %21 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i32 0, i32 0
  %22 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %21, i64 0, i64 %19
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %26 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %25, i32 0, i32 0
  %27 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %26, i64 0, i64 %24
  %28 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_poly_make_hint(%struct.poly* %17, %struct.poly* %22, %struct.poly* %27)
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

; <label>:31:                                     ; preds = %12
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %9

; <label>:34:                                     ; preds = %9
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(%struct.polyveck*, %struct.polyveck*, %struct.polyveck*) #0 {
  %4 = alloca %struct.polyveck*, align 8
  %5 = alloca %struct.polyveck*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  store %struct.polyveck* %0, %struct.polyveck** %4, align 8
  store %struct.polyveck* %1, %struct.polyveck** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.polyveck*, %struct.polyveck** %4, align 8
  %15 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %14, i32 0, i32 0
  %16 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %15, i64 0, i64 %13
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyveck*, %struct.polyveck** %5, align 8
  %20 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %19, i32 0, i32 0
  %21 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %20, i64 0, i64 %18
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %25 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %24, i32 0, i32 0
  %26 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %25, i64 0, i64 %23
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_use_hint(%struct.poly* %16, %struct.poly* %21, %struct.poly* %26)
  br label %27

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_montgomery_reduce(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = mul i64 %4, 4236238847
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = mul i64 %8, 8380417
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = lshr i64 %13, 32
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 8388607
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = lshr i32 %6, 23
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %8, 13
  %10 = load i32, i32* %2, align 4
  %11 = sub i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 %3, 8380417
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 31
  %7 = and i32 %6, 8380417
  %8 = load i32, i32* %2, align 4
  %9 = add i32 %8, %7
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_freeze(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_reduce32(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_csubq(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_power2round(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 16383
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub i32 %8, 8193
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 31
  %12 = and i32 %11, 16384
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 %15, 8191
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 8380417, %17
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %20, %21
  %23 = lshr i32 %22, 14
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 524287
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = lshr i32 %9, 19
  %11 = shl i32 %10, 9
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 261889
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 31
  %18 = and i32 %17, 523776
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 261887
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 31
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = lshr i32 %30, 19
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = load i32, i32* %3, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add i32 8380417, %37
  %39 = load i32, i32* %3, align 4
  %40 = lshr i32 %39, 4
  %41 = sub i32 %38, %40
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 15
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_make_hint(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ule i32 %6, 261888
  br i1 %7, label %17, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ugt i32 %9, 8118529
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 8118529
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14, %8, %2
  store i32 0, i32* %3, align 4
  br label %19

; <label>:18:                                     ; preds = %14, %11
  store i32 1, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_use_hint(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_decompose(i32 %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %25

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ugt i32 %15, 8380417
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 1
  %20 = and i32 %19, 15
  store i32 %20, i32* %3, align 4
  br label %25

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 %22, 1
  %24 = and i32 %23, 15
  store i32 %24, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %21, %17, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl*, i8*) #0 {
  %3 = alloca %struct.polyvecl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.polyvecl* %0, %struct.polyvecl** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %33, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %36

; <label>:10:                                     ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %29, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %32

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.polyvecl*, %struct.polyvecl** %3, align 8
  %20 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %19, i64 %18
  %21 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %20, i32 0, i32 0
  %22 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %21, i64 0, i64 %16
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %25, %26
  %28 = trunc i32 %27 to i16
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform(%struct.poly* %22, i8* %23, i16 zeroext %28)
  br label %29

; <label>:29:                                     ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11

; <label>:32:                                     ; preds = %11
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %7

; <label>:36:                                     ; preds = %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly*, i8*, %struct.polyveck*) #0 {
  %4 = alloca %struct.poly*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.polyveck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [560 x i8], align 16
  %12 = alloca [136 x i8], align 16
  %13 = alloca %struct.shake128ctx, align 8
  store %struct.poly* %0, %struct.poly** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.polyveck* %2, %struct.polyveck** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

; <label>:14:                                     ; preds = %26, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %15, 48
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 %19
  %22 = load i8, i8* %21, align 1
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [560 x i8], [560 x i8]* %11, i64 0, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %14

; <label>:29:                                     ; preds = %14
  store i32 0, i32* %7, align 4
  br label %30

; <label>:30:                                     ; preds = %45, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %48

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds [560 x i8], [560 x i8]* %11, i32 0, i32 0
  %35 = getelementptr inbounds i8, i8* %34, i64 48
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %36, 128
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.polyveck*, %struct.polyveck** %6, align 8
  %43 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %42, i32 0, i32 0
  %44 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %43, i64 0, i64 %41
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyw1_pack(i8* %39, %struct.poly* %44)
  br label %45

; <label>:45:                                     ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %30

; <label>:48:                                     ; preds = %30
  %49 = getelementptr inbounds [560 x i8], [560 x i8]* %11, i32 0, i32 0
  call void @shake256_absorb(%struct.shake128ctx* %13, i8* %49, i64 560)
  %50 = getelementptr inbounds [136 x i8], [136 x i8]* %12, i32 0, i32 0
  call void @shake256_squeezeblocks(i8* %50, i64 1, %struct.shake128ctx* %13)
  store i64 0, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %51

; <label>:51:                                     ; preds = %66, %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %52, 8
  br i1 %53, label %54, label %69

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [136 x i8], [136 x i8]* %12, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = load i32, i32* %7, align 4
  %61 = mul i32 8, %60
  %62 = zext i32 %61 to i64
  %63 = shl i64 %59, %62
  %64 = load i64, i64* %10, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %66

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %51

; <label>:69:                                     ; preds = %51
  store i32 8, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %70

; <label>:70:                                     ; preds = %79, %69
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %71, 256
  br i1 %72, label %73, label %82

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = load %struct.poly*, %struct.poly** %4, align 8
  %77 = getelementptr inbounds %struct.poly, %struct.poly* %76, i32 0, i32 0
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %77, i64 0, i64 %75
  store i32 0, i32* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %70

; <label>:82:                                     ; preds = %70
  store i32 196, i32* %7, align 4
  br label %83

; <label>:83:                                     ; preds = %134, %82
  %84 = load i32, i32* %7, align 4
  %85 = icmp ult i32 %84, 256
  br i1 %85, label %86, label %137

; <label>:86:                                     ; preds = %83
  br label %87

; <label>:87:                                     ; preds = %99, %86
  %88 = load i32, i32* %9, align 4
  %89 = icmp uge i32 %88, 136
  br i1 %89, label %90, label %92

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds [136 x i8], [136 x i8]* %12, i32 0, i32 0
  call void @shake256_squeezeblocks(i8* %91, i64 1, %struct.shake128ctx* %13)
  store i32 0, i32* %9, align 4
  br label %92

; <label>:92:                                     ; preds = %90, %87
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds [136 x i8], [136 x i8]* %12, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  store i32 %98, i32* %8, align 4
  br label %99

; <label>:99:                                     ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %87, label %103

; <label>:103:                                    ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = load %struct.poly*, %struct.poly** %4, align 8
  %107 = getelementptr inbounds %struct.poly, %struct.poly* %106, i32 0, i32 0
  %108 = getelementptr inbounds [256 x i32], [256 x i32]* %107, i64 0, i64 %105
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = load %struct.poly*, %struct.poly** %4, align 8
  %113 = getelementptr inbounds %struct.poly, %struct.poly* %112, i32 0, i32 0
  %114 = getelementptr inbounds [256 x i32], [256 x i32]* %113, i64 0, i64 %111
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = load %struct.poly*, %struct.poly** %4, align 8
  %118 = getelementptr inbounds %struct.poly, %struct.poly* %117, i32 0, i32 0
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %118, i64 0, i64 %116
  store i32 1, i32* %119, align 4
  %120 = load i64, i64* %10, align 8
  %121 = trunc i64 %120 to i32
  %122 = and i32 %121, 1
  %123 = sub nsw i32 0, %122
  %124 = and i32 %123, 8380417
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = load %struct.poly*, %struct.poly** %4, align 8
  %128 = getelementptr inbounds %struct.poly, %struct.poly* %127, i32 0, i32 0
  %129 = getelementptr inbounds [256 x i32], [256 x i32]* %128, i64 0, i64 %126
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, %124
  store i32 %131, i32* %129, align 4
  %132 = load i64, i64* %10, align 8
  %133 = lshr i64 %132, 1
  store i64 %133, i64* %10, align 8
  br label %134

; <label>:134:                                    ; preds = %103
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %83

; <label>:137:                                    ; preds = %83
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_keypair(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [96 x i8], align 16
  %7 = alloca [48 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca [4 x %struct.polyvecl], align 16
  %13 = alloca %struct.polyvecl, align 4
  %14 = alloca %struct.polyvecl, align 4
  %15 = alloca %struct.polyveck, align 4
  %16 = alloca %struct.polyveck, align 4
  %17 = alloca %struct.polyveck, align 4
  %18 = alloca %struct.polyveck, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i16 0, i16* %11, align 2
  %19 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i32 0, i32 0
  %20 = call i32 @randombytes(i8* %19, i64 96)
  %21 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i32 0, i32 0
  store i8* %21, i8** %8, align 8
  %22 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i32 0, i32 0
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  store i8* %23, i8** %9, align 8
  %24 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i32 0, i32 0
  %25 = getelementptr inbounds i8, i8* %24, i64 64
  store i8* %25, i8** %10, align 8
  %26 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %12, i32 0, i32 0
  %27 = load i8*, i8** %8, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* %26, i8* %27)
  store i32 0, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %39, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %42

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %13, i32 0, i32 0
  %35 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %34, i64 0, i64 %33
  %36 = load i8*, i8** %9, align 8
  %37 = load i16, i16* %11, align 2
  %38 = add i16 %37, 1
  store i16 %38, i16* %11, align 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %35, i8* %36, i16 zeroext %37)
  br label %39

; <label>:39:                                     ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %28

; <label>:42:                                     ; preds = %28
  store i32 0, i32* %5, align 4
  br label %43

; <label>:43:                                     ; preds = %54, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %57

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %15, i32 0, i32 0
  %50 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %49, i64 0, i64 %48
  %51 = load i8*, i8** %9, align 8
  %52 = load i16, i16* %11, align 2
  %53 = add i16 %52, 1
  store i16 %53, i16* %11, align 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_eta(%struct.poly* %50, i8* %51, i16 zeroext %52)
  br label %54

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %43

; <label>:57:                                     ; preds = %43
  %58 = bitcast %struct.polyvecl* %14 to i8*
  %59 = bitcast %struct.polyvecl* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 3072, i32 4, i1 false)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* %14)
  store i32 0, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %79, %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %82

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i32 0, i32 0
  %67 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %66, i64 0, i64 %65
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %12, i64 0, i64 %69
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %67, %struct.polyvecl* %70, %struct.polyvecl* %14)
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i32 0, i32 0
  %74 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %73, i64 0, i64 %72
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %74)
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %16, i32 0, i32 0
  %78 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %77, i64 0, i64 %76
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %78)
  br label %79

; <label>:79:                                     ; preds = %63
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %60

; <label>:82:                                     ; preds = %60
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck* %16, %struct.polyveck* %16, %struct.polyveck* %15)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck* %16)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_power2round(%struct.polyveck* %17, %struct.polyveck* %18, %struct.polyveck* %16)
  %83 = load i8*, i8** %3, align 8
  %84 = load i8*, i8** %8, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_pk(i8* %83, i8* %84, %struct.polyveck* %17)
  %85 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0
  %86 = load i8*, i8** %3, align 8
  call void @shake256(i8* %85, i64 48, i8* %86, i64 1184)
  %87 = load i8*, i8** %4, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_sk(i8* %87, i8* %88, i8* %89, i8* %90, %struct.polyvecl* %13, %struct.polyveck* %15, %struct.polyveck* %18)
  ret i32 0
}

declare i32 @randombytes(i8*, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(i8*, i64*, i8*, i64, i8*) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [208 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i16, align 2
  %20 = alloca %struct.poly, align 4
  %21 = alloca %struct.poly, align 4
  %22 = alloca [4 x %struct.polyvecl], align 16
  %23 = alloca %struct.polyvecl, align 4
  %24 = alloca %struct.polyvecl, align 4
  %25 = alloca %struct.polyvecl, align 4
  %26 = alloca %struct.polyvecl, align 4
  %27 = alloca %struct.polyveck, align 4
  %28 = alloca %struct.polyveck, align 4
  %29 = alloca %struct.polyveck, align 4
  %30 = alloca %struct.polyveck, align 4
  %31 = alloca %struct.polyveck, align 4
  %32 = alloca %struct.polyveck, align 4
  %33 = alloca %struct.polyveck, align 4
  %34 = alloca %struct.polyveck, align 4
  %35 = alloca %struct.shake128incctx, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i16 0, i16* %19, align 2
  %36 = getelementptr inbounds [208 x i8], [208 x i8]* %13, i32 0, i32 0
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 32
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 48
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 32
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 48
  store i8* %44, i8** %18, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %10, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_unpack_sk(i8* %45, i8* %46, i8* %47, %struct.polyvecl* %23, %struct.polyveck* %28, %struct.polyveck* %27, i8* %48)
  call void @shake256_inc_init(%struct.shake128incctx* %35)
  %49 = load i8*, i8** %15, align 8
  call void @shake256_inc_absorb(%struct.shake128incctx* %35, i8* %49, i64 48)
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  call void @shake256_inc_absorb(%struct.shake128incctx* %35, i8* %50, i64 %51)
  call void @shake256_inc_finalize(%struct.shake128incctx* %35)
  %52 = load i8*, i8** %17, align 8
  call void @shake256_inc_squeeze(i8* %52, i64 48, %struct.shake128incctx* %35)
  %53 = load i8*, i8** %18, align 8
  %54 = load i8*, i8** %16, align 8
  call void @shake256(i8* %53, i64 48, i8* %54, i64 80)
  %55 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %22, i32 0, i32 0
  %56 = load i8*, i8** %14, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* %55, i8* %56)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* %23)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* %28)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* %27)
  br label %57

; <label>:57:                                     ; preds = %162, %157, %136, %115, %5
  store i64 0, i64* %11, align 8
  br label %58

; <label>:58:                                     ; preds = %68, %57
  %59 = load i64, i64* %11, align 8
  %60 = icmp ult i64 %59, 3
  br i1 %60, label %61, label %71

; <label>:61:                                     ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %24, i32 0, i32 0
  %64 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %63, i64 0, i64 %62
  %65 = load i8*, i8** %18, align 8
  %66 = load i16, i16* %19, align 2
  %67 = add i16 %66, 1
  store i16 %67, i16* %19, align 2
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_uniform_gamma1m1(%struct.poly* %64, i8* %65, i16 zeroext %66)
  br label %68

; <label>:68:                                     ; preds = %61
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %58

; <label>:71:                                     ; preds = %58
  %72 = bitcast %struct.polyvecl* %25 to i8*
  %73 = bitcast %struct.polyvecl* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 3072, i32 4, i1 false)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* %25)
  store i64 0, i64* %11, align 8
  br label %74

; <label>:74:                                     ; preds = %89, %71
  %75 = load i64, i64* %11, align 8
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %77, label %92

; <label>:77:                                     ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %29, i32 0, i32 0
  %80 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %79, i64 0, i64 %78
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %22, i64 0, i64 %81
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %80, %struct.polyvecl* %82, %struct.polyvecl* %25)
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %29, i32 0, i32 0
  %85 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %84, i64 0, i64 %83
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_reduce(%struct.poly* %85)
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %29, i32 0, i32 0
  %88 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %87, i64 0, i64 %86
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %88)
  br label %89

; <label>:89:                                     ; preds = %77
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %74

; <label>:92:                                     ; preds = %74
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* %29)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_decompose(%struct.polyveck* %30, %struct.polyveck* %31, %struct.polyveck* %29)
  %93 = load i8*, i8** %17, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* %20, i8* %93, %struct.polyveck* %30)
  %94 = bitcast %struct.poly* %21 to i8*
  %95 = bitcast %struct.poly* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 1024, i32 4, i1 false)
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %21)
  store i64 0, i64* %11, align 8
  br label %96

; <label>:96:                                     ; preds = %109, %92
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %97, 4
  br i1 %98, label %99, label %112

; <label>:99:                                     ; preds = %96
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %33, i32 0, i32 0
  %102 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %101, i64 0, i64 %100
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %28, i32 0, i32 0
  %105 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %104, i64 0, i64 %103
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %102, %struct.poly* %21, %struct.poly* %105)
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %33, i32 0, i32 0
  %108 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %107, i64 0, i64 %106
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %108)
  br label %109

; <label>:109:                                    ; preds = %99
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %96

; <label>:112:                                    ; preds = %96
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck* %31, %struct.polyveck* %31, %struct.polyveck* %33)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_freeze(%struct.polyveck* %31)
  %113 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck* %31, i32 261563)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %112
  br label %57

; <label>:116:                                    ; preds = %112
  store i64 0, i64* %11, align 8
  br label %117

; <label>:117:                                    ; preds = %130, %116
  %118 = load i64, i64* %11, align 8
  %119 = icmp ult i64 %118, 3
  br i1 %119, label %120, label %133

; <label>:120:                                    ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %26, i32 0, i32 0
  %123 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %122, i64 0, i64 %121
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %23, i32 0, i32 0
  %126 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %125, i64 0, i64 %124
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %123, %struct.poly* %21, %struct.poly* %126)
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.polyvecl, %struct.polyvecl* %26, i32 0, i32 0
  %129 = getelementptr inbounds [3 x %struct.poly], [3 x %struct.poly]* %128, i64 0, i64 %127
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %129)
  br label %130

; <label>:130:                                    ; preds = %120
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %11, align 8
  br label %117

; <label>:133:                                    ; preds = %117
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_add(%struct.polyvecl* %26, %struct.polyvecl* %26, %struct.polyvecl* %24)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_freeze(%struct.polyvecl* %26)
  %134 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl* %26, i32 523451)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %133
  br label %57

; <label>:137:                                    ; preds = %133
  store i64 0, i64* %11, align 8
  br label %138

; <label>:138:                                    ; preds = %151, %137
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %139, 4
  br i1 %140, label %141, label %154

; <label>:141:                                    ; preds = %138
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %34, i32 0, i32 0
  %144 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %143, i64 0, i64 %142
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %27, i32 0, i32 0
  %147 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %146, i64 0, i64 %145
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %144, %struct.poly* %21, %struct.poly* %147)
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %34, i32 0, i32 0
  %150 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %149, i64 0, i64 %148
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_invntt_montgomery(%struct.poly* %150)
  br label %151

; <label>:151:                                    ; preds = %141
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %11, align 8
  br label %138

; <label>:154:                                    ; preds = %138
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* %34)
  %155 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_chknorm(%struct.polyveck* %34, i32 261888)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %154
  br label %57

; <label>:158:                                    ; preds = %154
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_add(%struct.polyveck* %31, %struct.polyveck* %31, %struct.polyveck* %34)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* %31)
  %159 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyveck_make_hint(%struct.polyveck* %32, %struct.polyveck* %31, %struct.polyveck* %30)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ugt i32 %160, 80
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %158
  br label %57

; <label>:163:                                    ; preds = %158
  %164 = load i8*, i8** %6, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_pack_sig(i8* %164, %struct.polyvecl* %26, %struct.polyveck* %32, %struct.poly* %20)
  %165 = load i64*, i64** %7, align 8
  store i64 2044, i64* %165, align 8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(i8*, i64, i8*, i64, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca [48 x i8], align 16
  %15 = alloca %struct.poly, align 4
  %16 = alloca %struct.poly, align 4
  %17 = alloca %struct.poly, align 4
  %18 = alloca [4 x %struct.polyvecl], align 16
  %19 = alloca %struct.polyvecl, align 4
  %20 = alloca %struct.polyveck, align 4
  %21 = alloca %struct.polyveck, align 4
  %22 = alloca %struct.polyveck, align 4
  %23 = alloca %struct.polyveck, align 4
  %24 = alloca %struct.polyveck, align 4
  %25 = alloca %struct.shake128incctx, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %26, 2044
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %98

; <label>:29:                                     ; preds = %5
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i32 0, i32 0
  %31 = load i8*, i8** %11, align 8
  call void @PQCLEAN_DILITHIUM2_CLEAN_unpack_pk(i8* %30, %struct.polyveck* %20, i8* %31)
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_unpack_sig(%struct.polyvecl* %19, %struct.polyveck* %22, %struct.poly* %15, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %98

; <label>:36:                                     ; preds = %29
  %37 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_chknorm(%struct.polyvecl* %19, i32 523451)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %98

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds [48 x i8], [48 x i8]* %14, i32 0, i32 0
  %42 = load i8*, i8** %11, align 8
  call void @shake256(i8* %41, i64 48, i8* %42, i64 1184)
  call void @shake256_inc_init(%struct.shake128incctx* %25)
  %43 = getelementptr inbounds [48 x i8], [48 x i8]* %14, i32 0, i32 0
  call void @shake256_inc_absorb(%struct.shake128incctx* %25, i8* %43, i64 48)
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  call void @shake256_inc_absorb(%struct.shake128incctx* %25, i8* %44, i64 %45)
  call void @shake256_inc_finalize(%struct.shake128incctx* %25)
  %46 = getelementptr inbounds [48 x i8], [48 x i8]* %14, i32 0, i32 0
  call void @shake256_inc_squeeze(i8* %46, i64 48, %struct.shake128incctx* %25)
  %47 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %18, i32 0, i32 0
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i32 0, i32 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_expand_mat(%struct.polyvecl* %47, i8* %48)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_ntt(%struct.polyvecl* %19)
  store i64 0, i64* %12, align 8
  br label %49

; <label>:49:                                     ; preds = %58, %40
  %50 = load i64, i64* %12, align 8
  %51 = icmp ult i64 %50, 4
  br i1 %51, label %52, label %61

; <label>:52:                                     ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %23, i32 0, i32 0
  %55 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %54, i64 0, i64 %53
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds [4 x %struct.polyvecl], [4 x %struct.polyvecl]* %18, i64 0, i64 %56
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyvecl_pointwise_acc_invmontgomery(%struct.poly* %55, %struct.polyvecl* %57, %struct.polyvecl* %19)
  br label %58

; <label>:58:                                     ; preds = %52
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %49

; <label>:61:                                     ; preds = %49
  %62 = bitcast %struct.poly* %16 to i8*
  %63 = bitcast %struct.poly* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 1024, i32 4, i1 false)
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_ntt(%struct.poly* %16)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_shiftl(%struct.polyveck* %20)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_ntt(%struct.polyveck* %20)
  store i64 0, i64* %12, align 8
  br label %64

; <label>:64:                                     ; preds = %74, %61
  %65 = load i64, i64* %12, align 8
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %67, label %77

; <label>:67:                                     ; preds = %64
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %24, i32 0, i32 0
  %70 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %69, i64 0, i64 %68
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.polyveck, %struct.polyveck* %20, i32 0, i32 0
  %73 = getelementptr inbounds [4 x %struct.poly], [4 x %struct.poly]* %72, i64 0, i64 %71
  call void @PQCLEAN_DILITHIUM2_CLEAN_poly_pointwise_invmontgomery(%struct.poly* %70, %struct.poly* %16, %struct.poly* %73)
  br label %74

; <label>:74:                                     ; preds = %67
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %64

; <label>:77:                                     ; preds = %64
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_sub(%struct.polyveck* %23, %struct.polyveck* %23, %struct.polyveck* %24)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_reduce(%struct.polyveck* %23)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_invntt_montgomery(%struct.polyveck* %23)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_csubq(%struct.polyveck* %23)
  call void @PQCLEAN_DILITHIUM2_CLEAN_polyveck_use_hint(%struct.polyveck* %21, %struct.polyveck* %23, %struct.polyveck* %22)
  %78 = getelementptr inbounds [48 x i8], [48 x i8]* %14, i32 0, i32 0
  call void @PQCLEAN_DILITHIUM2_CLEAN_challenge(%struct.poly* %17, i8* %78, %struct.polyveck* %21)
  store i64 0, i64* %12, align 8
  br label %79

; <label>:79:                                     ; preds = %94, %77
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %80, 256
  br i1 %81, label %82, label %97

; <label>:82:                                     ; preds = %79
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.poly, %struct.poly* %15, i32 0, i32 0
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %84, i64 0, i64 %83
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.poly, %struct.poly* %17, i32 0, i32 0
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %88, i64 0, i64 %87
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %98

; <label>:93:                                     ; preds = %82
  br label %94

; <label>:94:                                     ; preds = %93
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %12, align 8
  br label %79

; <label>:97:                                     ; preds = %79
  store i32 0, i32* %6, align 4
  br label %98

; <label>:98:                                     ; preds = %97, %92, %39, %35, %28
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign(i8*, i64*, i8*, i64, i8*) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

; <label>:13:                                     ; preds = %26, %5
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %13
  %18 = load i64, i64* %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  %21 = load i8, i8* %20, align 1
  %22 = load i64, i64* %11, align 8
  %23 = add i64 2044, %22
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8 %21, i8* %25, align 1
  br label %26

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %11, align 8
  br label %13

; <label>:29:                                     ; preds = %13
  %30 = load i8*, i8** %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_signature(i8* %30, i64* %31, i8* %32, i64 %33, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* %12, align 4
  ret i32 %40
}

; Function Attrs: nounwind ssp uwtable
define i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_open(i8*, i64*, i8*, i64, i8*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ult i64 %13, 2044
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %5
  br label %48

; <label>:16:                                     ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = sub i64 %17, 2044
  %19 = load i64*, i64** %8, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2044
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @PQCLEAN_DILITHIUM2_CLEAN_crypto_sign_verify(i8* %20, i64 2044, i8* %22, i64 %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %16
  br label %48

; <label>:29:                                     ; preds = %16
  store i64 0, i64* %12, align 8
  br label %30

; <label>:30:                                     ; preds = %44, %29
  %31 = load i64, i64* %12, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %47

; <label>:35:                                     ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = add i64 2044, %36
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  %40 = load i8, i8* %39, align 1
  %41 = load i64, i64* %12, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %35
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %12, align 8
  br label %30

; <label>:47:                                     ; preds = %30
  store i32 0, i32* %6, align 4
  br label %62

; <label>:48:                                     ; preds = %28, %15
  %49 = load i64*, i64** %8, align 8
  store i64 -1, i64* %49, align 8
  store i64 0, i64* %12, align 8
  br label %50

; <label>:50:                                     ; preds = %58, %48
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %61

; <label>:54:                                     ; preds = %50
  %55 = load i64, i64* %12, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8 0, i8* %57, align 1
  br label %58

; <label>:58:                                     ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %50

; <label>:61:                                     ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %47
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_shake128_stream_init(%struct.shake128ctx*, i8*, i16 zeroext) #0 {
  %4 = alloca %struct.shake128ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca [34 x i8], align 16
  store %struct.shake128ctx* %0, %struct.shake128ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %21, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 %14
  %17 = load i8, i8* %16, align 1
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 %19
  store i8 %17, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %9

; <label>:24:                                     ; preds = %9
  %25 = load i16, i16* %6, align 2
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 32
  store i8 %26, i8* %27, align 16
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 33
  store i8 %31, i8* %32, align 1
  %33 = load %struct.shake128ctx*, %struct.shake128ctx** %4, align 8
  %34 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i32 0, i32 0
  call void @shake128_absorb(%struct.shake128ctx* %33, i8* %34, i64 34)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PQCLEAN_DILITHIUM2_CLEAN_shake256_stream_init(%struct.shake128ctx*, i8*, i16 zeroext) #0 {
  %4 = alloca %struct.shake128ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca [50 x i8], align 16
  store %struct.shake128ctx* %0, %struct.shake128ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %21, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 48
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 %14
  %17 = load i8, i8* %16, align 1
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 %19
  store i8 %17, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %9

; <label>:24:                                     ; preds = %9
  %25 = load i16, i16* %6, align 2
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 48
  store i8 %26, i8* %27, align 16
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 49
  store i8 %31, i8* %32, align 1
  %33 = load %struct.shake128ctx*, %struct.shake128ctx** %4, align 8
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i32 0, i32 0
  call void @shake256_absorb(%struct.shake128ctx* %33, i8* %34, i64 50)
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
!1 = !{i32 1, !"PIC Level", i32 2}
