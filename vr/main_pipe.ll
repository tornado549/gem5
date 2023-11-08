; ModuleID = '/home/wsj/gem5/vr/main.cc'
source_filename = "/home/wsj/gem5/vr/main.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.std::uniform_int_distribution" = type { %"struct.std::uniform_int_distribution<>::param_type" }
%"struct.std::uniform_int_distribution<>::param_type" = type { i32, i32 }

$_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE = comdat any

$_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [21 x i8] c"[cache is cleared!]\0A\00", align 1
@A = dso_local global [1280000 x i32] zeroinitializer, align 64
@B = dso_local local_unnamed_addr global [1280000 x i32] zeroinitializer, align 64
@C = dso_local local_unnamed_addr global [1280000 x i32] zeroinitializer, align 64
@.str.1 = private unnamed_addr constant [7 x i8] c"\09sum: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\09\09temp\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"scalar to AVX:\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"manual_avx512:\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"pipeline_512_8_8vreg_reduce:\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"pipeline_512_8_8_stagger1x1:\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"pipeline_512_8_8_stagger:\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cc, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13__reset_statsv() local_unnamed_addr #3 {
entry:
  tail call void @m5_reset_stats(i64 0, i64 0)
  ret void
}

declare dso_local void @m5_reset_stats(i64, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12__dump_statsv() local_unnamed_addr #3 {
entry:
  tail call void @m5_dump_stats(i64 0, i64 0)
  ret void
}

declare dso_local void @m5_dump_stats(i64, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local void @_Z17fillArrayRandomlyPii(i32* nocapture %arr, i32 %length) local_unnamed_addr #4 {
entry:
  %gen = alloca %"class.std::mersenne_twister_engine", align 8
  %dis = alloca %"class.std::uniform_int_distribution", align 4
  %0 = bitcast %"class.std::mersenne_twister_engine"* %gen to i8*
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %0) #18
  %arrayidx.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen, i64 0, i32 0, i64 0
  store i64 1000, i64* %arrayidx.i.i, align 8, !tbaa !3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.1, %entry
  %1 = phi i64 [ 1000, %entry ], [ %rem.i.i18.i.i.1, %for.body.i.i.1 ]
  %__i.021.i.i = phi i64 [ 1, %entry ], [ %inc.i.i.1, %for.body.i.i.1 ]
  %shr.i.i = lshr i64 %1, 30
  %xor.i.i = xor i64 %shr.i.i, %1
  %mul.i.i = mul nuw nsw i64 %xor.i.i, 1812433253
  %rem.i.i19.lhs.trunc.i.i = trunc i64 %__i.021.i.i to i16
  %rem.i.i1920.i.i = urem i16 %rem.i.i19.lhs.trunc.i.i, 624
  %rem.i.i19.zext.i.i = zext i16 %rem.i.i1920.i.i to i64
  %add.i.i = add nuw i64 %mul.i.i, %rem.i.i19.zext.i.i
  %rem.i.i18.i.i = and i64 %add.i.i, 4294967295
  %arrayidx7.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen, i64 0, i32 0, i64 %__i.021.i.i
  store i64 %rem.i.i18.i.i, i64* %arrayidx7.i.i, align 8, !tbaa !3
  %inc.i.i = add nuw nsw i64 %__i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %for.body.i.i.1, !llvm.loop !7

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %for.body.i.i
  %_M_p.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen, i64 0, i32 1
  store i64 624, i64* %_M_p.i.i, align 8, !tbaa !9
  %2 = bitcast %"class.std::uniform_int_distribution"* %dis to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  %sub = add nsw i32 %length, -1
  %_M_a.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis, i64 0, i32 0, i32 0
  store i32 0, i32* %_M_a.i.i, align 4, !tbaa !11
  %_M_b.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis, i64 0, i32 0, i32 1
  store i32 %sub, i32* %_M_b.i.i, align 4, !tbaa !14
  %_M_param.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis, i64 0, i32 0
  %cmp7 = icmp sgt i32 %length, 0
  br i1 %cmp7, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  %wide.trip.count = zext i32 %length to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %0) #18
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %call.i = call i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull align 4 dereferenceable(8) %dis, %"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %gen, %"struct.std::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %_M_param.i)
  %rem6 = srem i32 %call.i, 1280000
  %arrayidx = getelementptr inbounds i32, i32* %arr, i64 %indvars.iv
  store i32 %rem6, i32* %arrayidx, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !16

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %shr.i.i.1 = lshr i64 %rem.i.i18.i.i, 30
  %xor.i.i.1 = xor i64 %shr.i.i.1, %rem.i.i18.i.i
  %mul.i.i.1 = mul nuw nsw i64 %xor.i.i.1, 1812433253
  %rem.i.i19.lhs.trunc.i.i.1 = trunc i64 %inc.i.i to i16
  %rem.i.i1920.i.i.1 = urem i16 %rem.i.i19.lhs.trunc.i.i.1, 624
  %rem.i.i19.zext.i.i.1 = zext i16 %rem.i.i1920.i.i.1 to i64
  %add.i.i.1 = add nuw i64 %mul.i.i.1, %rem.i.i19.zext.i.i.1
  %rem.i.i18.i.i.1 = and i64 %add.i.i.1, 4294967295
  %arrayidx7.i.i.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen, i64 0, i32 0, i64 %inc.i.i
  store i64 %rem.i.i18.i.i.1, i64* %arrayidx7.i.i.1, align 8, !tbaa !3
  %inc.i.i.1 = add nuw nsw i64 %__i.021.i.i, 2
  br label %for.body.i.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: uwtable
define dso_local i64 @_Z10clearCachev() local_unnamed_addr #4 {
entry:
  %gen.i = alloca %"class.std::mersenne_twister_engine", align 8
  %dis.i = alloca %"class.std::uniform_int_distribution", align 4
  %call = tail call noalias nonnull dereferenceable(16777216) i8* @_Znam(i64 16777216) #19
  %0 = bitcast %"class.std::mersenne_twister_engine"* %gen.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %0) #18
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 0, i64 0
  store i64 1000, i64* %arrayidx.i.i.i, align 8, !tbaa !3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.1, %entry
  %1 = phi i64 [ 1000, %entry ], [ %rem.i.i18.i.i.i.1, %for.body.i.i.i.1 ]
  %__i.021.i.i.i = phi i64 [ 1, %entry ], [ %inc.i.i.i.1, %for.body.i.i.i.1 ]
  %shr.i.i.i = lshr i64 %1, 30
  %xor.i.i.i = xor i64 %shr.i.i.i, %1
  %mul.i.i.i = mul nuw nsw i64 %xor.i.i.i, 1812433253
  %rem.i.i19.lhs.trunc.i.i.i = trunc i64 %__i.021.i.i.i to i16
  %rem.i.i1920.i.i.i = urem i16 %rem.i.i19.lhs.trunc.i.i.i, 624
  %rem.i.i19.zext.i.i.i = zext i16 %rem.i.i1920.i.i.i to i64
  %add.i.i.i = add nuw i64 %mul.i.i.i, %rem.i.i19.zext.i.i.i
  %rem.i.i18.i.i.i = and i64 %add.i.i.i, 4294967295
  %arrayidx7.i.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 0, i64 %__i.021.i.i.i
  store i64 %rem.i.i18.i.i.i, i64* %arrayidx7.i.i.i, align 8, !tbaa !3
  %inc.i.i.i = add nuw nsw i64 %__i.021.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %inc.i.i.i, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %for.body.i.i.i.1, !llvm.loop !7

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %for.body.i.i.i
  %2 = bitcast i8* %call to i32*
  %_M_p.i.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 1
  store i64 624, i64* %_M_p.i.i.i, align 8, !tbaa !9
  %3 = bitcast %"class.std::uniform_int_distribution"* %dis.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #18
  %_M_a.i.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i, i64 0, i32 0, i32 0
  store i32 0, i32* %_M_a.i.i.i, align 4, !tbaa !11
  %_M_b.i.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i, i64 0, i32 0, i32 1
  store i32 4194303, i32* %_M_b.i.i.i, align 4, !tbaa !14
  %_M_param.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i, i64 0, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %for.body.i ]
  %call.i.i = call i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull align 4 dereferenceable(8) %dis.i, %"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %gen.i, %"struct.std::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %_M_param.i.i)
  %rem6.i = srem i32 %call.i.i, 1280000
  %arrayidx.i = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.i
  store i32 %rem6.i, i32* %arrayidx.i, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4194304
  br i1 %exitcond.not.i, label %_Z17fillArrayRandomlyPii.exit, label %for.body.i, !llvm.loop !16

_Z17fillArrayRandomlyPii.exit:                    ; preds = %for.body.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %0) #18
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_Z17fillArrayRandomlyPii.exit
  %index = phi i64 [ 0, %_Z17fillArrayRandomlyPii.exit ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ zeroinitializer, %_Z17fillArrayRandomlyPii.exit ], [ %32, %vector.body ]
  %vec.phi18 = phi <4 x i64> [ zeroinitializer, %_Z17fillArrayRandomlyPii.exit ], [ %33, %vector.body ]
  %vec.phi19 = phi <4 x i64> [ zeroinitializer, %_Z17fillArrayRandomlyPii.exit ], [ %34, %vector.body ]
  %vec.phi20 = phi <4 x i64> [ zeroinitializer, %_Z17fillArrayRandomlyPii.exit ], [ %35, %vector.body ]
  %4 = getelementptr inbounds i32, i32* %2, i64 %index
  %5 = bitcast i32* %4 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %5, align 4, !tbaa !15
  %6 = getelementptr inbounds i32, i32* %4, i64 4
  %7 = bitcast i32* %6 to <4 x i32>*
  %wide.load21 = load <4 x i32>, <4 x i32>* %7, align 4, !tbaa !15
  %8 = getelementptr inbounds i32, i32* %4, i64 8
  %9 = bitcast i32* %8 to <4 x i32>*
  %wide.load22 = load <4 x i32>, <4 x i32>* %9, align 4, !tbaa !15
  %10 = getelementptr inbounds i32, i32* %4, i64 12
  %11 = bitcast i32* %10 to <4 x i32>*
  %wide.load23 = load <4 x i32>, <4 x i32>* %11, align 4, !tbaa !15
  %12 = sext <4 x i32> %wide.load to <4 x i64>
  %13 = sext <4 x i32> %wide.load21 to <4 x i64>
  %14 = sext <4 x i32> %wide.load22 to <4 x i64>
  %15 = sext <4 x i32> %wide.load23 to <4 x i64>
  %16 = add <4 x i64> %vec.phi, %12
  %17 = add <4 x i64> %vec.phi18, %13
  %18 = add <4 x i64> %vec.phi19, %14
  %19 = add <4 x i64> %vec.phi20, %15
  %index.next = or i64 %index, 16
  %20 = getelementptr inbounds i32, i32* %2, i64 %index.next
  %21 = bitcast i32* %20 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %21, align 4, !tbaa !15
  %22 = getelementptr inbounds i32, i32* %20, i64 4
  %23 = bitcast i32* %22 to <4 x i32>*
  %wide.load21.1 = load <4 x i32>, <4 x i32>* %23, align 4, !tbaa !15
  %24 = getelementptr inbounds i32, i32* %20, i64 8
  %25 = bitcast i32* %24 to <4 x i32>*
  %wide.load22.1 = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !15
  %26 = getelementptr inbounds i32, i32* %20, i64 12
  %27 = bitcast i32* %26 to <4 x i32>*
  %wide.load23.1 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !15
  %28 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %29 = sext <4 x i32> %wide.load21.1 to <4 x i64>
  %30 = sext <4 x i32> %wide.load22.1 to <4 x i64>
  %31 = sext <4 x i32> %wide.load23.1 to <4 x i64>
  %32 = add <4 x i64> %16, %28
  %33 = add <4 x i64> %17, %29
  %34 = add <4 x i64> %18, %30
  %35 = add <4 x i64> %19, %31
  %index.next.1 = add nuw nsw i64 %index, 32
  %36 = icmp eq i64 %index.next.1, 4194304
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %33, %32
  %bin.rdx24 = add <4 x i64> %34, %bin.rdx
  %bin.rdx25 = add <4 x i64> %35, %bin.rdx24
  %37 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx25)
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 20)
  call void @_ZdaPv(i8* nonnull %call) #20
  ret i64 %37

for.body.i.i.i.1:                                 ; preds = %for.body.i.i.i
  %shr.i.i.i.1 = lshr i64 %rem.i.i18.i.i.i, 30
  %xor.i.i.i.1 = xor i64 %shr.i.i.i.1, %rem.i.i18.i.i.i
  %mul.i.i.i.1 = mul nuw nsw i64 %xor.i.i.i.1, 1812433253
  %rem.i.i19.lhs.trunc.i.i.i.1 = trunc i64 %inc.i.i.i to i16
  %rem.i.i1920.i.i.i.1 = urem i16 %rem.i.i19.lhs.trunc.i.i.i.1, 624
  %rem.i.i19.zext.i.i.i.1 = zext i16 %rem.i.i1920.i.i.i.1 to i64
  %add.i.i.i.1 = add nuw i64 %mul.i.i.i.1, %rem.i.i19.zext.i.i.i.1
  %rem.i.i18.i.i.i.1 = and i64 %add.i.i.i.1, 4294967295
  %arrayidx7.i.i.i.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 0, i64 %inc.i.i.i
  store i64 %rem.i.i18.i.i.i.1, i64* %arrayidx7.i.i.i.1, align 8, !tbaa !3
  %inc.i.i.i.1 = add nuw nsw i64 %__i.021.i.i.i, 2
  br label %for.body.i.i.i
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z12testFunctionPl(i64* nocapture %sum) #8 {
entry:
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %0 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %sum.promoted, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ %0, %entry ], [ %45, %vector.body ]
  %vec.phi8 = phi <4 x i64> [ zeroinitializer, %entry ], [ %46, %vector.body ]
  %vec.phi9 = phi <4 x i64> [ zeroinitializer, %entry ], [ %47, %vector.body ]
  %vec.phi10 = phi <4 x i64> [ zeroinitializer, %entry ], [ %48, %vector.body ]
  %1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %index
  %2 = bitcast i32* %1 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %2, align 64, !tbaa !15
  %3 = getelementptr inbounds i32, i32* %1, i64 4
  %4 = bitcast i32* %3 to <4 x i32>*
  %wide.load11 = load <4 x i32>, <4 x i32>* %4, align 16, !tbaa !15
  %5 = getelementptr inbounds i32, i32* %1, i64 8
  %6 = bitcast i32* %5 to <4 x i32>*
  %wide.load12 = load <4 x i32>, <4 x i32>* %6, align 32, !tbaa !15
  %7 = getelementptr inbounds i32, i32* %1, i64 12
  %8 = bitcast i32* %7 to <4 x i32>*
  %wide.load13 = load <4 x i32>, <4 x i32>* %8, align 16, !tbaa !15
  %9 = sext <4 x i32> %wide.load to <4 x i64>
  %10 = sext <4 x i32> %wide.load11 to <4 x i64>
  %11 = sext <4 x i32> %wide.load12 to <4 x i64>
  %12 = sext <4 x i32> %wide.load13 to <4 x i64>
  %13 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %9
  %14 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %10
  %15 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %11
  %16 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %12
  %wide.masked.gather = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %13, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather14 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %14, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather15 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %15, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather16 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %16, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %17 = sext <4 x i32> %wide.masked.gather to <4 x i64>
  %18 = sext <4 x i32> %wide.masked.gather14 to <4 x i64>
  %19 = sext <4 x i32> %wide.masked.gather15 to <4 x i64>
  %20 = sext <4 x i32> %wide.masked.gather16 to <4 x i64>
  %21 = add <4 x i64> %vec.phi, %17
  %22 = add <4 x i64> %vec.phi8, %18
  %23 = add <4 x i64> %vec.phi9, %19
  %24 = add <4 x i64> %vec.phi10, %20
  %index.next = or i64 %index, 16
  %25 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %index.next
  %26 = bitcast i32* %25 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %26, align 64, !tbaa !15
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  %wide.load11.1 = load <4 x i32>, <4 x i32>* %28, align 16, !tbaa !15
  %29 = getelementptr inbounds i32, i32* %25, i64 8
  %30 = bitcast i32* %29 to <4 x i32>*
  %wide.load12.1 = load <4 x i32>, <4 x i32>* %30, align 32, !tbaa !15
  %31 = getelementptr inbounds i32, i32* %25, i64 12
  %32 = bitcast i32* %31 to <4 x i32>*
  %wide.load13.1 = load <4 x i32>, <4 x i32>* %32, align 16, !tbaa !15
  %33 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %34 = sext <4 x i32> %wide.load11.1 to <4 x i64>
  %35 = sext <4 x i32> %wide.load12.1 to <4 x i64>
  %36 = sext <4 x i32> %wide.load13.1 to <4 x i64>
  %37 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %33
  %38 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %34
  %39 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %35
  %40 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %36
  %wide.masked.gather.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %37, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather14.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %38, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather15.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %39, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather16.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %40, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %41 = sext <4 x i32> %wide.masked.gather.1 to <4 x i64>
  %42 = sext <4 x i32> %wide.masked.gather14.1 to <4 x i64>
  %43 = sext <4 x i32> %wide.masked.gather15.1 to <4 x i64>
  %44 = sext <4 x i32> %wide.masked.gather16.1 to <4 x i64>
  %45 = add <4 x i64> %21, %41
  %46 = add <4 x i64> %22, %42
  %47 = add <4 x i64> %23, %43
  %48 = add <4 x i64> %24, %44
  %index.next.1 = add nuw nsw i64 %index, 32
  %49 = icmp eq i64 %index.next.1, 1280000
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %46, %45
  %bin.rdx17 = add <4 x i64> %47, %bin.rdx
  %bin.rdx18 = add <4 x i64> %48, %bin.rdx17
  %50 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx18)
  store i64 %50, i64* %sum, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z26testFunction_manual_avx512Pl(i64* nocapture readnone %sum) #9 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret void

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.9, %for.body ]
  %add.ptr = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv
  %0 = bitcast i32* %add.ptr to <16 x i32>*
  %1 = load <16 x i32>, <16 x i32>* %0, align 64, !tbaa !20
  %2 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %1, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv
  %3 = bitcast i32* %add.ptr3 to <16 x i32>*
  store <16 x i32> %2, <16 x i32>* %3, align 64, !tbaa !20
  %indvars.iv.next = or i64 %indvars.iv, 16
  %add.ptr.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next
  %4 = bitcast i32* %add.ptr.1 to <16 x i32>*
  %5 = load <16 x i32>, <16 x i32>* %4, align 64, !tbaa !20
  %6 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %5, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next
  %7 = bitcast i32* %add.ptr3.1 to <16 x i32>*
  store <16 x i32> %6, <16 x i32>* %7, align 64, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32
  %add.ptr.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.1
  %8 = bitcast i32* %add.ptr.2 to <16 x i32>*
  %9 = load <16 x i32>, <16 x i32>* %8, align 64, !tbaa !20
  %10 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %9, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.1
  %11 = bitcast i32* %add.ptr3.2 to <16 x i32>*
  store <16 x i32> %10, <16 x i32>* %11, align 64, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 48
  %add.ptr.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.2
  %12 = bitcast i32* %add.ptr.3 to <16 x i32>*
  %13 = load <16 x i32>, <16 x i32>* %12, align 64, !tbaa !20
  %14 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %13, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.2
  %15 = bitcast i32* %add.ptr3.3 to <16 x i32>*
  store <16 x i32> %14, <16 x i32>* %15, align 64, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 64
  %add.ptr.4 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.3
  %16 = bitcast i32* %add.ptr.4 to <16 x i32>*
  %17 = load <16 x i32>, <16 x i32>* %16, align 64, !tbaa !20
  %18 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %17, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.4 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.3
  %19 = bitcast i32* %add.ptr3.4 to <16 x i32>*
  store <16 x i32> %18, <16 x i32>* %19, align 64, !tbaa !20
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 80
  %add.ptr.5 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.4
  %20 = bitcast i32* %add.ptr.5 to <16 x i32>*
  %21 = load <16 x i32>, <16 x i32>* %20, align 64, !tbaa !20
  %22 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %21, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.5 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.4
  %23 = bitcast i32* %add.ptr3.5 to <16 x i32>*
  store <16 x i32> %22, <16 x i32>* %23, align 64, !tbaa !20
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 96
  %add.ptr.6 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.5
  %24 = bitcast i32* %add.ptr.6 to <16 x i32>*
  %25 = load <16 x i32>, <16 x i32>* %24, align 64, !tbaa !20
  %26 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %25, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.6 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.5
  %27 = bitcast i32* %add.ptr3.6 to <16 x i32>*
  store <16 x i32> %26, <16 x i32>* %27, align 64, !tbaa !20
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 112
  %add.ptr.7 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.6
  %28 = bitcast i32* %add.ptr.7 to <16 x i32>*
  %29 = load <16 x i32>, <16 x i32>* %28, align 64, !tbaa !20
  %30 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %29, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.7 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.6
  %31 = bitcast i32* %add.ptr3.7 to <16 x i32>*
  store <16 x i32> %30, <16 x i32>* %31, align 64, !tbaa !20
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 128
  %add.ptr.8 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.7
  %32 = bitcast i32* %add.ptr.8 to <16 x i32>*
  %33 = load <16 x i32>, <16 x i32>* %32, align 64, !tbaa !20
  %34 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %33, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.8 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.7
  %35 = bitcast i32* %add.ptr3.8 to <16 x i32>*
  store <16 x i32> %34, <16 x i32>* %35, align 64, !tbaa !20
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv, 144
  %add.ptr.9 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.next.8
  %36 = bitcast i32* %add.ptr.9 to <16 x i32>*
  %37 = load <16 x i32>, <16 x i32>* %36, align 64, !tbaa !20
  %38 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %37, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr3.9 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %indvars.iv.next.8
  %39 = bitcast i32* %add.ptr3.9 to <16 x i32>*
  store <16 x i32> %38, <16 x i32>* %39, align 64, !tbaa !20
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv, 160
  %cmp.9 = icmp ult i64 %indvars.iv, 1279840
  br i1 %cmp.9, label %for.body, label %for.cond.cleanup, !llvm.loop !21
}

; Function Attrs: nofree nounwind readonly
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, i8*, <16 x i32>, <16 x i1>, i32 immarg) #10

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10show512RegRDv8_x(<8 x i64>* nocapture nonnull readonly align 64 dereferenceable(64) %zmm) local_unnamed_addr #11 {
entry:
  %0 = bitcast <8 x i64>* %zmm to <16 x i32>*
  %1 = load <16 x i32>, <16 x i32>* %0, align 64, !tbaa !20
  %2 = extractelement <16 x i32> %1, i32 0
  %call3 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %2)
  %3 = bitcast %"class.std::basic_ostream"* %call3 to i8**
  %vtable.i55 = load i8*, i8** %3, align 8, !tbaa !22
  %vbase.offset.ptr.i56 = getelementptr i8, i8* %vtable.i55, i64 -24
  %4 = bitcast i8* %vbase.offset.ptr.i56 to i64*
  %vbase.offset.i57 = load i64, i64* %4, align 8
  %5 = bitcast %"class.std::basic_ostream"* %call3 to i8*
  %_M_ctype.i185.idx = add nsw i64 %vbase.offset.i57, 240
  %_M_ctype.i185 = getelementptr inbounds i8, i8* %5, i64 %_M_ctype.i185.idx
  %6 = bitcast i8* %_M_ctype.i185 to %"class.std::ctype"**
  %7 = load %"class.std::ctype"*, %"class.std::ctype"** %6, align 8, !tbaa !24
  %tobool.not.i380 = icmp eq %"class.std::ctype"* %7, null
  br i1 %tobool.not.i380, label %if.then.i381, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit383

if.then.i381:                                     ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit383: ; preds = %entry
  %_M_widen_ok.i187 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %7, i64 0, i32 8
  %8 = load i8, i8* %_M_widen_ok.i187, align 8, !tbaa !28
  %tobool.not.i188 = icmp eq i8 %8, 0
  br i1 %tobool.not.i188, label %if.end.i194, label %if.then.i190

if.then.i190:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit383
  %arrayidx.i189 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %7, i64 0, i32 9, i64 10
  %9 = load i8, i8* %arrayidx.i189, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit196

if.end.i194:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit383
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %7)
  %10 = bitcast %"class.std::ctype"* %7 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i191 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %10, align 8, !tbaa !22
  %vfn.i192 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i191, i64 6
  %11 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i192, align 8
  %call.i193 = tail call signext i8 %11(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %7, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit196

_ZNKSt5ctypeIcE5widenEc.exit196:                  ; preds = %if.then.i190, %if.end.i194
  %retval.0.i195 = phi i8 [ %9, %if.then.i190 ], [ %call.i193, %if.end.i194 ]
  %call1.i60 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call3, i8 signext %retval.0.i195)
  %call.i61 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i60)
  %12 = extractelement <16 x i32> %1, i32 1
  %call5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %12)
  %13 = bitcast %"class.std::basic_ostream"* %call5 to i8**
  %vtable.i63 = load i8*, i8** %13, align 8, !tbaa !22
  %vbase.offset.ptr.i64 = getelementptr i8, i8* %vtable.i63, i64 -24
  %14 = bitcast i8* %vbase.offset.ptr.i64 to i64*
  %vbase.offset.i65 = load i64, i64* %14, align 8
  %15 = bitcast %"class.std::basic_ostream"* %call5 to i8*
  %_M_ctype.i197.idx = add nsw i64 %vbase.offset.i65, 240
  %_M_ctype.i197 = getelementptr inbounds i8, i8* %15, i64 %_M_ctype.i197.idx
  %16 = bitcast i8* %_M_ctype.i197 to %"class.std::ctype"**
  %17 = load %"class.std::ctype"*, %"class.std::ctype"** %16, align 8, !tbaa !24
  %tobool.not.i384 = icmp eq %"class.std::ctype"* %17, null
  br i1 %tobool.not.i384, label %if.then.i385, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit387

if.then.i385:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit196
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit387: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit196
  %_M_widen_ok.i199 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %17, i64 0, i32 8
  %18 = load i8, i8* %_M_widen_ok.i199, align 8, !tbaa !28
  %tobool.not.i200 = icmp eq i8 %18, 0
  br i1 %tobool.not.i200, label %if.end.i206, label %if.then.i202

if.then.i202:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit387
  %arrayidx.i201 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %17, i64 0, i32 9, i64 10
  %19 = load i8, i8* %arrayidx.i201, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit208

if.end.i206:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit387
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %17)
  %20 = bitcast %"class.std::ctype"* %17 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i203 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %20, align 8, !tbaa !22
  %vfn.i204 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i203, i64 6
  %21 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i204, align 8
  %call.i205 = tail call signext i8 %21(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %17, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit208

_ZNKSt5ctypeIcE5widenEc.exit208:                  ; preds = %if.then.i202, %if.end.i206
  %retval.0.i207 = phi i8 [ %19, %if.then.i202 ], [ %call.i205, %if.end.i206 ]
  %call1.i68 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call5, i8 signext %retval.0.i207)
  %call.i69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i68)
  %22 = extractelement <16 x i32> %1, i32 2
  %call7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %22)
  %23 = bitcast %"class.std::basic_ostream"* %call7 to i8**
  %vtable.i71 = load i8*, i8** %23, align 8, !tbaa !22
  %vbase.offset.ptr.i72 = getelementptr i8, i8* %vtable.i71, i64 -24
  %24 = bitcast i8* %vbase.offset.ptr.i72 to i64*
  %vbase.offset.i73 = load i64, i64* %24, align 8
  %25 = bitcast %"class.std::basic_ostream"* %call7 to i8*
  %_M_ctype.i209.idx = add nsw i64 %vbase.offset.i73, 240
  %_M_ctype.i209 = getelementptr inbounds i8, i8* %25, i64 %_M_ctype.i209.idx
  %26 = bitcast i8* %_M_ctype.i209 to %"class.std::ctype"**
  %27 = load %"class.std::ctype"*, %"class.std::ctype"** %26, align 8, !tbaa !24
  %tobool.not.i388 = icmp eq %"class.std::ctype"* %27, null
  br i1 %tobool.not.i388, label %if.then.i389, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit391

if.then.i389:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit208
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit391: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit208
  %_M_widen_ok.i211 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %27, i64 0, i32 8
  %28 = load i8, i8* %_M_widen_ok.i211, align 8, !tbaa !28
  %tobool.not.i212 = icmp eq i8 %28, 0
  br i1 %tobool.not.i212, label %if.end.i218, label %if.then.i214

if.then.i214:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit391
  %arrayidx.i213 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %27, i64 0, i32 9, i64 10
  %29 = load i8, i8* %arrayidx.i213, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit220

if.end.i218:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit391
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %27)
  %30 = bitcast %"class.std::ctype"* %27 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i215 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %30, align 8, !tbaa !22
  %vfn.i216 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i215, i64 6
  %31 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i216, align 8
  %call.i217 = tail call signext i8 %31(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %27, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit220

_ZNKSt5ctypeIcE5widenEc.exit220:                  ; preds = %if.then.i214, %if.end.i218
  %retval.0.i219 = phi i8 [ %29, %if.then.i214 ], [ %call.i217, %if.end.i218 ]
  %call1.i76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8 signext %retval.0.i219)
  %call.i77 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i76)
  %32 = extractelement <16 x i32> %1, i32 3
  %call9 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %32)
  %33 = bitcast %"class.std::basic_ostream"* %call9 to i8**
  %vtable.i79 = load i8*, i8** %33, align 8, !tbaa !22
  %vbase.offset.ptr.i80 = getelementptr i8, i8* %vtable.i79, i64 -24
  %34 = bitcast i8* %vbase.offset.ptr.i80 to i64*
  %vbase.offset.i81 = load i64, i64* %34, align 8
  %35 = bitcast %"class.std::basic_ostream"* %call9 to i8*
  %_M_ctype.i221.idx = add nsw i64 %vbase.offset.i81, 240
  %_M_ctype.i221 = getelementptr inbounds i8, i8* %35, i64 %_M_ctype.i221.idx
  %36 = bitcast i8* %_M_ctype.i221 to %"class.std::ctype"**
  %37 = load %"class.std::ctype"*, %"class.std::ctype"** %36, align 8, !tbaa !24
  %tobool.not.i392 = icmp eq %"class.std::ctype"* %37, null
  br i1 %tobool.not.i392, label %if.then.i393, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit395

if.then.i393:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit220
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit395: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit220
  %_M_widen_ok.i223 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %37, i64 0, i32 8
  %38 = load i8, i8* %_M_widen_ok.i223, align 8, !tbaa !28
  %tobool.not.i224 = icmp eq i8 %38, 0
  br i1 %tobool.not.i224, label %if.end.i230, label %if.then.i226

if.then.i226:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit395
  %arrayidx.i225 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %37, i64 0, i32 9, i64 10
  %39 = load i8, i8* %arrayidx.i225, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit232

if.end.i230:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit395
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %37)
  %40 = bitcast %"class.std::ctype"* %37 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i227 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %40, align 8, !tbaa !22
  %vfn.i228 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i227, i64 6
  %41 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i228, align 8
  %call.i229 = tail call signext i8 %41(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %37, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit232

_ZNKSt5ctypeIcE5widenEc.exit232:                  ; preds = %if.then.i226, %if.end.i230
  %retval.0.i231 = phi i8 [ %39, %if.then.i226 ], [ %call.i229, %if.end.i230 ]
  %call1.i84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call9, i8 signext %retval.0.i231)
  %call.i85 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i84)
  %42 = extractelement <16 x i32> %1, i32 4
  %call11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %42)
  %43 = bitcast %"class.std::basic_ostream"* %call11 to i8**
  %vtable.i87 = load i8*, i8** %43, align 8, !tbaa !22
  %vbase.offset.ptr.i88 = getelementptr i8, i8* %vtable.i87, i64 -24
  %44 = bitcast i8* %vbase.offset.ptr.i88 to i64*
  %vbase.offset.i89 = load i64, i64* %44, align 8
  %45 = bitcast %"class.std::basic_ostream"* %call11 to i8*
  %_M_ctype.i233.idx = add nsw i64 %vbase.offset.i89, 240
  %_M_ctype.i233 = getelementptr inbounds i8, i8* %45, i64 %_M_ctype.i233.idx
  %46 = bitcast i8* %_M_ctype.i233 to %"class.std::ctype"**
  %47 = load %"class.std::ctype"*, %"class.std::ctype"** %46, align 8, !tbaa !24
  %tobool.not.i396 = icmp eq %"class.std::ctype"* %47, null
  br i1 %tobool.not.i396, label %if.then.i397, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit399

if.then.i397:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit232
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit399: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit232
  %_M_widen_ok.i235 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %47, i64 0, i32 8
  %48 = load i8, i8* %_M_widen_ok.i235, align 8, !tbaa !28
  %tobool.not.i236 = icmp eq i8 %48, 0
  br i1 %tobool.not.i236, label %if.end.i242, label %if.then.i238

if.then.i238:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit399
  %arrayidx.i237 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %47, i64 0, i32 9, i64 10
  %49 = load i8, i8* %arrayidx.i237, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit244

if.end.i242:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit399
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %47)
  %50 = bitcast %"class.std::ctype"* %47 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i239 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %50, align 8, !tbaa !22
  %vfn.i240 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i239, i64 6
  %51 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i240, align 8
  %call.i241 = tail call signext i8 %51(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %47, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit244

_ZNKSt5ctypeIcE5widenEc.exit244:                  ; preds = %if.then.i238, %if.end.i242
  %retval.0.i243 = phi i8 [ %49, %if.then.i238 ], [ %call.i241, %if.end.i242 ]
  %call1.i92 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call11, i8 signext %retval.0.i243)
  %call.i93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i92)
  %52 = extractelement <16 x i32> %1, i32 5
  %call13 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %52)
  %53 = bitcast %"class.std::basic_ostream"* %call13 to i8**
  %vtable.i95 = load i8*, i8** %53, align 8, !tbaa !22
  %vbase.offset.ptr.i96 = getelementptr i8, i8* %vtable.i95, i64 -24
  %54 = bitcast i8* %vbase.offset.ptr.i96 to i64*
  %vbase.offset.i97 = load i64, i64* %54, align 8
  %55 = bitcast %"class.std::basic_ostream"* %call13 to i8*
  %_M_ctype.i245.idx = add nsw i64 %vbase.offset.i97, 240
  %_M_ctype.i245 = getelementptr inbounds i8, i8* %55, i64 %_M_ctype.i245.idx
  %56 = bitcast i8* %_M_ctype.i245 to %"class.std::ctype"**
  %57 = load %"class.std::ctype"*, %"class.std::ctype"** %56, align 8, !tbaa !24
  %tobool.not.i400 = icmp eq %"class.std::ctype"* %57, null
  br i1 %tobool.not.i400, label %if.then.i401, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit403

if.then.i401:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit244
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit403: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit244
  %_M_widen_ok.i247 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %57, i64 0, i32 8
  %58 = load i8, i8* %_M_widen_ok.i247, align 8, !tbaa !28
  %tobool.not.i248 = icmp eq i8 %58, 0
  br i1 %tobool.not.i248, label %if.end.i254, label %if.then.i250

if.then.i250:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit403
  %arrayidx.i249 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %57, i64 0, i32 9, i64 10
  %59 = load i8, i8* %arrayidx.i249, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit256

if.end.i254:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit403
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %57)
  %60 = bitcast %"class.std::ctype"* %57 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i251 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %60, align 8, !tbaa !22
  %vfn.i252 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i251, i64 6
  %61 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i252, align 8
  %call.i253 = tail call signext i8 %61(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %57, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit256

_ZNKSt5ctypeIcE5widenEc.exit256:                  ; preds = %if.then.i250, %if.end.i254
  %retval.0.i255 = phi i8 [ %59, %if.then.i250 ], [ %call.i253, %if.end.i254 ]
  %call1.i100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call13, i8 signext %retval.0.i255)
  %call.i101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i100)
  %62 = extractelement <16 x i32> %1, i32 6
  %call15 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %62)
  %63 = bitcast %"class.std::basic_ostream"* %call15 to i8**
  %vtable.i103 = load i8*, i8** %63, align 8, !tbaa !22
  %vbase.offset.ptr.i104 = getelementptr i8, i8* %vtable.i103, i64 -24
  %64 = bitcast i8* %vbase.offset.ptr.i104 to i64*
  %vbase.offset.i105 = load i64, i64* %64, align 8
  %65 = bitcast %"class.std::basic_ostream"* %call15 to i8*
  %_M_ctype.i257.idx = add nsw i64 %vbase.offset.i105, 240
  %_M_ctype.i257 = getelementptr inbounds i8, i8* %65, i64 %_M_ctype.i257.idx
  %66 = bitcast i8* %_M_ctype.i257 to %"class.std::ctype"**
  %67 = load %"class.std::ctype"*, %"class.std::ctype"** %66, align 8, !tbaa !24
  %tobool.not.i404 = icmp eq %"class.std::ctype"* %67, null
  br i1 %tobool.not.i404, label %if.then.i405, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit407

if.then.i405:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit256
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit407: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit256
  %_M_widen_ok.i259 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %67, i64 0, i32 8
  %68 = load i8, i8* %_M_widen_ok.i259, align 8, !tbaa !28
  %tobool.not.i260 = icmp eq i8 %68, 0
  br i1 %tobool.not.i260, label %if.end.i266, label %if.then.i262

if.then.i262:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit407
  %arrayidx.i261 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %67, i64 0, i32 9, i64 10
  %69 = load i8, i8* %arrayidx.i261, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit268

if.end.i266:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit407
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %67)
  %70 = bitcast %"class.std::ctype"* %67 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i263 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !22
  %vfn.i264 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i263, i64 6
  %71 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i264, align 8
  %call.i265 = tail call signext i8 %71(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %67, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit268

_ZNKSt5ctypeIcE5widenEc.exit268:                  ; preds = %if.then.i262, %if.end.i266
  %retval.0.i267 = phi i8 [ %69, %if.then.i262 ], [ %call.i265, %if.end.i266 ]
  %call1.i108 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call15, i8 signext %retval.0.i267)
  %call.i109 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i108)
  %72 = extractelement <16 x i32> %1, i32 7
  %call17 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %72)
  %73 = bitcast %"class.std::basic_ostream"* %call17 to i8**
  %vtable.i111 = load i8*, i8** %73, align 8, !tbaa !22
  %vbase.offset.ptr.i112 = getelementptr i8, i8* %vtable.i111, i64 -24
  %74 = bitcast i8* %vbase.offset.ptr.i112 to i64*
  %vbase.offset.i113 = load i64, i64* %74, align 8
  %75 = bitcast %"class.std::basic_ostream"* %call17 to i8*
  %_M_ctype.i269.idx = add nsw i64 %vbase.offset.i113, 240
  %_M_ctype.i269 = getelementptr inbounds i8, i8* %75, i64 %_M_ctype.i269.idx
  %76 = bitcast i8* %_M_ctype.i269 to %"class.std::ctype"**
  %77 = load %"class.std::ctype"*, %"class.std::ctype"** %76, align 8, !tbaa !24
  %tobool.not.i408 = icmp eq %"class.std::ctype"* %77, null
  br i1 %tobool.not.i408, label %if.then.i409, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit411

if.then.i409:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit268
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit411: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit268
  %_M_widen_ok.i271 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %77, i64 0, i32 8
  %78 = load i8, i8* %_M_widen_ok.i271, align 8, !tbaa !28
  %tobool.not.i272 = icmp eq i8 %78, 0
  br i1 %tobool.not.i272, label %if.end.i278, label %if.then.i274

if.then.i274:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit411
  %arrayidx.i273 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %77, i64 0, i32 9, i64 10
  %79 = load i8, i8* %arrayidx.i273, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit280

if.end.i278:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit411
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %77)
  %80 = bitcast %"class.std::ctype"* %77 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i275 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %80, align 8, !tbaa !22
  %vfn.i276 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i275, i64 6
  %81 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i276, align 8
  %call.i277 = tail call signext i8 %81(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %77, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit280

_ZNKSt5ctypeIcE5widenEc.exit280:                  ; preds = %if.then.i274, %if.end.i278
  %retval.0.i279 = phi i8 [ %79, %if.then.i274 ], [ %call.i277, %if.end.i278 ]
  %call1.i116 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call17, i8 signext %retval.0.i279)
  %call.i117 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i116)
  %82 = extractelement <16 x i32> %1, i32 8
  %call19 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %82)
  %83 = bitcast %"class.std::basic_ostream"* %call19 to i8**
  %vtable.i119 = load i8*, i8** %83, align 8, !tbaa !22
  %vbase.offset.ptr.i120 = getelementptr i8, i8* %vtable.i119, i64 -24
  %84 = bitcast i8* %vbase.offset.ptr.i120 to i64*
  %vbase.offset.i121 = load i64, i64* %84, align 8
  %85 = bitcast %"class.std::basic_ostream"* %call19 to i8*
  %_M_ctype.i281.idx = add nsw i64 %vbase.offset.i121, 240
  %_M_ctype.i281 = getelementptr inbounds i8, i8* %85, i64 %_M_ctype.i281.idx
  %86 = bitcast i8* %_M_ctype.i281 to %"class.std::ctype"**
  %87 = load %"class.std::ctype"*, %"class.std::ctype"** %86, align 8, !tbaa !24
  %tobool.not.i412 = icmp eq %"class.std::ctype"* %87, null
  br i1 %tobool.not.i412, label %if.then.i413, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit415

if.then.i413:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit280
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit415: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit280
  %_M_widen_ok.i283 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %87, i64 0, i32 8
  %88 = load i8, i8* %_M_widen_ok.i283, align 8, !tbaa !28
  %tobool.not.i284 = icmp eq i8 %88, 0
  br i1 %tobool.not.i284, label %if.end.i290, label %if.then.i286

if.then.i286:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit415
  %arrayidx.i285 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %87, i64 0, i32 9, i64 10
  %89 = load i8, i8* %arrayidx.i285, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit292

if.end.i290:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit415
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %87)
  %90 = bitcast %"class.std::ctype"* %87 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i287 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %90, align 8, !tbaa !22
  %vfn.i288 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i287, i64 6
  %91 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i288, align 8
  %call.i289 = tail call signext i8 %91(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %87, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit292

_ZNKSt5ctypeIcE5widenEc.exit292:                  ; preds = %if.then.i286, %if.end.i290
  %retval.0.i291 = phi i8 [ %89, %if.then.i286 ], [ %call.i289, %if.end.i290 ]
  %call1.i124 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call19, i8 signext %retval.0.i291)
  %call.i125 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i124)
  %92 = extractelement <16 x i32> %1, i32 9
  %call21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %92)
  %93 = bitcast %"class.std::basic_ostream"* %call21 to i8**
  %vtable.i127 = load i8*, i8** %93, align 8, !tbaa !22
  %vbase.offset.ptr.i128 = getelementptr i8, i8* %vtable.i127, i64 -24
  %94 = bitcast i8* %vbase.offset.ptr.i128 to i64*
  %vbase.offset.i129 = load i64, i64* %94, align 8
  %95 = bitcast %"class.std::basic_ostream"* %call21 to i8*
  %_M_ctype.i293.idx = add nsw i64 %vbase.offset.i129, 240
  %_M_ctype.i293 = getelementptr inbounds i8, i8* %95, i64 %_M_ctype.i293.idx
  %96 = bitcast i8* %_M_ctype.i293 to %"class.std::ctype"**
  %97 = load %"class.std::ctype"*, %"class.std::ctype"** %96, align 8, !tbaa !24
  %tobool.not.i416 = icmp eq %"class.std::ctype"* %97, null
  br i1 %tobool.not.i416, label %if.then.i417, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit419

if.then.i417:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit292
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit419: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit292
  %_M_widen_ok.i295 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %97, i64 0, i32 8
  %98 = load i8, i8* %_M_widen_ok.i295, align 8, !tbaa !28
  %tobool.not.i296 = icmp eq i8 %98, 0
  br i1 %tobool.not.i296, label %if.end.i302, label %if.then.i298

if.then.i298:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit419
  %arrayidx.i297 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %97, i64 0, i32 9, i64 10
  %99 = load i8, i8* %arrayidx.i297, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit304

if.end.i302:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit419
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %97)
  %100 = bitcast %"class.std::ctype"* %97 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i299 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %100, align 8, !tbaa !22
  %vfn.i300 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i299, i64 6
  %101 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i300, align 8
  %call.i301 = tail call signext i8 %101(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %97, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit304

_ZNKSt5ctypeIcE5widenEc.exit304:                  ; preds = %if.then.i298, %if.end.i302
  %retval.0.i303 = phi i8 [ %99, %if.then.i298 ], [ %call.i301, %if.end.i302 ]
  %call1.i132 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call21, i8 signext %retval.0.i303)
  %call.i133 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i132)
  %102 = extractelement <16 x i32> %1, i32 10
  %call23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %102)
  %103 = bitcast %"class.std::basic_ostream"* %call23 to i8**
  %vtable.i135 = load i8*, i8** %103, align 8, !tbaa !22
  %vbase.offset.ptr.i136 = getelementptr i8, i8* %vtable.i135, i64 -24
  %104 = bitcast i8* %vbase.offset.ptr.i136 to i64*
  %vbase.offset.i137 = load i64, i64* %104, align 8
  %105 = bitcast %"class.std::basic_ostream"* %call23 to i8*
  %_M_ctype.i305.idx = add nsw i64 %vbase.offset.i137, 240
  %_M_ctype.i305 = getelementptr inbounds i8, i8* %105, i64 %_M_ctype.i305.idx
  %106 = bitcast i8* %_M_ctype.i305 to %"class.std::ctype"**
  %107 = load %"class.std::ctype"*, %"class.std::ctype"** %106, align 8, !tbaa !24
  %tobool.not.i420 = icmp eq %"class.std::ctype"* %107, null
  br i1 %tobool.not.i420, label %if.then.i421, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit423

if.then.i421:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit304
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit423: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit304
  %_M_widen_ok.i307 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %107, i64 0, i32 8
  %108 = load i8, i8* %_M_widen_ok.i307, align 8, !tbaa !28
  %tobool.not.i308 = icmp eq i8 %108, 0
  br i1 %tobool.not.i308, label %if.end.i314, label %if.then.i310

if.then.i310:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit423
  %arrayidx.i309 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %107, i64 0, i32 9, i64 10
  %109 = load i8, i8* %arrayidx.i309, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit316

if.end.i314:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit423
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %107)
  %110 = bitcast %"class.std::ctype"* %107 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i311 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %110, align 8, !tbaa !22
  %vfn.i312 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i311, i64 6
  %111 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i312, align 8
  %call.i313 = tail call signext i8 %111(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %107, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit316

_ZNKSt5ctypeIcE5widenEc.exit316:                  ; preds = %if.then.i310, %if.end.i314
  %retval.0.i315 = phi i8 [ %109, %if.then.i310 ], [ %call.i313, %if.end.i314 ]
  %call1.i140 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call23, i8 signext %retval.0.i315)
  %call.i141 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i140)
  %112 = extractelement <16 x i32> %1, i32 11
  %call25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %112)
  %113 = bitcast %"class.std::basic_ostream"* %call25 to i8**
  %vtable.i143 = load i8*, i8** %113, align 8, !tbaa !22
  %vbase.offset.ptr.i144 = getelementptr i8, i8* %vtable.i143, i64 -24
  %114 = bitcast i8* %vbase.offset.ptr.i144 to i64*
  %vbase.offset.i145 = load i64, i64* %114, align 8
  %115 = bitcast %"class.std::basic_ostream"* %call25 to i8*
  %_M_ctype.i317.idx = add nsw i64 %vbase.offset.i145, 240
  %_M_ctype.i317 = getelementptr inbounds i8, i8* %115, i64 %_M_ctype.i317.idx
  %116 = bitcast i8* %_M_ctype.i317 to %"class.std::ctype"**
  %117 = load %"class.std::ctype"*, %"class.std::ctype"** %116, align 8, !tbaa !24
  %tobool.not.i424 = icmp eq %"class.std::ctype"* %117, null
  br i1 %tobool.not.i424, label %if.then.i425, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit427

if.then.i425:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit316
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit427: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit316
  %_M_widen_ok.i319 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %117, i64 0, i32 8
  %118 = load i8, i8* %_M_widen_ok.i319, align 8, !tbaa !28
  %tobool.not.i320 = icmp eq i8 %118, 0
  br i1 %tobool.not.i320, label %if.end.i326, label %if.then.i322

if.then.i322:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit427
  %arrayidx.i321 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %117, i64 0, i32 9, i64 10
  %119 = load i8, i8* %arrayidx.i321, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit328

if.end.i326:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit427
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %117)
  %120 = bitcast %"class.std::ctype"* %117 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i323 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %120, align 8, !tbaa !22
  %vfn.i324 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i323, i64 6
  %121 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i324, align 8
  %call.i325 = tail call signext i8 %121(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %117, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit328

_ZNKSt5ctypeIcE5widenEc.exit328:                  ; preds = %if.then.i322, %if.end.i326
  %retval.0.i327 = phi i8 [ %119, %if.then.i322 ], [ %call.i325, %if.end.i326 ]
  %call1.i148 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call25, i8 signext %retval.0.i327)
  %call.i149 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i148)
  %122 = extractelement <16 x i32> %1, i32 12
  %call27 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %122)
  %123 = bitcast %"class.std::basic_ostream"* %call27 to i8**
  %vtable.i151 = load i8*, i8** %123, align 8, !tbaa !22
  %vbase.offset.ptr.i152 = getelementptr i8, i8* %vtable.i151, i64 -24
  %124 = bitcast i8* %vbase.offset.ptr.i152 to i64*
  %vbase.offset.i153 = load i64, i64* %124, align 8
  %125 = bitcast %"class.std::basic_ostream"* %call27 to i8*
  %_M_ctype.i329.idx = add nsw i64 %vbase.offset.i153, 240
  %_M_ctype.i329 = getelementptr inbounds i8, i8* %125, i64 %_M_ctype.i329.idx
  %126 = bitcast i8* %_M_ctype.i329 to %"class.std::ctype"**
  %127 = load %"class.std::ctype"*, %"class.std::ctype"** %126, align 8, !tbaa !24
  %tobool.not.i428 = icmp eq %"class.std::ctype"* %127, null
  br i1 %tobool.not.i428, label %if.then.i429, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit431

if.then.i429:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit328
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit431: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit328
  %_M_widen_ok.i331 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %127, i64 0, i32 8
  %128 = load i8, i8* %_M_widen_ok.i331, align 8, !tbaa !28
  %tobool.not.i332 = icmp eq i8 %128, 0
  br i1 %tobool.not.i332, label %if.end.i338, label %if.then.i334

if.then.i334:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit431
  %arrayidx.i333 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %127, i64 0, i32 9, i64 10
  %129 = load i8, i8* %arrayidx.i333, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit340

if.end.i338:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit431
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %127)
  %130 = bitcast %"class.std::ctype"* %127 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i335 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %130, align 8, !tbaa !22
  %vfn.i336 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i335, i64 6
  %131 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i336, align 8
  %call.i337 = tail call signext i8 %131(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %127, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit340

_ZNKSt5ctypeIcE5widenEc.exit340:                  ; preds = %if.then.i334, %if.end.i338
  %retval.0.i339 = phi i8 [ %129, %if.then.i334 ], [ %call.i337, %if.end.i338 ]
  %call1.i156 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call27, i8 signext %retval.0.i339)
  %call.i157 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i156)
  %132 = extractelement <16 x i32> %1, i32 13
  %call29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %132)
  %133 = bitcast %"class.std::basic_ostream"* %call29 to i8**
  %vtable.i159 = load i8*, i8** %133, align 8, !tbaa !22
  %vbase.offset.ptr.i160 = getelementptr i8, i8* %vtable.i159, i64 -24
  %134 = bitcast i8* %vbase.offset.ptr.i160 to i64*
  %vbase.offset.i161 = load i64, i64* %134, align 8
  %135 = bitcast %"class.std::basic_ostream"* %call29 to i8*
  %_M_ctype.i341.idx = add nsw i64 %vbase.offset.i161, 240
  %_M_ctype.i341 = getelementptr inbounds i8, i8* %135, i64 %_M_ctype.i341.idx
  %136 = bitcast i8* %_M_ctype.i341 to %"class.std::ctype"**
  %137 = load %"class.std::ctype"*, %"class.std::ctype"** %136, align 8, !tbaa !24
  %tobool.not.i432 = icmp eq %"class.std::ctype"* %137, null
  br i1 %tobool.not.i432, label %if.then.i433, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit435

if.then.i433:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit340
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit435: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit340
  %_M_widen_ok.i343 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %137, i64 0, i32 8
  %138 = load i8, i8* %_M_widen_ok.i343, align 8, !tbaa !28
  %tobool.not.i344 = icmp eq i8 %138, 0
  br i1 %tobool.not.i344, label %if.end.i350, label %if.then.i346

if.then.i346:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit435
  %arrayidx.i345 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %137, i64 0, i32 9, i64 10
  %139 = load i8, i8* %arrayidx.i345, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit352

if.end.i350:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit435
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %137)
  %140 = bitcast %"class.std::ctype"* %137 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i347 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %140, align 8, !tbaa !22
  %vfn.i348 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i347, i64 6
  %141 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i348, align 8
  %call.i349 = tail call signext i8 %141(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %137, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit352

_ZNKSt5ctypeIcE5widenEc.exit352:                  ; preds = %if.then.i346, %if.end.i350
  %retval.0.i351 = phi i8 [ %139, %if.then.i346 ], [ %call.i349, %if.end.i350 ]
  %call1.i164 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call29, i8 signext %retval.0.i351)
  %call.i165 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i164)
  %142 = extractelement <16 x i32> %1, i32 14
  %call31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %142)
  %143 = bitcast %"class.std::basic_ostream"* %call31 to i8**
  %vtable.i167 = load i8*, i8** %143, align 8, !tbaa !22
  %vbase.offset.ptr.i168 = getelementptr i8, i8* %vtable.i167, i64 -24
  %144 = bitcast i8* %vbase.offset.ptr.i168 to i64*
  %vbase.offset.i169 = load i64, i64* %144, align 8
  %145 = bitcast %"class.std::basic_ostream"* %call31 to i8*
  %_M_ctype.i353.idx = add nsw i64 %vbase.offset.i169, 240
  %_M_ctype.i353 = getelementptr inbounds i8, i8* %145, i64 %_M_ctype.i353.idx
  %146 = bitcast i8* %_M_ctype.i353 to %"class.std::ctype"**
  %147 = load %"class.std::ctype"*, %"class.std::ctype"** %146, align 8, !tbaa !24
  %tobool.not.i436 = icmp eq %"class.std::ctype"* %147, null
  br i1 %tobool.not.i436, label %if.then.i437, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit439

if.then.i437:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit352
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit439: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit352
  %_M_widen_ok.i355 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %147, i64 0, i32 8
  %148 = load i8, i8* %_M_widen_ok.i355, align 8, !tbaa !28
  %tobool.not.i356 = icmp eq i8 %148, 0
  br i1 %tobool.not.i356, label %if.end.i362, label %if.then.i358

if.then.i358:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit439
  %arrayidx.i357 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %147, i64 0, i32 9, i64 10
  %149 = load i8, i8* %arrayidx.i357, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit364

if.end.i362:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit439
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %147)
  %150 = bitcast %"class.std::ctype"* %147 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i359 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %150, align 8, !tbaa !22
  %vfn.i360 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i359, i64 6
  %151 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i360, align 8
  %call.i361 = tail call signext i8 %151(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %147, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit364

_ZNKSt5ctypeIcE5widenEc.exit364:                  ; preds = %if.then.i358, %if.end.i362
  %retval.0.i363 = phi i8 [ %149, %if.then.i358 ], [ %call.i361, %if.end.i362 ]
  %call1.i172 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call31, i8 signext %retval.0.i363)
  %call.i173 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i172)
  %152 = extractelement <16 x i32> %1, i32 15
  %call33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %152)
  %153 = bitcast %"class.std::basic_ostream"* %call33 to i8**
  %vtable.i175 = load i8*, i8** %153, align 8, !tbaa !22
  %vbase.offset.ptr.i176 = getelementptr i8, i8* %vtable.i175, i64 -24
  %154 = bitcast i8* %vbase.offset.ptr.i176 to i64*
  %vbase.offset.i177 = load i64, i64* %154, align 8
  %155 = bitcast %"class.std::basic_ostream"* %call33 to i8*
  %_M_ctype.i365.idx = add nsw i64 %vbase.offset.i177, 240
  %_M_ctype.i365 = getelementptr inbounds i8, i8* %155, i64 %_M_ctype.i365.idx
  %156 = bitcast i8* %_M_ctype.i365 to %"class.std::ctype"**
  %157 = load %"class.std::ctype"*, %"class.std::ctype"** %156, align 8, !tbaa !24
  %tobool.not.i440 = icmp eq %"class.std::ctype"* %157, null
  br i1 %tobool.not.i440, label %if.then.i441, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit443

if.then.i441:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit364
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit443: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit364
  %_M_widen_ok.i367 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %157, i64 0, i32 8
  %158 = load i8, i8* %_M_widen_ok.i367, align 8, !tbaa !28
  %tobool.not.i368 = icmp eq i8 %158, 0
  br i1 %tobool.not.i368, label %if.end.i374, label %if.then.i370

if.then.i370:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit443
  %arrayidx.i369 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %157, i64 0, i32 9, i64 10
  %159 = load i8, i8* %arrayidx.i369, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit376

if.end.i374:                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit443
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %157)
  %160 = bitcast %"class.std::ctype"* %157 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i371 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %160, align 8, !tbaa !22
  %vfn.i372 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i371, i64 6
  %161 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i372, align 8
  %call.i373 = tail call signext i8 %161(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %157, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit376

_ZNKSt5ctypeIcE5widenEc.exit376:                  ; preds = %if.then.i370, %if.end.i374
  %retval.0.i375 = phi i8 [ %159, %if.then.i370 ], [ %call.i373, %if.end.i374 ]
  %call1.i180 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call33, i8 signext %retval.0.i375)
  %call.i181 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i180)
  %vtable.i = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %162 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %162, align 8
  %_M_ctype.i.idx = add nsw i64 %vbase.offset.i, 240
  %_M_ctype.i = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %_M_ctype.i.idx
  %163 = bitcast i8* %_M_ctype.i to %"class.std::ctype"**
  %164 = load %"class.std::ctype"*, %"class.std::ctype"** %163, align 8, !tbaa !24
  %tobool.not.i377 = icmp eq %"class.std::ctype"* %164, null
  br i1 %tobool.not.i377, label %if.then.i378, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i378:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit376
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %_ZNKSt5ctypeIcE5widenEc.exit376
  %_M_widen_ok.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %164, i64 0, i32 8
  %165 = load i8, i8* %_M_widen_ok.i, align 8, !tbaa !28
  %tobool.not.i = icmp eq i8 %165, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %arrayidx.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %164, i64 0, i32 9, i64 10
  %166 = load i8, i8* %arrayidx.i, align 1, !tbaa !20
  br label %_ZNKSt5ctypeIcE5widenEc.exit

if.end.i:                                         ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %164)
  %167 = bitcast %"class.std::ctype"* %164 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i183 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %167, align 8, !tbaa !22
  %vfn.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i183, i64 6
  %168 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i, align 8
  %call.i184 = tail call signext i8 %168(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %164, i8 signext 10)
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi i8 [ %166, %if.then.i ], [ %call.i184, %if.end.i ]
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %retval.0.i)
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z27pipeline_512_8_8vreg_reducePlii(i64* nocapture readnone %sum, i32 %prolog, i32 %tile_size) #9 {
entry:
  %0 = load <16 x i32>, <16 x i32>* bitcast ([1280000 x i32]* @B to <16 x i32>*), align 64, !tbaa !20
  %1 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 16) to <16 x i32>*), align 64, !tbaa !20
  %2 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 32) to <16 x i32>*), align 64, !tbaa !20
  %3 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 48) to <16 x i32>*), align 64, !tbaa !20
  %4 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 64) to <16 x i32>*), align 64, !tbaa !20
  %5 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 80) to <16 x i32>*), align 64, !tbaa !20
  %6 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 96) to <16 x i32>*), align 64, !tbaa !20
  %7 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 112) to <16 x i32>*), align 64, !tbaa !20
  %8 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %0, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %9 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %1, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %10 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %2, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %11 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %3, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %12 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %4, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %13 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %5, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %14 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %6, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %15 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %7, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %conv = sext i32 %tile_size to i64
  %div318 = sdiv i32 1280000, %tile_size
  %div.sext = sext i32 %div318 to i64
  %sub = add nsw i64 %div.sext, -2
  %z7.0339 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 240) to <8 x i64>*), align 64, !tbaa !20
  %z6.0340 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 224) to <8 x i64>*), align 64, !tbaa !20
  %z5.0341 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 208) to <8 x i64>*), align 64, !tbaa !20
  %z4.0342 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 192) to <8 x i64>*), align 64, !tbaa !20
  %z3.0343 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 176) to <8 x i64>*), align 64, !tbaa !20
  %z2.0344 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 160) to <8 x i64>*), align 64, !tbaa !20
  %z1.0345 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 144) to <8 x i64>*), align 64, !tbaa !20
  %z0.0346 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 128) to <8 x i64>*), align 64, !tbaa !20
  %cmp347 = icmp sgt i32 %div318, 2
  br i1 %cmp347, label %for.body, label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.body, %entry
  %z16.0.in.lcssa = phi <16 x i32> [ %8, %entry ], [ %53, %for.body ]
  %z17.0.in.lcssa = phi <16 x i32> [ %9, %entry ], [ %55, %for.body ]
  %z18.0.in.lcssa = phi <16 x i32> [ %10, %entry ], [ %57, %for.body ]
  %z19.0.in.lcssa = phi <16 x i32> [ %11, %entry ], [ %59, %for.body ]
  %z20.0.in.lcssa = phi <16 x i32> [ %12, %entry ], [ %61, %for.body ]
  %z21.0.in.lcssa = phi <16 x i32> [ %13, %entry ], [ %63, %for.body ]
  %z22.0.in.lcssa = phi <16 x i32> [ %14, %entry ], [ %65, %for.body ]
  %z23.0.in.lcssa = phi <16 x i32> [ %15, %entry ], [ %67, %for.body ]
  %tile_id.0.lcssa = phi i64 [ 0, %entry ], [ %sub, %for.body ]
  %z7.0.lcssa = phi <8 x i64> [ %z7.0339, %entry ], [ %z7.0, %for.body ]
  %z6.0.lcssa = phi <8 x i64> [ %z6.0340, %entry ], [ %z6.0, %for.body ]
  %z5.0.lcssa = phi <8 x i64> [ %z5.0341, %entry ], [ %z5.0, %for.body ]
  %z4.0.lcssa = phi <8 x i64> [ %z4.0342, %entry ], [ %z4.0, %for.body ]
  %z3.0.lcssa = phi <8 x i64> [ %z3.0343, %entry ], [ %z3.0, %for.body ]
  %z2.0.lcssa = phi <8 x i64> [ %z2.0344, %entry ], [ %z2.0, %for.body ]
  %z1.0.lcssa = phi <8 x i64> [ %z1.0345, %entry ], [ %z1.0, %for.body ]
  %z0.0.lcssa = phi <8 x i64> [ %z0.0346, %entry ], [ %z0.0, %for.body ]
  %sub112 = add nsw i64 %div.sext, -1
  %16 = bitcast <8 x i64> %z0.0.lcssa to <16 x i32>
  %17 = bitcast <8 x i64> %z1.0.lcssa to <16 x i32>
  %18 = bitcast <8 x i64> %z2.0.lcssa to <16 x i32>
  %19 = bitcast <8 x i64> %z3.0.lcssa to <16 x i32>
  %20 = bitcast <8 x i64> %z4.0.lcssa to <16 x i32>
  %21 = bitcast <8 x i64> %z5.0.lcssa to <16 x i32>
  %22 = bitcast <8 x i64> %z6.0.lcssa to <16 x i32>
  %23 = bitcast <8 x i64> %z7.0.lcssa to <16 x i32>
  %cmp113321 = icmp slt i64 %tile_id.0.lcssa, %sub112
  br i1 %cmp113321, label %for.body114.preheader, label %for.cond158.preheader

for.body114.preheader:                            ; preds = %for.cond109.preheader
  %24 = add nsw i64 %div.sext, 1
  %25 = add nsw i64 %tile_id.0.lcssa, 2
  %26 = sub nsw i64 %24, %25
  %xtraiter497 = and i64 %26, 1
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %for.body114.prol.loopexit, label %for.body114.prol

for.body114.prol:                                 ; preds = %for.body114.preheader
  %mul116.prol = mul nsw i64 %tile_id.0.lcssa, %conv
  %add.ptr117.prol = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul116.prol
  %27 = bitcast i32* %add.ptr117.prol to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa, <16 x i32>* %27, align 64, !tbaa !20
  %add.ptr122.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 16
  %28 = bitcast i32* %add.ptr122.prol to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa, <16 x i32>* %28, align 64, !tbaa !20
  %add.ptr126.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 32
  %29 = bitcast i32* %add.ptr126.prol to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa, <16 x i32>* %29, align 64, !tbaa !20
  %add.ptr130.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 48
  %30 = bitcast i32* %add.ptr130.prol to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa, <16 x i32>* %30, align 64, !tbaa !20
  %add.ptr134.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 64
  %31 = bitcast i32* %add.ptr134.prol to <16 x i32>*
  store <16 x i32> %z20.0.in.lcssa, <16 x i32>* %31, align 64, !tbaa !20
  %add.ptr138.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 80
  %32 = bitcast i32* %add.ptr138.prol to <16 x i32>*
  store <16 x i32> %z21.0.in.lcssa, <16 x i32>* %32, align 64, !tbaa !20
  %add.ptr142.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 96
  %33 = bitcast i32* %add.ptr142.prol to <16 x i32>*
  store <16 x i32> %z22.0.in.lcssa, <16 x i32>* %33, align 64, !tbaa !20
  %add.ptr146.prol = getelementptr inbounds i32, i32* %add.ptr117.prol, i64 112
  %34 = bitcast i32* %add.ptr146.prol to <16 x i32>*
  store <16 x i32> %z23.0.in.lcssa, <16 x i32>* %34, align 64, !tbaa !20
  %35 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %16, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %36 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %17, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %37 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %18, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %38 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %19, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %39 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %20, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %40 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %21, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %41 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %22, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %42 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %23, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %inc156.prol = add nuw nsw i64 %tile_id.0.lcssa, 1
  br label %for.body114.prol.loopexit

for.body114.prol.loopexit:                        ; preds = %for.body114.prol, %for.body114.preheader
  %.lcssa480.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %35, %for.body114.prol ]
  %.lcssa479.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %36, %for.body114.prol ]
  %.lcssa478.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %37, %for.body114.prol ]
  %.lcssa477.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %38, %for.body114.prol ]
  %.lcssa476.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %39, %for.body114.prol ]
  %.lcssa475.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %40, %for.body114.prol ]
  %.lcssa474.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %41, %for.body114.prol ]
  %.lcssa.unr = phi <16 x i32> [ undef, %for.body114.preheader ], [ %42, %for.body114.prol ]
  %tile_id.1330.unr = phi i64 [ %tile_id.0.lcssa, %for.body114.preheader ], [ %inc156.prol, %for.body114.prol ]
  %z23.1.in329.unr = phi <16 x i32> [ %z23.0.in.lcssa, %for.body114.preheader ], [ %42, %for.body114.prol ]
  %z22.1.in328.unr = phi <16 x i32> [ %z22.0.in.lcssa, %for.body114.preheader ], [ %41, %for.body114.prol ]
  %z21.1.in327.unr = phi <16 x i32> [ %z21.0.in.lcssa, %for.body114.preheader ], [ %40, %for.body114.prol ]
  %z20.1.in326.unr = phi <16 x i32> [ %z20.0.in.lcssa, %for.body114.preheader ], [ %39, %for.body114.prol ]
  %z19.1.in325.unr = phi <16 x i32> [ %z19.0.in.lcssa, %for.body114.preheader ], [ %38, %for.body114.prol ]
  %z18.1.in324.unr = phi <16 x i32> [ %z18.0.in.lcssa, %for.body114.preheader ], [ %37, %for.body114.prol ]
  %z17.1.in323.unr = phi <16 x i32> [ %z17.0.in.lcssa, %for.body114.preheader ], [ %36, %for.body114.prol ]
  %z16.1.in322.unr = phi <16 x i32> [ %z16.0.in.lcssa, %for.body114.preheader ], [ %35, %for.body114.prol ]
  %43 = icmp eq i64 %25, %div.sext
  br i1 %43, label %for.body162.preheader, label %for.body114

for.body:                                         ; preds = %entry, %for.body
  %z0.0364 = phi <8 x i64> [ %z0.0, %for.body ], [ %z0.0346, %entry ]
  %z1.0363 = phi <8 x i64> [ %z1.0, %for.body ], [ %z1.0345, %entry ]
  %z2.0362 = phi <8 x i64> [ %z2.0, %for.body ], [ %z2.0344, %entry ]
  %z3.0361 = phi <8 x i64> [ %z3.0, %for.body ], [ %z3.0343, %entry ]
  %z4.0360 = phi <8 x i64> [ %z4.0, %for.body ], [ %z4.0342, %entry ]
  %z5.0359 = phi <8 x i64> [ %z5.0, %for.body ], [ %z5.0341, %entry ]
  %z6.0358 = phi <8 x i64> [ %z6.0, %for.body ], [ %z6.0340, %entry ]
  %z7.0357 = phi <8 x i64> [ %z7.0, %for.body ], [ %z7.0339, %entry ]
  %tile_id.0356 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %z23.0.in355 = phi <16 x i32> [ %67, %for.body ], [ %15, %entry ]
  %z22.0.in354 = phi <16 x i32> [ %65, %for.body ], [ %14, %entry ]
  %z21.0.in353 = phi <16 x i32> [ %63, %for.body ], [ %13, %entry ]
  %z20.0.in352 = phi <16 x i32> [ %61, %for.body ], [ %12, %entry ]
  %z19.0.in351 = phi <16 x i32> [ %59, %for.body ], [ %11, %entry ]
  %z18.0.in350 = phi <16 x i32> [ %57, %for.body ], [ %10, %entry ]
  %z17.0.in349 = phi <16 x i32> [ %55, %for.body ], [ %9, %entry ]
  %z16.0.in348 = phi <16 x i32> [ %53, %for.body ], [ %8, %entry ]
  %mul = mul nsw i64 %tile_id.0356, %conv
  %add.ptr = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul
  %44 = bitcast i32* %add.ptr to <16 x i32>*
  store <16 x i32> %z16.0.in348, <16 x i32>* %44, align 64, !tbaa !20
  %add.ptr29 = getelementptr inbounds i32, i32* %add.ptr, i64 16
  %45 = bitcast i32* %add.ptr29 to <16 x i32>*
  store <16 x i32> %z17.0.in349, <16 x i32>* %45, align 64, !tbaa !20
  %add.ptr33 = getelementptr inbounds i32, i32* %add.ptr, i64 32
  %46 = bitcast i32* %add.ptr33 to <16 x i32>*
  store <16 x i32> %z18.0.in350, <16 x i32>* %46, align 64, !tbaa !20
  %add.ptr37 = getelementptr inbounds i32, i32* %add.ptr, i64 48
  %47 = bitcast i32* %add.ptr37 to <16 x i32>*
  store <16 x i32> %z19.0.in351, <16 x i32>* %47, align 64, !tbaa !20
  %add.ptr41 = getelementptr inbounds i32, i32* %add.ptr, i64 64
  %48 = bitcast i32* %add.ptr41 to <16 x i32>*
  store <16 x i32> %z20.0.in352, <16 x i32>* %48, align 64, !tbaa !20
  %add.ptr45 = getelementptr inbounds i32, i32* %add.ptr, i64 80
  %49 = bitcast i32* %add.ptr45 to <16 x i32>*
  store <16 x i32> %z21.0.in353, <16 x i32>* %49, align 64, !tbaa !20
  %add.ptr49 = getelementptr inbounds i32, i32* %add.ptr, i64 96
  %50 = bitcast i32* %add.ptr49 to <16 x i32>*
  store <16 x i32> %z22.0.in354, <16 x i32>* %50, align 64, !tbaa !20
  %add.ptr53 = getelementptr inbounds i32, i32* %add.ptr, i64 112
  %51 = bitcast i32* %add.ptr53 to <16 x i32>*
  store <16 x i32> %z23.0.in355, <16 x i32>* %51, align 64, !tbaa !20
  %52 = bitcast <8 x i64> %z0.0364 to <16 x i32>
  %53 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %52, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %54 = bitcast <8 x i64> %z1.0363 to <16 x i32>
  %55 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %54, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %56 = bitcast <8 x i64> %z2.0362 to <16 x i32>
  %57 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %56, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %58 = bitcast <8 x i64> %z3.0361 to <16 x i32>
  %59 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %58, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %60 = bitcast <8 x i64> %z4.0360 to <16 x i32>
  %61 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %60, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %62 = bitcast <8 x i64> %z5.0359 to <16 x i32>
  %63 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %62, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %64 = bitcast <8 x i64> %z6.0358 to <16 x i32>
  %65 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %64, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %66 = bitcast <8 x i64> %z7.0357 to <16 x i32>
  %67 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %66, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add = add nuw nsw i64 %tile_id.0356, 1
  %mul63 = mul nsw i64 %add, %conv
  %add.ptr64 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %mul63
  %68 = bitcast i32* %add.ptr64 to <8 x i64>*
  %add.ptr71 = getelementptr inbounds i32, i32* %add.ptr64, i64 16
  %69 = bitcast i32* %add.ptr71 to <8 x i64>*
  %add.ptr77 = getelementptr inbounds i32, i32* %add.ptr64, i64 32
  %70 = bitcast i32* %add.ptr77 to <8 x i64>*
  %add.ptr83 = getelementptr inbounds i32, i32* %add.ptr64, i64 48
  %71 = bitcast i32* %add.ptr83 to <8 x i64>*
  %add.ptr89 = getelementptr inbounds i32, i32* %add.ptr64, i64 64
  %72 = bitcast i32* %add.ptr89 to <8 x i64>*
  %add.ptr95 = getelementptr inbounds i32, i32* %add.ptr64, i64 80
  %73 = bitcast i32* %add.ptr95 to <8 x i64>*
  %add.ptr101 = getelementptr inbounds i32, i32* %add.ptr64, i64 96
  %74 = bitcast i32* %add.ptr101 to <8 x i64>*
  %add.ptr107 = getelementptr inbounds i32, i32* %add.ptr64, i64 112
  %75 = bitcast i32* %add.ptr107 to <8 x i64>*
  %z7.0 = load <8 x i64>, <8 x i64>* %75, align 64, !tbaa !20
  %z6.0 = load <8 x i64>, <8 x i64>* %74, align 64, !tbaa !20
  %z5.0 = load <8 x i64>, <8 x i64>* %73, align 64, !tbaa !20
  %z4.0 = load <8 x i64>, <8 x i64>* %72, align 64, !tbaa !20
  %z3.0 = load <8 x i64>, <8 x i64>* %71, align 64, !tbaa !20
  %z2.0 = load <8 x i64>, <8 x i64>* %70, align 64, !tbaa !20
  %z1.0 = load <8 x i64>, <8 x i64>* %69, align 64, !tbaa !20
  %z0.0 = load <8 x i64>, <8 x i64>* %68, align 64, !tbaa !20
  %exitcond408.not = icmp eq i64 %add, %sub
  br i1 %exitcond408.not, label %for.cond109.preheader, label %for.body, !llvm.loop !30

for.cond158.preheader:                            ; preds = %for.cond109.preheader
  %cmp161319 = icmp slt i64 %tile_id.0.lcssa, %div.sext
  br i1 %cmp161319, label %for.body162.preheader, label %for.end197

for.body162.preheader:                            ; preds = %for.body114.prol.loopexit, %for.body114, %for.cond158.preheader
  %tile_id.1.lcssa427 = phi i64 [ %tile_id.0.lcssa, %for.cond158.preheader ], [ %sub112, %for.body114 ], [ %sub112, %for.body114.prol.loopexit ]
  %z23.1.in.lcssa426 = phi <16 x i32> [ %z23.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa.unr, %for.body114.prol.loopexit ], [ %119, %for.body114 ]
  %z22.1.in.lcssa425 = phi <16 x i32> [ %z22.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa474.unr, %for.body114.prol.loopexit ], [ %118, %for.body114 ]
  %z21.1.in.lcssa424 = phi <16 x i32> [ %z21.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa475.unr, %for.body114.prol.loopexit ], [ %117, %for.body114 ]
  %z20.1.in.lcssa423 = phi <16 x i32> [ %z20.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa476.unr, %for.body114.prol.loopexit ], [ %116, %for.body114 ]
  %z19.1.in.lcssa422 = phi <16 x i32> [ %z19.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa477.unr, %for.body114.prol.loopexit ], [ %115, %for.body114 ]
  %z18.1.in.lcssa421 = phi <16 x i32> [ %z18.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa478.unr, %for.body114.prol.loopexit ], [ %114, %for.body114 ]
  %z17.1.in.lcssa420 = phi <16 x i32> [ %z17.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa479.unr, %for.body114.prol.loopexit ], [ %113, %for.body114 ]
  %z16.1.in.lcssa419 = phi <16 x i32> [ %z16.0.in.lcssa, %for.cond158.preheader ], [ %.lcssa480.unr, %for.body114.prol.loopexit ], [ %112, %for.body114 ]
  %76 = sub nsw i64 %div.sext, %tile_id.1.lcssa427
  %77 = xor i64 %tile_id.1.lcssa427, -1
  %78 = add nsw i64 %77, %div.sext
  %xtraiter = and i64 %76, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body162.prol.loopexit, label %for.body162.prol

for.body162.prol:                                 ; preds = %for.body162.preheader, %for.body162.prol
  %tile_id.2320.prol = phi i64 [ %inc196.prol, %for.body162.prol ], [ %tile_id.1.lcssa427, %for.body162.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body162.prol ], [ %xtraiter, %for.body162.preheader ]
  %mul164.prol = mul nsw i64 %tile_id.2320.prol, %conv
  %add.ptr165.prol = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul164.prol
  %79 = bitcast i32* %add.ptr165.prol to <16 x i32>*
  store <16 x i32> %z16.1.in.lcssa419, <16 x i32>* %79, align 64, !tbaa !20
  %add.ptr170.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 16
  %80 = bitcast i32* %add.ptr170.prol to <16 x i32>*
  store <16 x i32> %z17.1.in.lcssa420, <16 x i32>* %80, align 64, !tbaa !20
  %add.ptr174.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 32
  %81 = bitcast i32* %add.ptr174.prol to <16 x i32>*
  store <16 x i32> %z18.1.in.lcssa421, <16 x i32>* %81, align 64, !tbaa !20
  %add.ptr178.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 48
  %82 = bitcast i32* %add.ptr178.prol to <16 x i32>*
  store <16 x i32> %z19.1.in.lcssa422, <16 x i32>* %82, align 64, !tbaa !20
  %add.ptr182.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 64
  %83 = bitcast i32* %add.ptr182.prol to <16 x i32>*
  store <16 x i32> %z20.1.in.lcssa423, <16 x i32>* %83, align 64, !tbaa !20
  %add.ptr186.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 80
  %84 = bitcast i32* %add.ptr186.prol to <16 x i32>*
  store <16 x i32> %z21.1.in.lcssa424, <16 x i32>* %84, align 64, !tbaa !20
  %add.ptr190.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 96
  %85 = bitcast i32* %add.ptr190.prol to <16 x i32>*
  store <16 x i32> %z22.1.in.lcssa425, <16 x i32>* %85, align 64, !tbaa !20
  %add.ptr194.prol = getelementptr inbounds i32, i32* %add.ptr165.prol, i64 112
  %86 = bitcast i32* %add.ptr194.prol to <16 x i32>*
  store <16 x i32> %z23.1.in.lcssa426, <16 x i32>* %86, align 64, !tbaa !20
  %inc196.prol = add nuw nsw i64 %tile_id.2320.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body162.prol.loopexit, label %for.body162.prol, !llvm.loop !31

for.body162.prol.loopexit:                        ; preds = %for.body162.prol, %for.body162.preheader
  %tile_id.2320.unr = phi i64 [ %tile_id.1.lcssa427, %for.body162.preheader ], [ %inc196.prol, %for.body162.prol ]
  %87 = icmp ult i64 %78, 3
  br i1 %87, label %for.end197, label %for.body162

for.body114:                                      ; preds = %for.body114.prol.loopexit, %for.body114
  %tile_id.1330 = phi i64 [ %inc156.1, %for.body114 ], [ %tile_id.1330.unr, %for.body114.prol.loopexit ]
  %z23.1.in329 = phi <16 x i32> [ %119, %for.body114 ], [ %z23.1.in329.unr, %for.body114.prol.loopexit ]
  %z22.1.in328 = phi <16 x i32> [ %118, %for.body114 ], [ %z22.1.in328.unr, %for.body114.prol.loopexit ]
  %z21.1.in327 = phi <16 x i32> [ %117, %for.body114 ], [ %z21.1.in327.unr, %for.body114.prol.loopexit ]
  %z20.1.in326 = phi <16 x i32> [ %116, %for.body114 ], [ %z20.1.in326.unr, %for.body114.prol.loopexit ]
  %z19.1.in325 = phi <16 x i32> [ %115, %for.body114 ], [ %z19.1.in325.unr, %for.body114.prol.loopexit ]
  %z18.1.in324 = phi <16 x i32> [ %114, %for.body114 ], [ %z18.1.in324.unr, %for.body114.prol.loopexit ]
  %z17.1.in323 = phi <16 x i32> [ %113, %for.body114 ], [ %z17.1.in323.unr, %for.body114.prol.loopexit ]
  %z16.1.in322 = phi <16 x i32> [ %112, %for.body114 ], [ %z16.1.in322.unr, %for.body114.prol.loopexit ]
  %mul116 = mul nsw i64 %tile_id.1330, %conv
  %add.ptr117 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul116
  %88 = bitcast i32* %add.ptr117 to <16 x i32>*
  store <16 x i32> %z16.1.in322, <16 x i32>* %88, align 64, !tbaa !20
  %add.ptr122 = getelementptr inbounds i32, i32* %add.ptr117, i64 16
  %89 = bitcast i32* %add.ptr122 to <16 x i32>*
  store <16 x i32> %z17.1.in323, <16 x i32>* %89, align 64, !tbaa !20
  %add.ptr126 = getelementptr inbounds i32, i32* %add.ptr117, i64 32
  %90 = bitcast i32* %add.ptr126 to <16 x i32>*
  store <16 x i32> %z18.1.in324, <16 x i32>* %90, align 64, !tbaa !20
  %add.ptr130 = getelementptr inbounds i32, i32* %add.ptr117, i64 48
  %91 = bitcast i32* %add.ptr130 to <16 x i32>*
  store <16 x i32> %z19.1.in325, <16 x i32>* %91, align 64, !tbaa !20
  %add.ptr134 = getelementptr inbounds i32, i32* %add.ptr117, i64 64
  %92 = bitcast i32* %add.ptr134 to <16 x i32>*
  store <16 x i32> %z20.1.in326, <16 x i32>* %92, align 64, !tbaa !20
  %add.ptr138 = getelementptr inbounds i32, i32* %add.ptr117, i64 80
  %93 = bitcast i32* %add.ptr138 to <16 x i32>*
  store <16 x i32> %z21.1.in327, <16 x i32>* %93, align 64, !tbaa !20
  %add.ptr142 = getelementptr inbounds i32, i32* %add.ptr117, i64 96
  %94 = bitcast i32* %add.ptr142 to <16 x i32>*
  store <16 x i32> %z22.1.in328, <16 x i32>* %94, align 64, !tbaa !20
  %add.ptr146 = getelementptr inbounds i32, i32* %add.ptr117, i64 112
  %95 = bitcast i32* %add.ptr146 to <16 x i32>*
  store <16 x i32> %z23.1.in329, <16 x i32>* %95, align 64, !tbaa !20
  %96 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %16, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %97 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %17, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %98 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %18, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %99 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %19, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %100 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %20, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %101 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %21, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %102 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %22, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %103 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %23, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %inc156 = add nuw nsw i64 %tile_id.1330, 1
  %mul116.1 = mul nsw i64 %inc156, %conv
  %add.ptr117.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul116.1
  %104 = bitcast i32* %add.ptr117.1 to <16 x i32>*
  store <16 x i32> %96, <16 x i32>* %104, align 64, !tbaa !20
  %add.ptr122.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 16
  %105 = bitcast i32* %add.ptr122.1 to <16 x i32>*
  store <16 x i32> %97, <16 x i32>* %105, align 64, !tbaa !20
  %add.ptr126.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 32
  %106 = bitcast i32* %add.ptr126.1 to <16 x i32>*
  store <16 x i32> %98, <16 x i32>* %106, align 64, !tbaa !20
  %add.ptr130.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 48
  %107 = bitcast i32* %add.ptr130.1 to <16 x i32>*
  store <16 x i32> %99, <16 x i32>* %107, align 64, !tbaa !20
  %add.ptr134.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 64
  %108 = bitcast i32* %add.ptr134.1 to <16 x i32>*
  store <16 x i32> %100, <16 x i32>* %108, align 64, !tbaa !20
  %add.ptr138.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 80
  %109 = bitcast i32* %add.ptr138.1 to <16 x i32>*
  store <16 x i32> %101, <16 x i32>* %109, align 64, !tbaa !20
  %add.ptr142.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 96
  %110 = bitcast i32* %add.ptr142.1 to <16 x i32>*
  store <16 x i32> %102, <16 x i32>* %110, align 64, !tbaa !20
  %add.ptr146.1 = getelementptr inbounds i32, i32* %add.ptr117.1, i64 112
  %111 = bitcast i32* %add.ptr146.1 to <16 x i32>*
  store <16 x i32> %103, <16 x i32>* %111, align 64, !tbaa !20
  %112 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %16, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %113 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %17, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %114 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %18, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %115 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %19, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %116 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %20, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %117 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %21, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %118 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %22, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %119 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %23, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %inc156.1 = add nuw nsw i64 %tile_id.1330, 2
  %exitcond407.not.1 = icmp eq i64 %inc156.1, %sub112
  br i1 %exitcond407.not.1, label %for.body162.preheader, label %for.body114, !llvm.loop !33

for.body162:                                      ; preds = %for.body162.prol.loopexit, %for.body162
  %tile_id.2320 = phi i64 [ %inc196.3, %for.body162 ], [ %tile_id.2320.unr, %for.body162.prol.loopexit ]
  %mul164 = mul nsw i64 %tile_id.2320, %conv
  %add.ptr165 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul164
  %120 = bitcast i32* %add.ptr165 to <16 x i32>*
  store <16 x i32> %z16.1.in.lcssa419, <16 x i32>* %120, align 64, !tbaa !20
  %add.ptr170 = getelementptr inbounds i32, i32* %add.ptr165, i64 16
  %121 = bitcast i32* %add.ptr170 to <16 x i32>*
  store <16 x i32> %z17.1.in.lcssa420, <16 x i32>* %121, align 64, !tbaa !20
  %add.ptr174 = getelementptr inbounds i32, i32* %add.ptr165, i64 32
  %122 = bitcast i32* %add.ptr174 to <16 x i32>*
  store <16 x i32> %z18.1.in.lcssa421, <16 x i32>* %122, align 64, !tbaa !20
  %add.ptr178 = getelementptr inbounds i32, i32* %add.ptr165, i64 48
  %123 = bitcast i32* %add.ptr178 to <16 x i32>*
  store <16 x i32> %z19.1.in.lcssa422, <16 x i32>* %123, align 64, !tbaa !20
  %add.ptr182 = getelementptr inbounds i32, i32* %add.ptr165, i64 64
  %124 = bitcast i32* %add.ptr182 to <16 x i32>*
  store <16 x i32> %z20.1.in.lcssa423, <16 x i32>* %124, align 64, !tbaa !20
  %add.ptr186 = getelementptr inbounds i32, i32* %add.ptr165, i64 80
  %125 = bitcast i32* %add.ptr186 to <16 x i32>*
  store <16 x i32> %z21.1.in.lcssa424, <16 x i32>* %125, align 64, !tbaa !20
  %add.ptr190 = getelementptr inbounds i32, i32* %add.ptr165, i64 96
  %126 = bitcast i32* %add.ptr190 to <16 x i32>*
  store <16 x i32> %z22.1.in.lcssa425, <16 x i32>* %126, align 64, !tbaa !20
  %add.ptr194 = getelementptr inbounds i32, i32* %add.ptr165, i64 112
  %127 = bitcast i32* %add.ptr194 to <16 x i32>*
  store <16 x i32> %z23.1.in.lcssa426, <16 x i32>* %127, align 64, !tbaa !20
  %inc196 = add nuw nsw i64 %tile_id.2320, 1
  %mul164.1 = mul nsw i64 %inc196, %conv
  %add.ptr165.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul164.1
  %128 = bitcast i32* %add.ptr165.1 to <16 x i32>*
  store <16 x i32> %z16.1.in.lcssa419, <16 x i32>* %128, align 64, !tbaa !20
  %add.ptr170.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 16
  %129 = bitcast i32* %add.ptr170.1 to <16 x i32>*
  store <16 x i32> %z17.1.in.lcssa420, <16 x i32>* %129, align 64, !tbaa !20
  %add.ptr174.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 32
  %130 = bitcast i32* %add.ptr174.1 to <16 x i32>*
  store <16 x i32> %z18.1.in.lcssa421, <16 x i32>* %130, align 64, !tbaa !20
  %add.ptr178.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 48
  %131 = bitcast i32* %add.ptr178.1 to <16 x i32>*
  store <16 x i32> %z19.1.in.lcssa422, <16 x i32>* %131, align 64, !tbaa !20
  %add.ptr182.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 64
  %132 = bitcast i32* %add.ptr182.1 to <16 x i32>*
  store <16 x i32> %z20.1.in.lcssa423, <16 x i32>* %132, align 64, !tbaa !20
  %add.ptr186.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 80
  %133 = bitcast i32* %add.ptr186.1 to <16 x i32>*
  store <16 x i32> %z21.1.in.lcssa424, <16 x i32>* %133, align 64, !tbaa !20
  %add.ptr190.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 96
  %134 = bitcast i32* %add.ptr190.1 to <16 x i32>*
  store <16 x i32> %z22.1.in.lcssa425, <16 x i32>* %134, align 64, !tbaa !20
  %add.ptr194.1 = getelementptr inbounds i32, i32* %add.ptr165.1, i64 112
  %135 = bitcast i32* %add.ptr194.1 to <16 x i32>*
  store <16 x i32> %z23.1.in.lcssa426, <16 x i32>* %135, align 64, !tbaa !20
  %inc196.1 = add nuw nsw i64 %tile_id.2320, 2
  %mul164.2 = mul nsw i64 %inc196.1, %conv
  %add.ptr165.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul164.2
  %136 = bitcast i32* %add.ptr165.2 to <16 x i32>*
  store <16 x i32> %z16.1.in.lcssa419, <16 x i32>* %136, align 64, !tbaa !20
  %add.ptr170.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 16
  %137 = bitcast i32* %add.ptr170.2 to <16 x i32>*
  store <16 x i32> %z17.1.in.lcssa420, <16 x i32>* %137, align 64, !tbaa !20
  %add.ptr174.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 32
  %138 = bitcast i32* %add.ptr174.2 to <16 x i32>*
  store <16 x i32> %z18.1.in.lcssa421, <16 x i32>* %138, align 64, !tbaa !20
  %add.ptr178.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 48
  %139 = bitcast i32* %add.ptr178.2 to <16 x i32>*
  store <16 x i32> %z19.1.in.lcssa422, <16 x i32>* %139, align 64, !tbaa !20
  %add.ptr182.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 64
  %140 = bitcast i32* %add.ptr182.2 to <16 x i32>*
  store <16 x i32> %z20.1.in.lcssa423, <16 x i32>* %140, align 64, !tbaa !20
  %add.ptr186.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 80
  %141 = bitcast i32* %add.ptr186.2 to <16 x i32>*
  store <16 x i32> %z21.1.in.lcssa424, <16 x i32>* %141, align 64, !tbaa !20
  %add.ptr190.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 96
  %142 = bitcast i32* %add.ptr190.2 to <16 x i32>*
  store <16 x i32> %z22.1.in.lcssa425, <16 x i32>* %142, align 64, !tbaa !20
  %add.ptr194.2 = getelementptr inbounds i32, i32* %add.ptr165.2, i64 112
  %143 = bitcast i32* %add.ptr194.2 to <16 x i32>*
  store <16 x i32> %z23.1.in.lcssa426, <16 x i32>* %143, align 64, !tbaa !20
  %inc196.2 = add nuw nsw i64 %tile_id.2320, 3
  %mul164.3 = mul nsw i64 %inc196.2, %conv
  %add.ptr165.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul164.3
  %144 = bitcast i32* %add.ptr165.3 to <16 x i32>*
  store <16 x i32> %z16.1.in.lcssa419, <16 x i32>* %144, align 64, !tbaa !20
  %add.ptr170.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 16
  %145 = bitcast i32* %add.ptr170.3 to <16 x i32>*
  store <16 x i32> %z17.1.in.lcssa420, <16 x i32>* %145, align 64, !tbaa !20
  %add.ptr174.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 32
  %146 = bitcast i32* %add.ptr174.3 to <16 x i32>*
  store <16 x i32> %z18.1.in.lcssa421, <16 x i32>* %146, align 64, !tbaa !20
  %add.ptr178.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 48
  %147 = bitcast i32* %add.ptr178.3 to <16 x i32>*
  store <16 x i32> %z19.1.in.lcssa422, <16 x i32>* %147, align 64, !tbaa !20
  %add.ptr182.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 64
  %148 = bitcast i32* %add.ptr182.3 to <16 x i32>*
  store <16 x i32> %z20.1.in.lcssa423, <16 x i32>* %148, align 64, !tbaa !20
  %add.ptr186.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 80
  %149 = bitcast i32* %add.ptr186.3 to <16 x i32>*
  store <16 x i32> %z21.1.in.lcssa424, <16 x i32>* %149, align 64, !tbaa !20
  %add.ptr190.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 96
  %150 = bitcast i32* %add.ptr190.3 to <16 x i32>*
  store <16 x i32> %z22.1.in.lcssa425, <16 x i32>* %150, align 64, !tbaa !20
  %add.ptr194.3 = getelementptr inbounds i32, i32* %add.ptr165.3, i64 112
  %151 = bitcast i32* %add.ptr194.3 to <16 x i32>*
  store <16 x i32> %z23.1.in.lcssa426, <16 x i32>* %151, align 64, !tbaa !20
  %inc196.3 = add nuw nsw i64 %tile_id.2320, 4
  %exitcond.not.3 = icmp eq i64 %inc196.3, %div.sext
  br i1 %exitcond.not.3, label %for.end197, label %for.body162, !llvm.loop !34

for.end197:                                       ; preds = %for.body162.prol.loopexit, %for.body162, %for.cond158.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z31pipeline_512_8_8vreg_add_reducePlii(i64* nocapture %sum, i32 %prolog, i32 %tile_size) local_unnamed_addr #9 {
entry:
  %0 = load <16 x i32>, <16 x i32>* bitcast ([1280000 x i32]* @B to <16 x i32>*), align 64, !tbaa !20
  %1 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 16) to <16 x i32>*), align 64, !tbaa !20
  %2 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 32) to <16 x i32>*), align 64, !tbaa !20
  %3 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 48) to <16 x i32>*), align 64, !tbaa !20
  %4 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 64) to <16 x i32>*), align 64, !tbaa !20
  %5 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 80) to <16 x i32>*), align 64, !tbaa !20
  %6 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 96) to <16 x i32>*), align 64, !tbaa !20
  %7 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 112) to <16 x i32>*), align 64, !tbaa !20
  %8 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %0, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %9 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %1, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %10 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %2, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %11 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %3, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %12 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %4, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %13 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %5, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %14 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %6, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %15 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %7, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %div259 = sdiv i32 1280000, %tile_size
  %div.sext = sext i32 %div259 to i64
  %sub = add nsw i64 %div.sext, -2
  %conv = sext i32 %tile_size to i64
  %z7.0282 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 240) to <8 x i64>*), align 64, !tbaa !20
  %z6.0283 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 224) to <8 x i64>*), align 64, !tbaa !20
  %z5.0284 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 208) to <8 x i64>*), align 64, !tbaa !20
  %z4.0285 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 192) to <8 x i64>*), align 64, !tbaa !20
  %z3.0286 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 176) to <8 x i64>*), align 64, !tbaa !20
  %z2.0287 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 160) to <8 x i64>*), align 64, !tbaa !20
  %z1.0288 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 144) to <8 x i64>*), align 64, !tbaa !20
  %z0.0289 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 128) to <8 x i64>*), align 64, !tbaa !20
  %cmp290 = icmp sgt i32 %div259, 2
  br i1 %cmp290, label %for.body, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %for.body, %entry
  %z16.0.in.lcssa = phi <16 x i32> [ %8, %entry ], [ %27, %for.body ]
  %z17.0.in.lcssa = phi <16 x i32> [ %9, %entry ], [ %29, %for.body ]
  %z18.0.in.lcssa = phi <16 x i32> [ %10, %entry ], [ %31, %for.body ]
  %z19.0.in.lcssa = phi <16 x i32> [ %11, %entry ], [ %33, %for.body ]
  %z20.0.in.lcssa = phi <16 x i32> [ %12, %entry ], [ %35, %for.body ]
  %z21.0.in.lcssa = phi <16 x i32> [ %13, %entry ], [ %37, %for.body ]
  %z22.0.in.lcssa = phi <16 x i32> [ %14, %entry ], [ %39, %for.body ]
  %z23.0.in.lcssa = phi <16 x i32> [ %15, %entry ], [ %41, %for.body ]
  %.lcssa260 = phi <16 x i32> [ zeroinitializer, %entry ], [ %add.i251, %for.body ]
  %tile_id.0.lcssa = phi i64 [ 0, %entry ], [ %sub, %for.body ]
  %z7.0.lcssa = phi <8 x i64> [ %z7.0282, %entry ], [ %z7.0, %for.body ]
  %z6.0.lcssa = phi <8 x i64> [ %z6.0283, %entry ], [ %z6.0, %for.body ]
  %z5.0.lcssa = phi <8 x i64> [ %z5.0284, %entry ], [ %z5.0, %for.body ]
  %z4.0.lcssa = phi <8 x i64> [ %z4.0285, %entry ], [ %z4.0, %for.body ]
  %z3.0.lcssa = phi <8 x i64> [ %z3.0286, %entry ], [ %z3.0, %for.body ]
  %z2.0.lcssa = phi <8 x i64> [ %z2.0287, %entry ], [ %z2.0, %for.body ]
  %z1.0.lcssa = phi <8 x i64> [ %z1.0288, %entry ], [ %z1.0, %for.body ]
  %z0.0.lcssa = phi <8 x i64> [ %z0.0289, %entry ], [ %z0.0, %for.body ]
  %sub91 = add nsw i64 %div.sext, -1
  %16 = bitcast <8 x i64> %z0.0.lcssa to <16 x i32>
  %17 = bitcast <8 x i64> %z1.0.lcssa to <16 x i32>
  %18 = bitcast <8 x i64> %z2.0.lcssa to <16 x i32>
  %19 = bitcast <8 x i64> %z3.0.lcssa to <16 x i32>
  %20 = bitcast <8 x i64> %z4.0.lcssa to <16 x i32>
  %21 = bitcast <8 x i64> %z5.0.lcssa to <16 x i32>
  %22 = bitcast <8 x i64> %z6.0.lcssa to <16 x i32>
  %23 = bitcast <8 x i64> %z7.0.lcssa to <16 x i32>
  %cmp92263 = icmp slt i64 %tile_id.0.lcssa, %sub91
  br i1 %cmp92263, label %for.body93, label %for.cond115.preheader

for.body:                                         ; preds = %entry, %for.body
  %z0.0307 = phi <8 x i64> [ %z0.0, %for.body ], [ %z0.0289, %entry ]
  %z1.0306 = phi <8 x i64> [ %z1.0, %for.body ], [ %z1.0288, %entry ]
  %z2.0305 = phi <8 x i64> [ %z2.0, %for.body ], [ %z2.0287, %entry ]
  %z3.0304 = phi <8 x i64> [ %z3.0, %for.body ], [ %z3.0286, %entry ]
  %z4.0303 = phi <8 x i64> [ %z4.0, %for.body ], [ %z4.0285, %entry ]
  %z5.0302 = phi <8 x i64> [ %z5.0, %for.body ], [ %z5.0284, %entry ]
  %z6.0301 = phi <8 x i64> [ %z6.0, %for.body ], [ %z6.0283, %entry ]
  %z7.0300 = phi <8 x i64> [ %z7.0, %for.body ], [ %z7.0282, %entry ]
  %tile_id.0299 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %24 = phi <16 x i32> [ %add.i251, %for.body ], [ zeroinitializer, %entry ]
  %z23.0.in298 = phi <16 x i32> [ %41, %for.body ], [ %15, %entry ]
  %z22.0.in297 = phi <16 x i32> [ %39, %for.body ], [ %14, %entry ]
  %z21.0.in296 = phi <16 x i32> [ %37, %for.body ], [ %13, %entry ]
  %z20.0.in295 = phi <16 x i32> [ %35, %for.body ], [ %12, %entry ]
  %z19.0.in294 = phi <16 x i32> [ %33, %for.body ], [ %11, %entry ]
  %z18.0.in293 = phi <16 x i32> [ %31, %for.body ], [ %10, %entry ]
  %z17.0.in292 = phi <16 x i32> [ %29, %for.body ], [ %9, %entry ]
  %z16.0.in291 = phi <16 x i32> [ %27, %for.body ], [ %8, %entry ]
  %add.i258 = add <16 x i32> %z17.0.in292, %z16.0.in291
  %add.i257 = add <16 x i32> %add.i258, %z18.0.in293
  %add.i256 = add <16 x i32> %add.i257, %z19.0.in294
  %add.i255 = add <16 x i32> %add.i256, %z20.0.in295
  %add.i254 = add <16 x i32> %add.i255, %z21.0.in296
  %add.i253 = add <16 x i32> %add.i254, %z22.0.in297
  %add.i252 = add <16 x i32> %add.i253, %z23.0.in298
  %add.i251 = add <16 x i32> %add.i252, %24
  %25 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %add.i251) #18
  %conv34 = sext i32 %25 to i64
  store i64 %conv34, i64* %sum, align 8, !tbaa !3
  %26 = bitcast <8 x i64> %z0.0307 to <16 x i32>
  %27 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %26, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %28 = bitcast <8 x i64> %z1.0306 to <16 x i32>
  %29 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %28, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %30 = bitcast <8 x i64> %z2.0305 to <16 x i32>
  %31 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %30, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %32 = bitcast <8 x i64> %z3.0304 to <16 x i32>
  %33 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %32, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %34 = bitcast <8 x i64> %z4.0303 to <16 x i32>
  %35 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %34, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %36 = bitcast <8 x i64> %z5.0302 to <16 x i32>
  %37 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %36, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %38 = bitcast <8 x i64> %z6.0301 to <16 x i32>
  %39 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %38, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %40 = bitcast <8 x i64> %z7.0300 to <16 x i32>
  %41 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %40, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add = add nuw nsw i64 %tile_id.0299, 1
  %mul = mul nsw i64 %add, %conv
  %add.ptr = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %mul
  %42 = bitcast i32* %add.ptr to <8 x i64>*
  %add.ptr50 = getelementptr inbounds i32, i32* %add.ptr, i64 16
  %43 = bitcast i32* %add.ptr50 to <8 x i64>*
  %add.ptr56 = getelementptr inbounds i32, i32* %add.ptr, i64 32
  %44 = bitcast i32* %add.ptr56 to <8 x i64>*
  %add.ptr62 = getelementptr inbounds i32, i32* %add.ptr, i64 48
  %45 = bitcast i32* %add.ptr62 to <8 x i64>*
  %add.ptr68 = getelementptr inbounds i32, i32* %add.ptr, i64 64
  %46 = bitcast i32* %add.ptr68 to <8 x i64>*
  %add.ptr74 = getelementptr inbounds i32, i32* %add.ptr, i64 80
  %47 = bitcast i32* %add.ptr74 to <8 x i64>*
  %add.ptr80 = getelementptr inbounds i32, i32* %add.ptr, i64 96
  %48 = bitcast i32* %add.ptr80 to <8 x i64>*
  %add.ptr86 = getelementptr inbounds i32, i32* %add.ptr, i64 112
  %49 = bitcast i32* %add.ptr86 to <8 x i64>*
  %z7.0 = load <8 x i64>, <8 x i64>* %49, align 64, !tbaa !20
  %z6.0 = load <8 x i64>, <8 x i64>* %48, align 64, !tbaa !20
  %z5.0 = load <8 x i64>, <8 x i64>* %47, align 64, !tbaa !20
  %z4.0 = load <8 x i64>, <8 x i64>* %46, align 64, !tbaa !20
  %z3.0 = load <8 x i64>, <8 x i64>* %45, align 64, !tbaa !20
  %z2.0 = load <8 x i64>, <8 x i64>* %44, align 64, !tbaa !20
  %z1.0 = load <8 x i64>, <8 x i64>* %43, align 64, !tbaa !20
  %z0.0 = load <8 x i64>, <8 x i64>* %42, align 64, !tbaa !20
  %exitcond352.not = icmp eq i64 %add, %sub
  br i1 %exitcond352.not, label %for.cond88.preheader, label %for.body, !llvm.loop !35

for.cond115.preheader:                            ; preds = %for.body93, %for.cond88.preheader
  %z16.1.in.lcssa = phi <16 x i32> [ %z16.0.in.lcssa, %for.cond88.preheader ], [ %57, %for.body93 ]
  %z17.1.in.lcssa = phi <16 x i32> [ %z17.0.in.lcssa, %for.cond88.preheader ], [ %58, %for.body93 ]
  %z18.1.in.lcssa = phi <16 x i32> [ %z18.0.in.lcssa, %for.cond88.preheader ], [ %59, %for.body93 ]
  %z19.1.in.lcssa = phi <16 x i32> [ %z19.0.in.lcssa, %for.cond88.preheader ], [ %60, %for.body93 ]
  %z20.1.in.lcssa = phi <16 x i32> [ %z20.0.in.lcssa, %for.cond88.preheader ], [ %61, %for.body93 ]
  %z21.1.in.lcssa = phi <16 x i32> [ %z21.0.in.lcssa, %for.cond88.preheader ], [ %62, %for.body93 ]
  %z22.1.in.lcssa = phi <16 x i32> [ %z22.0.in.lcssa, %for.cond88.preheader ], [ %63, %for.body93 ]
  %z23.1.in.lcssa = phi <16 x i32> [ %z23.0.in.lcssa, %for.cond88.preheader ], [ %64, %for.body93 ]
  %.lcssa = phi <16 x i32> [ %.lcssa260, %for.cond88.preheader ], [ %add.i243, %for.body93 ]
  %tile_id.1.lcssa = phi i64 [ %tile_id.0.lcssa, %for.cond88.preheader ], [ %sub91, %for.body93 ]
  %add.i242 = add <16 x i32> %z17.1.in.lcssa, %z16.1.in.lcssa
  %add.i241 = add <16 x i32> %add.i242, %z18.1.in.lcssa
  %add.i240 = add <16 x i32> %add.i241, %z19.1.in.lcssa
  %add.i239 = add <16 x i32> %add.i240, %z20.1.in.lcssa
  %add.i238 = add <16 x i32> %add.i239, %z21.1.in.lcssa
  %add.i237 = add <16 x i32> %add.i238, %z22.1.in.lcssa
  %add.i236 = add <16 x i32> %add.i237, %z23.1.in.lcssa
  %cmp118261 = icmp slt i64 %tile_id.1.lcssa, %div.sext
  br i1 %cmp118261, label %for.body119.preheader, label %for.end132

for.body119.preheader:                            ; preds = %for.cond115.preheader
  %50 = sub nsw i64 %div.sext, %tile_id.1.lcssa
  %51 = xor i64 %tile_id.1.lcssa, -1
  %52 = add nsw i64 %51, %div.sext
  %xtraiter = and i64 %50, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body119.prol.loopexit, label %for.body119.prol

for.body119.prol:                                 ; preds = %for.body119.preheader, %for.body119.prol
  %tile_id.2262.prol = phi i64 [ %inc131.prol, %for.body119.prol ], [ %tile_id.1.lcssa, %for.body119.preheader ]
  %53 = phi <16 x i32> [ %add.i.prol, %for.body119.prol ], [ %.lcssa, %for.body119.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body119.prol ], [ %xtraiter, %for.body119.preheader ]
  %add.i.prol = add <16 x i32> %add.i236, %53
  %inc131.prol = add nuw nsw i64 %tile_id.2262.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body119.prol.loopexit, label %for.body119.prol, !llvm.loop !36

for.body119.prol.loopexit:                        ; preds = %for.body119.prol, %for.body119.preheader
  %add.i.lcssa.unr = phi <16 x i32> [ undef, %for.body119.preheader ], [ %add.i.prol, %for.body119.prol ]
  %tile_id.2262.unr = phi i64 [ %tile_id.1.lcssa, %for.body119.preheader ], [ %inc131.prol, %for.body119.prol ]
  %.unr = phi <16 x i32> [ %.lcssa, %for.body119.preheader ], [ %add.i.prol, %for.body119.prol ]
  %54 = icmp ult i64 %52, 7
  br i1 %54, label %for.cond115.for.end132_crit_edge, label %for.body119.preheader.new

for.body119.preheader.new:                        ; preds = %for.body119.prol.loopexit
  %reass.add = shl <16 x i32> %add.i236, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %reass.add425 = shl <16 x i32> %add.i236, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %reass.add426 = shl <16 x i32> %add.i236, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %reass.add427 = shl <16 x i32> %add.i236, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %for.body119

for.body93:                                       ; preds = %for.cond88.preheader, %for.body93
  %tile_id.1272 = phi i64 [ %inc113, %for.body93 ], [ %tile_id.0.lcssa, %for.cond88.preheader ]
  %55 = phi <16 x i32> [ %add.i243, %for.body93 ], [ %.lcssa260, %for.cond88.preheader ]
  %z23.1.in271 = phi <16 x i32> [ %64, %for.body93 ], [ %z23.0.in.lcssa, %for.cond88.preheader ]
  %z22.1.in270 = phi <16 x i32> [ %63, %for.body93 ], [ %z22.0.in.lcssa, %for.cond88.preheader ]
  %z21.1.in269 = phi <16 x i32> [ %62, %for.body93 ], [ %z21.0.in.lcssa, %for.cond88.preheader ]
  %z20.1.in268 = phi <16 x i32> [ %61, %for.body93 ], [ %z20.0.in.lcssa, %for.cond88.preheader ]
  %z19.1.in267 = phi <16 x i32> [ %60, %for.body93 ], [ %z19.0.in.lcssa, %for.cond88.preheader ]
  %z18.1.in266 = phi <16 x i32> [ %59, %for.body93 ], [ %z18.0.in.lcssa, %for.cond88.preheader ]
  %z17.1.in265 = phi <16 x i32> [ %58, %for.body93 ], [ %z17.0.in.lcssa, %for.cond88.preheader ]
  %z16.1.in264 = phi <16 x i32> [ %57, %for.body93 ], [ %z16.0.in.lcssa, %for.cond88.preheader ]
  %add.i250 = add <16 x i32> %z17.1.in265, %z16.1.in264
  %add.i249 = add <16 x i32> %add.i250, %z18.1.in266
  %add.i248 = add <16 x i32> %add.i249, %z19.1.in267
  %add.i247 = add <16 x i32> %add.i248, %z20.1.in268
  %add.i246 = add <16 x i32> %add.i247, %z21.1.in269
  %add.i245 = add <16 x i32> %add.i246, %z22.1.in270
  %add.i244 = add <16 x i32> %add.i245, %z23.1.in271
  %add.i243 = add <16 x i32> %add.i244, %55
  %56 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %add.i243) #18
  %conv103 = sext i32 %56 to i64
  store i64 %conv103, i64* %sum, align 8, !tbaa !3
  %57 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %16, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %58 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %17, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %59 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %18, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %60 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %19, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %61 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %20, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %62 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %21, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %63 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %22, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %64 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %23, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %inc113 = add nuw nsw i64 %tile_id.1272, 1
  %exitcond351.not = icmp eq i64 %inc113, %sub91
  br i1 %exitcond351.not, label %for.cond115.preheader, label %for.body93, !llvm.loop !37

for.body119:                                      ; preds = %for.body119, %for.body119.preheader.new
  %tile_id.2262 = phi i64 [ %tile_id.2262.unr, %for.body119.preheader.new ], [ %inc131.7, %for.body119 ]
  %65 = phi <16 x i32> [ %.unr, %for.body119.preheader.new ], [ %add.i.7, %for.body119 ]
  %add.i.1 = add <16 x i32> %65, %reass.add
  %add.i.3 = add <16 x i32> %add.i.1, %reass.add425
  %add.i.5 = add <16 x i32> %add.i.3, %reass.add426
  %add.i.7 = add <16 x i32> %add.i.5, %reass.add427
  %inc131.7 = add nuw nsw i64 %tile_id.2262, 8
  %exitcond.not.7 = icmp eq i64 %inc131.7, %div.sext
  br i1 %exitcond.not.7, label %for.cond115.for.end132_crit_edge, label %for.body119, !llvm.loop !38

for.cond115.for.end132_crit_edge:                 ; preds = %for.body119, %for.body119.prol.loopexit
  %add.i.lcssa = phi <16 x i32> [ %add.i.lcssa.unr, %for.body119.prol.loopexit ], [ %add.i.7, %for.body119 ]
  %66 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %add.i.lcssa) #18
  %conv129 = sext i32 %66 to i64
  store i64 %conv129, i64* %sum, align 8, !tbaa !3
  br label %for.end132

for.end132:                                       ; preds = %for.cond115.for.end132_crit_edge, %for.cond115.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z26pipeline_512_8_8vreg_1sregPlii(i64* %sum, i32 %prolog, i32 %tile_size) local_unnamed_addr #9 {
entry:
  %0 = load <16 x i32>, <16 x i32>* bitcast ([1280000 x i32]* @B to <16 x i32>*), align 64, !tbaa !20
  %1 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 16) to <16 x i32>*), align 64, !tbaa !20
  %2 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 32) to <16 x i32>*), align 64, !tbaa !20
  %3 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 48) to <16 x i32>*), align 64, !tbaa !20
  %4 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 64) to <16 x i32>*), align 64, !tbaa !20
  %5 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 80) to <16 x i32>*), align 64, !tbaa !20
  %6 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 96) to <16 x i32>*), align 64, !tbaa !20
  %7 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 112) to <16 x i32>*), align 64, !tbaa !20
  %8 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %0, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %9 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %1, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %10 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %2, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %11 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %3, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %12 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %4, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %13 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %5, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %14 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %6, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %15 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %7, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %div2246 = sdiv i32 1280000, %tile_size
  %div.sext = sext i32 %div2246 to i64
  %sub = add nsw i64 %div.sext, -2
  %conv = sext i32 %tile_size to i64
  %z0.02266 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 128) to <8 x i64>*), align 64, !tbaa !20
  %z1.02267 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 144) to <8 x i64>*), align 64, !tbaa !20
  %z2.02268 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 160) to <8 x i64>*), align 64, !tbaa !20
  %z3.02269 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 176) to <8 x i64>*), align 64, !tbaa !20
  %z4.02270 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 192) to <8 x i64>*), align 64, !tbaa !20
  %z5.02271 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 208) to <8 x i64>*), align 64, !tbaa !20
  %z6.02272 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 224) to <8 x i64>*), align 64, !tbaa !20
  %z7.02273 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 240) to <8 x i64>*), align 64, !tbaa !20
  %cmp2274 = icmp sgt i32 %div2246, 2
  br i1 %cmp2274, label %for.body.preheader, label %for.cond364.preheader

for.body.preheader:                               ; preds = %entry
  %.pre = load i64, i64* %sum, align 8, !tbaa !3
  br label %for.body

for.cond364.preheader:                            ; preds = %for.body, %entry
  %tile_id.0.lcssa = phi i64 [ 0, %entry ], [ %sub, %for.body ]
  %z23.0.in.lcssa = phi <16 x i32> [ %15, %entry ], [ %168, %for.body ]
  %z22.0.in.lcssa = phi <16 x i32> [ %14, %entry ], [ %166, %for.body ]
  %z21.0.in.lcssa = phi <16 x i32> [ %13, %entry ], [ %164, %for.body ]
  %z20.0.in.lcssa = phi <16 x i32> [ %12, %entry ], [ %162, %for.body ]
  %z19.0.in.lcssa = phi <16 x i32> [ %11, %entry ], [ %160, %for.body ]
  %z18.0.in.lcssa = phi <16 x i32> [ %10, %entry ], [ %158, %for.body ]
  %z17.0.in.lcssa = phi <16 x i32> [ %9, %entry ], [ %156, %for.body ]
  %z16.0.in.lcssa = phi <16 x i32> [ %8, %entry ], [ %154, %for.body ]
  %z0.0.lcssa = phi <8 x i64> [ %z0.02266, %entry ], [ %z0.0, %for.body ]
  %z1.0.lcssa = phi <8 x i64> [ %z1.02267, %entry ], [ %z1.0, %for.body ]
  %z2.0.lcssa = phi <8 x i64> [ %z2.02268, %entry ], [ %z2.0, %for.body ]
  %z3.0.lcssa = phi <8 x i64> [ %z3.02269, %entry ], [ %z3.0, %for.body ]
  %z4.0.lcssa = phi <8 x i64> [ %z4.02270, %entry ], [ %z4.0, %for.body ]
  %z5.0.lcssa = phi <8 x i64> [ %z5.02271, %entry ], [ %z5.0, %for.body ]
  %z6.0.lcssa = phi <8 x i64> [ %z6.02272, %entry ], [ %z6.0, %for.body ]
  %z7.0.lcssa = phi <8 x i64> [ %z7.02273, %entry ], [ %z7.0, %for.body ]
  %sub367 = add nsw i64 %div.sext, -1
  %16 = bitcast <8 x i64> %z0.0.lcssa to <16 x i32>
  %17 = bitcast <8 x i64> %z1.0.lcssa to <16 x i32>
  %18 = bitcast <8 x i64> %z2.0.lcssa to <16 x i32>
  %19 = bitcast <8 x i64> %z3.0.lcssa to <16 x i32>
  %20 = bitcast <8 x i64> %z4.0.lcssa to <16 x i32>
  %21 = bitcast <8 x i64> %z5.0.lcssa to <16 x i32>
  %22 = bitcast <8 x i64> %z6.0.lcssa to <16 x i32>
  %23 = bitcast <8 x i64> %z7.0.lcssa to <16 x i32>
  %cmp3682256 = icmp slt i64 %tile_id.0.lcssa, %sub367
  br i1 %cmp3682256, label %for.body369.preheader, label %for.cond686.preheader

for.body369.preheader:                            ; preds = %for.cond364.preheader
  %.pre2335 = load i64, i64* %sum, align 8, !tbaa !3
  br label %for.body369

for.body:                                         ; preds = %for.body.preheader, %for.body
  %24 = phi i64 [ %add309, %for.body ], [ %.pre, %for.body.preheader ]
  %z7.02291 = phi <8 x i64> [ %z7.0, %for.body ], [ %z7.02273, %for.body.preheader ]
  %z6.02290 = phi <8 x i64> [ %z6.0, %for.body ], [ %z6.02272, %for.body.preheader ]
  %z5.02289 = phi <8 x i64> [ %z5.0, %for.body ], [ %z5.02271, %for.body.preheader ]
  %z4.02288 = phi <8 x i64> [ %z4.0, %for.body ], [ %z4.02270, %for.body.preheader ]
  %z3.02287 = phi <8 x i64> [ %z3.0, %for.body ], [ %z3.02269, %for.body.preheader ]
  %z2.02286 = phi <8 x i64> [ %z2.0, %for.body ], [ %z2.02268, %for.body.preheader ]
  %z1.02285 = phi <8 x i64> [ %z1.0, %for.body ], [ %z1.02267, %for.body.preheader ]
  %z0.02284 = phi <8 x i64> [ %z0.0, %for.body ], [ %z0.02266, %for.body.preheader ]
  %z16.0.in2283 = phi <16 x i32> [ %154, %for.body ], [ %8, %for.body.preheader ]
  %z17.0.in2282 = phi <16 x i32> [ %156, %for.body ], [ %9, %for.body.preheader ]
  %z18.0.in2281 = phi <16 x i32> [ %158, %for.body ], [ %10, %for.body.preheader ]
  %z19.0.in2280 = phi <16 x i32> [ %160, %for.body ], [ %11, %for.body.preheader ]
  %z20.0.in2279 = phi <16 x i32> [ %162, %for.body ], [ %12, %for.body.preheader ]
  %z21.0.in2278 = phi <16 x i32> [ %164, %for.body ], [ %13, %for.body.preheader ]
  %z22.0.in2277 = phi <16 x i32> [ %166, %for.body ], [ %14, %for.body.preheader ]
  %z23.0.in2276 = phi <16 x i32> [ %168, %for.body ], [ %15, %for.body.preheader ]
  %tile_id.02275 = phi i64 [ %add318, %for.body ], [ 0, %for.body.preheader ]
  %25 = extractelement <16 x i32> %z16.0.in2283, i32 0
  %conv27 = sext i32 %25 to i64
  %26 = extractelement <16 x i32> %z16.0.in2283, i32 1
  %conv28 = sext i32 %26 to i64
  %27 = extractelement <16 x i32> %z16.0.in2283, i32 2
  %conv30 = sext i32 %27 to i64
  %28 = extractelement <16 x i32> %z16.0.in2283, i32 3
  %conv32 = sext i32 %28 to i64
  %29 = extractelement <16 x i32> %z16.0.in2283, i32 4
  %conv34 = sext i32 %29 to i64
  %30 = extractelement <16 x i32> %z16.0.in2283, i32 5
  %conv36 = sext i32 %30 to i64
  %31 = extractelement <16 x i32> %z16.0.in2283, i32 6
  %conv38 = sext i32 %31 to i64
  %32 = extractelement <16 x i32> %z16.0.in2283, i32 7
  %conv40 = sext i32 %32 to i64
  %33 = extractelement <16 x i32> %z16.0.in2283, i32 8
  %conv42 = sext i32 %33 to i64
  %34 = extractelement <16 x i32> %z16.0.in2283, i32 9
  %conv44 = sext i32 %34 to i64
  %35 = extractelement <16 x i32> %z16.0.in2283, i32 10
  %conv46 = sext i32 %35 to i64
  %36 = extractelement <16 x i32> %z16.0.in2283, i32 11
  %conv48 = sext i32 %36 to i64
  %37 = extractelement <16 x i32> %z16.0.in2283, i32 12
  %conv50 = sext i32 %37 to i64
  %38 = extractelement <16 x i32> %z16.0.in2283, i32 13
  %conv52 = sext i32 %38 to i64
  %39 = extractelement <16 x i32> %z16.0.in2283, i32 14
  %conv54 = sext i32 %39 to i64
  %40 = extractelement <16 x i32> %z16.0.in2283, i32 15
  %conv56 = sext i32 %40 to i64
  %41 = extractelement <16 x i32> %z17.0.in2282, i32 0
  %conv62 = sext i32 %41 to i64
  %42 = extractelement <16 x i32> %z17.0.in2282, i32 1
  %conv64 = sext i32 %42 to i64
  %43 = extractelement <16 x i32> %z17.0.in2282, i32 2
  %conv66 = sext i32 %43 to i64
  %44 = extractelement <16 x i32> %z17.0.in2282, i32 3
  %conv68 = sext i32 %44 to i64
  %45 = extractelement <16 x i32> %z17.0.in2282, i32 4
  %conv70 = sext i32 %45 to i64
  %46 = extractelement <16 x i32> %z17.0.in2282, i32 5
  %conv72 = sext i32 %46 to i64
  %47 = extractelement <16 x i32> %z17.0.in2282, i32 6
  %conv74 = sext i32 %47 to i64
  %48 = extractelement <16 x i32> %z17.0.in2282, i32 7
  %conv76 = sext i32 %48 to i64
  %49 = extractelement <16 x i32> %z17.0.in2282, i32 8
  %conv78 = sext i32 %49 to i64
  %50 = extractelement <16 x i32> %z17.0.in2282, i32 9
  %conv80 = sext i32 %50 to i64
  %51 = extractelement <16 x i32> %z17.0.in2282, i32 10
  %conv82 = sext i32 %51 to i64
  %52 = extractelement <16 x i32> %z17.0.in2282, i32 11
  %conv84 = sext i32 %52 to i64
  %53 = extractelement <16 x i32> %z17.0.in2282, i32 12
  %conv86 = sext i32 %53 to i64
  %54 = extractelement <16 x i32> %z17.0.in2282, i32 13
  %conv88 = sext i32 %54 to i64
  %55 = extractelement <16 x i32> %z17.0.in2282, i32 14
  %conv90 = sext i32 %55 to i64
  %56 = extractelement <16 x i32> %z17.0.in2282, i32 15
  %conv92 = sext i32 %56 to i64
  %57 = extractelement <16 x i32> %z18.0.in2281, i32 0
  %conv98 = sext i32 %57 to i64
  %58 = extractelement <16 x i32> %z18.0.in2281, i32 1
  %conv100 = sext i32 %58 to i64
  %59 = extractelement <16 x i32> %z18.0.in2281, i32 2
  %conv102 = sext i32 %59 to i64
  %60 = extractelement <16 x i32> %z18.0.in2281, i32 3
  %conv104 = sext i32 %60 to i64
  %61 = extractelement <16 x i32> %z18.0.in2281, i32 4
  %conv106 = sext i32 %61 to i64
  %62 = extractelement <16 x i32> %z18.0.in2281, i32 5
  %conv108 = sext i32 %62 to i64
  %63 = extractelement <16 x i32> %z18.0.in2281, i32 6
  %conv110 = sext i32 %63 to i64
  %64 = extractelement <16 x i32> %z18.0.in2281, i32 7
  %conv112 = sext i32 %64 to i64
  %65 = extractelement <16 x i32> %z18.0.in2281, i32 8
  %conv114 = sext i32 %65 to i64
  %66 = extractelement <16 x i32> %z18.0.in2281, i32 9
  %conv116 = sext i32 %66 to i64
  %67 = extractelement <16 x i32> %z18.0.in2281, i32 10
  %conv118 = sext i32 %67 to i64
  %68 = extractelement <16 x i32> %z18.0.in2281, i32 11
  %conv120 = sext i32 %68 to i64
  %69 = extractelement <16 x i32> %z18.0.in2281, i32 12
  %conv122 = sext i32 %69 to i64
  %70 = extractelement <16 x i32> %z18.0.in2281, i32 13
  %conv124 = sext i32 %70 to i64
  %71 = extractelement <16 x i32> %z18.0.in2281, i32 14
  %conv126 = sext i32 %71 to i64
  %72 = extractelement <16 x i32> %z18.0.in2281, i32 15
  %conv128 = sext i32 %72 to i64
  %73 = extractelement <16 x i32> %z19.0.in2280, i32 0
  %conv134 = sext i32 %73 to i64
  %74 = extractelement <16 x i32> %z19.0.in2280, i32 1
  %conv136 = sext i32 %74 to i64
  %75 = extractelement <16 x i32> %z19.0.in2280, i32 2
  %conv138 = sext i32 %75 to i64
  %76 = extractelement <16 x i32> %z19.0.in2280, i32 3
  %conv140 = sext i32 %76 to i64
  %77 = extractelement <16 x i32> %z19.0.in2280, i32 4
  %conv142 = sext i32 %77 to i64
  %78 = extractelement <16 x i32> %z19.0.in2280, i32 5
  %conv144 = sext i32 %78 to i64
  %79 = extractelement <16 x i32> %z19.0.in2280, i32 6
  %conv146 = sext i32 %79 to i64
  %80 = extractelement <16 x i32> %z19.0.in2280, i32 7
  %conv148 = sext i32 %80 to i64
  %81 = extractelement <16 x i32> %z19.0.in2280, i32 8
  %conv150 = sext i32 %81 to i64
  %82 = extractelement <16 x i32> %z19.0.in2280, i32 9
  %conv152 = sext i32 %82 to i64
  %83 = extractelement <16 x i32> %z19.0.in2280, i32 10
  %conv154 = sext i32 %83 to i64
  %84 = extractelement <16 x i32> %z19.0.in2280, i32 11
  %conv156 = sext i32 %84 to i64
  %85 = extractelement <16 x i32> %z19.0.in2280, i32 12
  %conv158 = sext i32 %85 to i64
  %86 = extractelement <16 x i32> %z19.0.in2280, i32 13
  %conv160 = sext i32 %86 to i64
  %87 = extractelement <16 x i32> %z19.0.in2280, i32 14
  %conv162 = sext i32 %87 to i64
  %88 = extractelement <16 x i32> %z19.0.in2280, i32 15
  %conv164 = sext i32 %88 to i64
  %89 = extractelement <16 x i32> %z20.0.in2279, i32 0
  %conv170 = sext i32 %89 to i64
  %90 = extractelement <16 x i32> %z20.0.in2279, i32 1
  %conv172 = sext i32 %90 to i64
  %91 = extractelement <16 x i32> %z20.0.in2279, i32 2
  %conv174 = sext i32 %91 to i64
  %92 = extractelement <16 x i32> %z20.0.in2279, i32 3
  %conv176 = sext i32 %92 to i64
  %93 = extractelement <16 x i32> %z20.0.in2279, i32 4
  %conv178 = sext i32 %93 to i64
  %94 = extractelement <16 x i32> %z20.0.in2279, i32 5
  %conv180 = sext i32 %94 to i64
  %95 = extractelement <16 x i32> %z20.0.in2279, i32 6
  %conv182 = sext i32 %95 to i64
  %96 = extractelement <16 x i32> %z20.0.in2279, i32 7
  %conv184 = sext i32 %96 to i64
  %97 = extractelement <16 x i32> %z20.0.in2279, i32 8
  %conv186 = sext i32 %97 to i64
  %98 = extractelement <16 x i32> %z20.0.in2279, i32 9
  %conv188 = sext i32 %98 to i64
  %99 = extractelement <16 x i32> %z20.0.in2279, i32 10
  %conv190 = sext i32 %99 to i64
  %100 = extractelement <16 x i32> %z20.0.in2279, i32 11
  %conv192 = sext i32 %100 to i64
  %101 = extractelement <16 x i32> %z20.0.in2279, i32 12
  %conv194 = sext i32 %101 to i64
  %102 = extractelement <16 x i32> %z20.0.in2279, i32 13
  %conv196 = sext i32 %102 to i64
  %103 = extractelement <16 x i32> %z20.0.in2279, i32 14
  %conv198 = sext i32 %103 to i64
  %104 = extractelement <16 x i32> %z20.0.in2279, i32 15
  %conv200 = sext i32 %104 to i64
  %105 = extractelement <16 x i32> %z21.0.in2278, i32 0
  %conv206 = sext i32 %105 to i64
  %106 = extractelement <16 x i32> %z21.0.in2278, i32 1
  %conv208 = sext i32 %106 to i64
  %107 = extractelement <16 x i32> %z21.0.in2278, i32 2
  %conv210 = sext i32 %107 to i64
  %108 = extractelement <16 x i32> %z21.0.in2278, i32 3
  %conv212 = sext i32 %108 to i64
  %109 = extractelement <16 x i32> %z21.0.in2278, i32 4
  %conv214 = sext i32 %109 to i64
  %110 = extractelement <16 x i32> %z21.0.in2278, i32 5
  %conv216 = sext i32 %110 to i64
  %111 = extractelement <16 x i32> %z21.0.in2278, i32 6
  %conv218 = sext i32 %111 to i64
  %112 = extractelement <16 x i32> %z21.0.in2278, i32 7
  %conv220 = sext i32 %112 to i64
  %113 = extractelement <16 x i32> %z21.0.in2278, i32 8
  %conv222 = sext i32 %113 to i64
  %114 = extractelement <16 x i32> %z21.0.in2278, i32 9
  %conv224 = sext i32 %114 to i64
  %115 = extractelement <16 x i32> %z21.0.in2278, i32 10
  %conv226 = sext i32 %115 to i64
  %116 = extractelement <16 x i32> %z21.0.in2278, i32 11
  %conv228 = sext i32 %116 to i64
  %117 = extractelement <16 x i32> %z21.0.in2278, i32 12
  %conv230 = sext i32 %117 to i64
  %118 = extractelement <16 x i32> %z21.0.in2278, i32 13
  %conv232 = sext i32 %118 to i64
  %119 = extractelement <16 x i32> %z21.0.in2278, i32 14
  %conv234 = sext i32 %119 to i64
  %120 = extractelement <16 x i32> %z21.0.in2278, i32 15
  %conv236 = sext i32 %120 to i64
  %121 = extractelement <16 x i32> %z22.0.in2277, i32 0
  %conv242 = sext i32 %121 to i64
  %122 = extractelement <16 x i32> %z22.0.in2277, i32 1
  %conv244 = sext i32 %122 to i64
  %123 = extractelement <16 x i32> %z22.0.in2277, i32 2
  %conv246 = sext i32 %123 to i64
  %124 = extractelement <16 x i32> %z22.0.in2277, i32 3
  %conv248 = sext i32 %124 to i64
  %125 = extractelement <16 x i32> %z22.0.in2277, i32 4
  %conv250 = sext i32 %125 to i64
  %126 = extractelement <16 x i32> %z22.0.in2277, i32 5
  %conv252 = sext i32 %126 to i64
  %127 = extractelement <16 x i32> %z22.0.in2277, i32 6
  %conv254 = sext i32 %127 to i64
  %128 = extractelement <16 x i32> %z22.0.in2277, i32 7
  %conv256 = sext i32 %128 to i64
  %129 = extractelement <16 x i32> %z22.0.in2277, i32 8
  %conv258 = sext i32 %129 to i64
  %130 = extractelement <16 x i32> %z22.0.in2277, i32 9
  %conv260 = sext i32 %130 to i64
  %131 = extractelement <16 x i32> %z22.0.in2277, i32 10
  %conv262 = sext i32 %131 to i64
  %132 = extractelement <16 x i32> %z22.0.in2277, i32 11
  %conv264 = sext i32 %132 to i64
  %133 = extractelement <16 x i32> %z22.0.in2277, i32 12
  %conv266 = sext i32 %133 to i64
  %134 = extractelement <16 x i32> %z22.0.in2277, i32 13
  %conv268 = sext i32 %134 to i64
  %135 = extractelement <16 x i32> %z22.0.in2277, i32 14
  %conv270 = sext i32 %135 to i64
  %136 = extractelement <16 x i32> %z22.0.in2277, i32 15
  %conv272 = sext i32 %136 to i64
  %137 = extractelement <16 x i32> %z23.0.in2276, i32 0
  %conv278 = sext i32 %137 to i64
  %138 = extractelement <16 x i32> %z23.0.in2276, i32 1
  %conv280 = sext i32 %138 to i64
  %139 = extractelement <16 x i32> %z23.0.in2276, i32 2
  %conv282 = sext i32 %139 to i64
  %140 = extractelement <16 x i32> %z23.0.in2276, i32 3
  %conv284 = sext i32 %140 to i64
  %141 = extractelement <16 x i32> %z23.0.in2276, i32 4
  %conv286 = sext i32 %141 to i64
  %142 = extractelement <16 x i32> %z23.0.in2276, i32 5
  %conv288 = sext i32 %142 to i64
  %143 = extractelement <16 x i32> %z23.0.in2276, i32 6
  %conv290 = sext i32 %143 to i64
  %144 = extractelement <16 x i32> %z23.0.in2276, i32 7
  %conv292 = sext i32 %144 to i64
  %145 = extractelement <16 x i32> %z23.0.in2276, i32 8
  %conv294 = sext i32 %145 to i64
  %146 = extractelement <16 x i32> %z23.0.in2276, i32 9
  %conv296 = sext i32 %146 to i64
  %147 = extractelement <16 x i32> %z23.0.in2276, i32 10
  %conv298 = sext i32 %147 to i64
  %148 = extractelement <16 x i32> %z23.0.in2276, i32 11
  %conv300 = sext i32 %148 to i64
  %149 = extractelement <16 x i32> %z23.0.in2276, i32 12
  %conv302 = sext i32 %149 to i64
  %150 = extractelement <16 x i32> %z23.0.in2276, i32 13
  %conv304 = sext i32 %150 to i64
  %151 = extractelement <16 x i32> %z23.0.in2276, i32 14
  %conv306 = sext i32 %151 to i64
  %152 = extractelement <16 x i32> %z23.0.in2276, i32 15
  %conv308 = sext i32 %152 to i64
  %add = add nsw i64 %conv280, %conv278
  %add29 = add nsw i64 %add, %conv282
  %add31 = add nsw i64 %add29, %conv284
  %add33 = add nsw i64 %add31, %conv286
  %add35 = add nsw i64 %add33, %conv288
  %add37 = add nsw i64 %add35, %conv290
  %add39 = add nsw i64 %add37, %conv292
  %add41 = add nsw i64 %add39, %conv294
  %add43 = add nsw i64 %add41, %conv296
  %add45 = add nsw i64 %add43, %conv298
  %add47 = add nsw i64 %add45, %conv300
  %add49 = add nsw i64 %add47, %conv302
  %add51 = add nsw i64 %add49, %conv304
  %add53 = add nsw i64 %add51, %conv306
  %add55 = add nsw i64 %add53, %conv308
  %add57 = add nsw i64 %add55, %conv242
  %add63 = add nsw i64 %add57, %conv244
  %add65 = add nsw i64 %add63, %conv246
  %add67 = add nsw i64 %add65, %conv248
  %add69 = add nsw i64 %add67, %conv250
  %add71 = add nsw i64 %add69, %conv252
  %add73 = add nsw i64 %add71, %conv254
  %add75 = add nsw i64 %add73, %conv256
  %add77 = add nsw i64 %add75, %conv258
  %add79 = add nsw i64 %add77, %conv260
  %add81 = add nsw i64 %add79, %conv262
  %add83 = add nsw i64 %add81, %conv264
  %add85 = add nsw i64 %add83, %conv266
  %add87 = add nsw i64 %add85, %conv268
  %add89 = add nsw i64 %add87, %conv270
  %add91 = add nsw i64 %add89, %conv272
  %add93 = add nsw i64 %add91, %conv206
  %add99 = add nsw i64 %add93, %conv208
  %add101 = add nsw i64 %add99, %conv210
  %add103 = add nsw i64 %add101, %conv212
  %add105 = add nsw i64 %add103, %conv214
  %add107 = add nsw i64 %add105, %conv216
  %add109 = add nsw i64 %add107, %conv218
  %add111 = add nsw i64 %add109, %conv220
  %add113 = add nsw i64 %add111, %conv222
  %add115 = add nsw i64 %add113, %conv224
  %add117 = add nsw i64 %add115, %conv226
  %add119 = add nsw i64 %add117, %conv228
  %add121 = add nsw i64 %add119, %conv230
  %add123 = add nsw i64 %add121, %conv232
  %add125 = add nsw i64 %add123, %conv234
  %add127 = add nsw i64 %add125, %conv236
  %add129 = add nsw i64 %add127, %conv170
  %add135 = add nsw i64 %add129, %conv172
  %add137 = add nsw i64 %add135, %conv174
  %add139 = add nsw i64 %add137, %conv176
  %add141 = add nsw i64 %add139, %conv178
  %add143 = add nsw i64 %add141, %conv180
  %add145 = add nsw i64 %add143, %conv182
  %add147 = add nsw i64 %add145, %conv184
  %add149 = add nsw i64 %add147, %conv186
  %add151 = add nsw i64 %add149, %conv188
  %add153 = add nsw i64 %add151, %conv190
  %add155 = add nsw i64 %add153, %conv192
  %add157 = add nsw i64 %add155, %conv194
  %add159 = add nsw i64 %add157, %conv196
  %add161 = add nsw i64 %add159, %conv198
  %add163 = add nsw i64 %add161, %conv200
  %add165 = add nsw i64 %add163, %conv134
  %add171 = add nsw i64 %add165, %conv136
  %add173 = add nsw i64 %add171, %conv138
  %add175 = add nsw i64 %add173, %conv140
  %add177 = add nsw i64 %add175, %conv142
  %add179 = add nsw i64 %add177, %conv144
  %add181 = add nsw i64 %add179, %conv146
  %add183 = add nsw i64 %add181, %conv148
  %add185 = add nsw i64 %add183, %conv150
  %add187 = add nsw i64 %add185, %conv152
  %add189 = add nsw i64 %add187, %conv154
  %add191 = add nsw i64 %add189, %conv156
  %add193 = add nsw i64 %add191, %conv158
  %add195 = add nsw i64 %add193, %conv160
  %add197 = add nsw i64 %add195, %conv162
  %add199 = add nsw i64 %add197, %conv164
  %add201 = add nsw i64 %add199, %conv98
  %add207 = add nsw i64 %add201, %conv100
  %add209 = add nsw i64 %add207, %conv102
  %add211 = add nsw i64 %add209, %conv104
  %add213 = add nsw i64 %add211, %conv106
  %add215 = add nsw i64 %add213, %conv108
  %add217 = add nsw i64 %add215, %conv110
  %add219 = add nsw i64 %add217, %conv112
  %add221 = add nsw i64 %add219, %conv114
  %add223 = add nsw i64 %add221, %conv116
  %add225 = add nsw i64 %add223, %conv118
  %add227 = add nsw i64 %add225, %conv120
  %add229 = add nsw i64 %add227, %conv122
  %add231 = add nsw i64 %add229, %conv124
  %add233 = add nsw i64 %add231, %conv126
  %add235 = add nsw i64 %add233, %conv128
  %add237 = add nsw i64 %add235, %conv62
  %add243 = add nsw i64 %add237, %conv64
  %add245 = add nsw i64 %add243, %conv66
  %add247 = add nsw i64 %add245, %conv68
  %add249 = add nsw i64 %add247, %conv70
  %add251 = add nsw i64 %add249, %conv72
  %add253 = add nsw i64 %add251, %conv74
  %add255 = add nsw i64 %add253, %conv76
  %add257 = add nsw i64 %add255, %conv78
  %add259 = add nsw i64 %add257, %conv80
  %add261 = add nsw i64 %add259, %conv82
  %add263 = add nsw i64 %add261, %conv84
  %add265 = add nsw i64 %add263, %conv86
  %add267 = add nsw i64 %add265, %conv88
  %add269 = add nsw i64 %add267, %conv90
  %add271 = add nsw i64 %add269, %conv92
  %add273 = add nsw i64 %add271, %conv27
  %add279 = add nsw i64 %add273, %conv28
  %add281 = add nsw i64 %add279, %conv30
  %add283 = add nsw i64 %add281, %conv32
  %add285 = add nsw i64 %add283, %conv34
  %add287 = add nsw i64 %add285, %conv36
  %add289 = add nsw i64 %add287, %conv38
  %add291 = add nsw i64 %add289, %conv40
  %add293 = add nsw i64 %add291, %conv42
  %add295 = add nsw i64 %add293, %conv44
  %add297 = add nsw i64 %add295, %conv46
  %add299 = add nsw i64 %add297, %conv48
  %add301 = add nsw i64 %add299, %conv50
  %add303 = add nsw i64 %add301, %conv52
  %add305 = add nsw i64 %add303, %conv54
  %add307 = add nsw i64 %add305, %conv56
  %add309 = add i64 %add307, %24
  store i64 %add309, i64* %sum, align 8, !tbaa !3
  %153 = bitcast <8 x i64> %z0.02284 to <16 x i32>
  %154 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %153, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %155 = bitcast <8 x i64> %z1.02285 to <16 x i32>
  %156 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %155, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %157 = bitcast <8 x i64> %z2.02286 to <16 x i32>
  %158 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %157, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %159 = bitcast <8 x i64> %z3.02287 to <16 x i32>
  %160 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %159, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %161 = bitcast <8 x i64> %z4.02288 to <16 x i32>
  %162 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %161, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %163 = bitcast <8 x i64> %z5.02289 to <16 x i32>
  %164 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %163, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %165 = bitcast <8 x i64> %z6.02290 to <16 x i32>
  %166 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %165, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %167 = bitcast <8 x i64> %z7.02291 to <16 x i32>
  %168 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %167, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add318 = add nuw nsw i64 %tile_id.02275, 1
  %mul = mul nsw i64 %add318, %conv
  %add.ptr = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %mul
  %169 = bitcast i32* %add.ptr to <8 x i64>*
  %add.ptr326 = getelementptr inbounds i32, i32* %add.ptr, i64 16
  %170 = bitcast i32* %add.ptr326 to <8 x i64>*
  %add.ptr332 = getelementptr inbounds i32, i32* %add.ptr, i64 32
  %171 = bitcast i32* %add.ptr332 to <8 x i64>*
  %add.ptr338 = getelementptr inbounds i32, i32* %add.ptr, i64 48
  %172 = bitcast i32* %add.ptr338 to <8 x i64>*
  %add.ptr344 = getelementptr inbounds i32, i32* %add.ptr, i64 64
  %173 = bitcast i32* %add.ptr344 to <8 x i64>*
  %add.ptr350 = getelementptr inbounds i32, i32* %add.ptr, i64 80
  %174 = bitcast i32* %add.ptr350 to <8 x i64>*
  %add.ptr356 = getelementptr inbounds i32, i32* %add.ptr, i64 96
  %175 = bitcast i32* %add.ptr356 to <8 x i64>*
  %add.ptr362 = getelementptr inbounds i32, i32* %add.ptr, i64 112
  %176 = bitcast i32* %add.ptr362 to <8 x i64>*
  %z0.0 = load <8 x i64>, <8 x i64>* %169, align 64, !tbaa !20
  %z1.0 = load <8 x i64>, <8 x i64>* %170, align 64, !tbaa !20
  %z2.0 = load <8 x i64>, <8 x i64>* %171, align 64, !tbaa !20
  %z3.0 = load <8 x i64>, <8 x i64>* %172, align 64, !tbaa !20
  %z4.0 = load <8 x i64>, <8 x i64>* %173, align 64, !tbaa !20
  %z5.0 = load <8 x i64>, <8 x i64>* %174, align 64, !tbaa !20
  %z6.0 = load <8 x i64>, <8 x i64>* %175, align 64, !tbaa !20
  %z7.0 = load <8 x i64>, <8 x i64>* %176, align 64, !tbaa !20
  %exitcond2334.not = icmp eq i64 %add318, %sub
  br i1 %exitcond2334.not, label %for.cond364.preheader, label %for.body, !llvm.loop !39

for.cond686.preheader:                            ; preds = %for.body369, %for.cond364.preheader
  %tile_id.1.lcssa = phi i64 [ %tile_id.0.lcssa, %for.cond364.preheader ], [ %sub367, %for.body369 ]
  %.lcssa2253 = phi <16 x i32> [ %z23.0.in.lcssa, %for.cond364.preheader ], [ %580, %for.body369 ]
  %.lcssa2252 = phi <16 x i32> [ %z22.0.in.lcssa, %for.cond364.preheader ], [ %579, %for.body369 ]
  %.lcssa2251 = phi <16 x i32> [ %z21.0.in.lcssa, %for.cond364.preheader ], [ %578, %for.body369 ]
  %.lcssa2250 = phi <16 x i32> [ %z20.0.in.lcssa, %for.cond364.preheader ], [ %577, %for.body369 ]
  %.lcssa2249 = phi <16 x i32> [ %z19.0.in.lcssa, %for.cond364.preheader ], [ %576, %for.body369 ]
  %.lcssa2248 = phi <16 x i32> [ %z18.0.in.lcssa, %for.cond364.preheader ], [ %575, %for.body369 ]
  %.lcssa2247 = phi <16 x i32> [ %z17.0.in.lcssa, %for.cond364.preheader ], [ %574, %for.body369 ]
  %.lcssa = phi <16 x i32> [ %z16.0.in.lcssa, %for.cond364.preheader ], [ %573, %for.body369 ]
  %177 = extractelement <16 x i32> %.lcssa, i32 0
  %conv698 = sext i32 %177 to i64
  %178 = extractelement <16 x i32> %.lcssa, i32 1
  %conv700 = sext i32 %178 to i64
  %179 = extractelement <16 x i32> %.lcssa, i32 2
  %conv702 = sext i32 %179 to i64
  %180 = extractelement <16 x i32> %.lcssa, i32 3
  %conv704 = sext i32 %180 to i64
  %181 = extractelement <16 x i32> %.lcssa, i32 4
  %conv706 = sext i32 %181 to i64
  %182 = extractelement <16 x i32> %.lcssa, i32 5
  %conv708 = sext i32 %182 to i64
  %183 = extractelement <16 x i32> %.lcssa, i32 6
  %conv710 = sext i32 %183 to i64
  %184 = extractelement <16 x i32> %.lcssa, i32 7
  %conv712 = sext i32 %184 to i64
  %185 = extractelement <16 x i32> %.lcssa, i32 8
  %conv714 = sext i32 %185 to i64
  %186 = extractelement <16 x i32> %.lcssa, i32 9
  %conv716 = sext i32 %186 to i64
  %187 = extractelement <16 x i32> %.lcssa, i32 10
  %conv718 = sext i32 %187 to i64
  %188 = extractelement <16 x i32> %.lcssa, i32 11
  %conv720 = sext i32 %188 to i64
  %189 = extractelement <16 x i32> %.lcssa, i32 12
  %conv722 = sext i32 %189 to i64
  %190 = extractelement <16 x i32> %.lcssa, i32 13
  %conv724 = sext i32 %190 to i64
  %191 = extractelement <16 x i32> %.lcssa, i32 14
  %conv726 = sext i32 %191 to i64
  %192 = extractelement <16 x i32> %.lcssa, i32 15
  %conv728 = sext i32 %192 to i64
  %193 = extractelement <16 x i32> %.lcssa2247, i32 0
  %conv736 = sext i32 %193 to i64
  %194 = extractelement <16 x i32> %.lcssa2247, i32 1
  %conv738 = sext i32 %194 to i64
  %195 = extractelement <16 x i32> %.lcssa2247, i32 2
  %conv740 = sext i32 %195 to i64
  %196 = extractelement <16 x i32> %.lcssa2247, i32 3
  %conv742 = sext i32 %196 to i64
  %197 = extractelement <16 x i32> %.lcssa2247, i32 4
  %conv744 = sext i32 %197 to i64
  %198 = extractelement <16 x i32> %.lcssa2247, i32 5
  %conv746 = sext i32 %198 to i64
  %199 = extractelement <16 x i32> %.lcssa2247, i32 6
  %conv748 = sext i32 %199 to i64
  %200 = extractelement <16 x i32> %.lcssa2247, i32 7
  %conv750 = sext i32 %200 to i64
  %201 = extractelement <16 x i32> %.lcssa2247, i32 8
  %conv752 = sext i32 %201 to i64
  %202 = extractelement <16 x i32> %.lcssa2247, i32 9
  %conv754 = sext i32 %202 to i64
  %203 = extractelement <16 x i32> %.lcssa2247, i32 10
  %conv756 = sext i32 %203 to i64
  %204 = extractelement <16 x i32> %.lcssa2247, i32 11
  %conv758 = sext i32 %204 to i64
  %205 = extractelement <16 x i32> %.lcssa2247, i32 12
  %conv760 = sext i32 %205 to i64
  %206 = extractelement <16 x i32> %.lcssa2247, i32 13
  %conv762 = sext i32 %206 to i64
  %207 = extractelement <16 x i32> %.lcssa2247, i32 14
  %conv764 = sext i32 %207 to i64
  %208 = extractelement <16 x i32> %.lcssa2247, i32 15
  %conv766 = sext i32 %208 to i64
  %209 = extractelement <16 x i32> %.lcssa2248, i32 0
  %conv774 = sext i32 %209 to i64
  %210 = extractelement <16 x i32> %.lcssa2248, i32 1
  %conv776 = sext i32 %210 to i64
  %211 = extractelement <16 x i32> %.lcssa2248, i32 2
  %conv778 = sext i32 %211 to i64
  %212 = extractelement <16 x i32> %.lcssa2248, i32 3
  %conv780 = sext i32 %212 to i64
  %213 = extractelement <16 x i32> %.lcssa2248, i32 4
  %conv782 = sext i32 %213 to i64
  %214 = extractelement <16 x i32> %.lcssa2248, i32 5
  %conv784 = sext i32 %214 to i64
  %215 = extractelement <16 x i32> %.lcssa2248, i32 6
  %conv786 = sext i32 %215 to i64
  %216 = extractelement <16 x i32> %.lcssa2248, i32 7
  %conv788 = sext i32 %216 to i64
  %217 = extractelement <16 x i32> %.lcssa2248, i32 8
  %conv790 = sext i32 %217 to i64
  %218 = extractelement <16 x i32> %.lcssa2248, i32 9
  %conv792 = sext i32 %218 to i64
  %219 = extractelement <16 x i32> %.lcssa2248, i32 10
  %conv794 = sext i32 %219 to i64
  %220 = extractelement <16 x i32> %.lcssa2248, i32 11
  %conv796 = sext i32 %220 to i64
  %221 = extractelement <16 x i32> %.lcssa2248, i32 12
  %conv798 = sext i32 %221 to i64
  %222 = extractelement <16 x i32> %.lcssa2248, i32 13
  %conv800 = sext i32 %222 to i64
  %223 = extractelement <16 x i32> %.lcssa2248, i32 14
  %conv802 = sext i32 %223 to i64
  %224 = extractelement <16 x i32> %.lcssa2248, i32 15
  %conv804 = sext i32 %224 to i64
  %225 = extractelement <16 x i32> %.lcssa2249, i32 0
  %conv812 = sext i32 %225 to i64
  %226 = extractelement <16 x i32> %.lcssa2249, i32 1
  %conv814 = sext i32 %226 to i64
  %227 = extractelement <16 x i32> %.lcssa2249, i32 2
  %conv816 = sext i32 %227 to i64
  %228 = extractelement <16 x i32> %.lcssa2249, i32 3
  %conv818 = sext i32 %228 to i64
  %229 = extractelement <16 x i32> %.lcssa2249, i32 4
  %conv820 = sext i32 %229 to i64
  %230 = extractelement <16 x i32> %.lcssa2249, i32 5
  %conv822 = sext i32 %230 to i64
  %231 = extractelement <16 x i32> %.lcssa2249, i32 6
  %conv824 = sext i32 %231 to i64
  %232 = extractelement <16 x i32> %.lcssa2249, i32 7
  %conv826 = sext i32 %232 to i64
  %233 = extractelement <16 x i32> %.lcssa2249, i32 8
  %conv828 = sext i32 %233 to i64
  %234 = extractelement <16 x i32> %.lcssa2249, i32 9
  %conv830 = sext i32 %234 to i64
  %235 = extractelement <16 x i32> %.lcssa2249, i32 10
  %conv832 = sext i32 %235 to i64
  %236 = extractelement <16 x i32> %.lcssa2249, i32 11
  %conv834 = sext i32 %236 to i64
  %237 = extractelement <16 x i32> %.lcssa2249, i32 12
  %conv836 = sext i32 %237 to i64
  %238 = extractelement <16 x i32> %.lcssa2249, i32 13
  %conv838 = sext i32 %238 to i64
  %239 = extractelement <16 x i32> %.lcssa2249, i32 14
  %conv840 = sext i32 %239 to i64
  %240 = extractelement <16 x i32> %.lcssa2249, i32 15
  %conv842 = sext i32 %240 to i64
  %241 = extractelement <16 x i32> %.lcssa2250, i32 0
  %conv850 = sext i32 %241 to i64
  %242 = extractelement <16 x i32> %.lcssa2250, i32 1
  %conv852 = sext i32 %242 to i64
  %243 = extractelement <16 x i32> %.lcssa2250, i32 2
  %conv854 = sext i32 %243 to i64
  %244 = extractelement <16 x i32> %.lcssa2250, i32 3
  %conv856 = sext i32 %244 to i64
  %245 = extractelement <16 x i32> %.lcssa2250, i32 4
  %conv858 = sext i32 %245 to i64
  %246 = extractelement <16 x i32> %.lcssa2250, i32 5
  %conv860 = sext i32 %246 to i64
  %247 = extractelement <16 x i32> %.lcssa2250, i32 6
  %conv862 = sext i32 %247 to i64
  %248 = extractelement <16 x i32> %.lcssa2250, i32 7
  %conv864 = sext i32 %248 to i64
  %249 = extractelement <16 x i32> %.lcssa2250, i32 8
  %conv866 = sext i32 %249 to i64
  %250 = extractelement <16 x i32> %.lcssa2250, i32 9
  %conv868 = sext i32 %250 to i64
  %251 = extractelement <16 x i32> %.lcssa2250, i32 10
  %conv870 = sext i32 %251 to i64
  %252 = extractelement <16 x i32> %.lcssa2250, i32 11
  %conv872 = sext i32 %252 to i64
  %253 = extractelement <16 x i32> %.lcssa2250, i32 12
  %conv874 = sext i32 %253 to i64
  %254 = extractelement <16 x i32> %.lcssa2250, i32 13
  %conv876 = sext i32 %254 to i64
  %255 = extractelement <16 x i32> %.lcssa2250, i32 14
  %conv878 = sext i32 %255 to i64
  %256 = extractelement <16 x i32> %.lcssa2250, i32 15
  %conv880 = sext i32 %256 to i64
  %257 = extractelement <16 x i32> %.lcssa2251, i32 0
  %conv888 = sext i32 %257 to i64
  %258 = extractelement <16 x i32> %.lcssa2251, i32 1
  %conv890 = sext i32 %258 to i64
  %259 = extractelement <16 x i32> %.lcssa2251, i32 2
  %conv892 = sext i32 %259 to i64
  %260 = extractelement <16 x i32> %.lcssa2251, i32 3
  %conv894 = sext i32 %260 to i64
  %261 = extractelement <16 x i32> %.lcssa2251, i32 4
  %conv896 = sext i32 %261 to i64
  %262 = extractelement <16 x i32> %.lcssa2251, i32 5
  %conv898 = sext i32 %262 to i64
  %263 = extractelement <16 x i32> %.lcssa2251, i32 6
  %conv900 = sext i32 %263 to i64
  %264 = extractelement <16 x i32> %.lcssa2251, i32 7
  %conv902 = sext i32 %264 to i64
  %265 = extractelement <16 x i32> %.lcssa2251, i32 8
  %conv904 = sext i32 %265 to i64
  %266 = extractelement <16 x i32> %.lcssa2251, i32 9
  %conv906 = sext i32 %266 to i64
  %267 = extractelement <16 x i32> %.lcssa2251, i32 10
  %conv908 = sext i32 %267 to i64
  %268 = extractelement <16 x i32> %.lcssa2251, i32 11
  %conv910 = sext i32 %268 to i64
  %269 = extractelement <16 x i32> %.lcssa2251, i32 12
  %conv912 = sext i32 %269 to i64
  %270 = extractelement <16 x i32> %.lcssa2251, i32 13
  %conv914 = sext i32 %270 to i64
  %271 = extractelement <16 x i32> %.lcssa2251, i32 14
  %conv916 = sext i32 %271 to i64
  %272 = extractelement <16 x i32> %.lcssa2251, i32 15
  %conv918 = sext i32 %272 to i64
  %273 = extractelement <16 x i32> %.lcssa2252, i32 0
  %conv926 = sext i32 %273 to i64
  %274 = extractelement <16 x i32> %.lcssa2252, i32 1
  %conv928 = sext i32 %274 to i64
  %275 = extractelement <16 x i32> %.lcssa2252, i32 2
  %conv930 = sext i32 %275 to i64
  %276 = extractelement <16 x i32> %.lcssa2252, i32 3
  %conv932 = sext i32 %276 to i64
  %277 = extractelement <16 x i32> %.lcssa2252, i32 4
  %conv934 = sext i32 %277 to i64
  %278 = extractelement <16 x i32> %.lcssa2252, i32 5
  %conv936 = sext i32 %278 to i64
  %279 = extractelement <16 x i32> %.lcssa2252, i32 6
  %conv938 = sext i32 %279 to i64
  %280 = extractelement <16 x i32> %.lcssa2252, i32 7
  %conv940 = sext i32 %280 to i64
  %281 = extractelement <16 x i32> %.lcssa2252, i32 8
  %conv942 = sext i32 %281 to i64
  %282 = extractelement <16 x i32> %.lcssa2252, i32 9
  %conv944 = sext i32 %282 to i64
  %283 = extractelement <16 x i32> %.lcssa2252, i32 10
  %conv946 = sext i32 %283 to i64
  %284 = extractelement <16 x i32> %.lcssa2252, i32 11
  %conv948 = sext i32 %284 to i64
  %285 = extractelement <16 x i32> %.lcssa2252, i32 12
  %conv950 = sext i32 %285 to i64
  %286 = extractelement <16 x i32> %.lcssa2252, i32 13
  %conv952 = sext i32 %286 to i64
  %287 = extractelement <16 x i32> %.lcssa2252, i32 14
  %conv954 = sext i32 %287 to i64
  %288 = extractelement <16 x i32> %.lcssa2252, i32 15
  %conv956 = sext i32 %288 to i64
  %289 = extractelement <16 x i32> %.lcssa2253, i32 0
  %conv964 = sext i32 %289 to i64
  %290 = extractelement <16 x i32> %.lcssa2253, i32 1
  %conv966 = sext i32 %290 to i64
  %291 = extractelement <16 x i32> %.lcssa2253, i32 2
  %conv968 = sext i32 %291 to i64
  %292 = extractelement <16 x i32> %.lcssa2253, i32 3
  %conv970 = sext i32 %292 to i64
  %293 = extractelement <16 x i32> %.lcssa2253, i32 4
  %conv972 = sext i32 %293 to i64
  %294 = extractelement <16 x i32> %.lcssa2253, i32 5
  %conv974 = sext i32 %294 to i64
  %295 = extractelement <16 x i32> %.lcssa2253, i32 6
  %conv976 = sext i32 %295 to i64
  %296 = extractelement <16 x i32> %.lcssa2253, i32 7
  %conv978 = sext i32 %296 to i64
  %297 = extractelement <16 x i32> %.lcssa2253, i32 8
  %conv980 = sext i32 %297 to i64
  %298 = extractelement <16 x i32> %.lcssa2253, i32 9
  %conv982 = sext i32 %298 to i64
  %299 = extractelement <16 x i32> %.lcssa2253, i32 10
  %conv984 = sext i32 %299 to i64
  %300 = extractelement <16 x i32> %.lcssa2253, i32 11
  %conv986 = sext i32 %300 to i64
  %301 = extractelement <16 x i32> %.lcssa2253, i32 12
  %conv988 = sext i32 %301 to i64
  %302 = extractelement <16 x i32> %.lcssa2253, i32 13
  %conv990 = sext i32 %302 to i64
  %303 = extractelement <16 x i32> %.lcssa2253, i32 14
  %conv992 = sext i32 %303 to i64
  %304 = extractelement <16 x i32> %.lcssa2253, i32 15
  %conv994 = sext i32 %304 to i64
  %cmp6892254 = icmp slt i64 %tile_id.1.lcssa, %div.sext
  br i1 %cmp6892254, label %for.body690.lr.ph, label %for.end998

for.body690.lr.ph:                                ; preds = %for.cond686.preheader
  %add699 = add nsw i64 %conv966, %conv964
  %add701 = add nsw i64 %add699, %conv968
  %add703 = add nsw i64 %add701, %conv970
  %add705 = add nsw i64 %add703, %conv972
  %add707 = add nsw i64 %add705, %conv974
  %add709 = add nsw i64 %add707, %conv976
  %add711 = add nsw i64 %add709, %conv978
  %add713 = add nsw i64 %add711, %conv980
  %add715 = add nsw i64 %add713, %conv982
  %add717 = add nsw i64 %add715, %conv984
  %add719 = add nsw i64 %add717, %conv986
  %add721 = add nsw i64 %add719, %conv988
  %add723 = add nsw i64 %add721, %conv990
  %add725 = add nsw i64 %add723, %conv992
  %add727 = add nsw i64 %add725, %conv994
  %add729 = add nsw i64 %add727, %conv926
  %add737 = add nsw i64 %add729, %conv928
  %add739 = add nsw i64 %add737, %conv930
  %add741 = add nsw i64 %add739, %conv932
  %add743 = add nsw i64 %add741, %conv934
  %add745 = add nsw i64 %add743, %conv936
  %add747 = add nsw i64 %add745, %conv938
  %add749 = add nsw i64 %add747, %conv940
  %add751 = add nsw i64 %add749, %conv942
  %add753 = add nsw i64 %add751, %conv944
  %add755 = add nsw i64 %add753, %conv946
  %add757 = add nsw i64 %add755, %conv948
  %add759 = add nsw i64 %add757, %conv950
  %add761 = add nsw i64 %add759, %conv952
  %add763 = add nsw i64 %add761, %conv954
  %add765 = add nsw i64 %add763, %conv956
  %add767 = add nsw i64 %add765, %conv888
  %add775 = add nsw i64 %add767, %conv890
  %add777 = add nsw i64 %add775, %conv892
  %add779 = add nsw i64 %add777, %conv894
  %add781 = add nsw i64 %add779, %conv896
  %add783 = add nsw i64 %add781, %conv898
  %add785 = add nsw i64 %add783, %conv900
  %add787 = add nsw i64 %add785, %conv902
  %add789 = add nsw i64 %add787, %conv904
  %add791 = add nsw i64 %add789, %conv906
  %add793 = add nsw i64 %add791, %conv908
  %add795 = add nsw i64 %add793, %conv910
  %add797 = add nsw i64 %add795, %conv912
  %add799 = add nsw i64 %add797, %conv914
  %add801 = add nsw i64 %add799, %conv916
  %add803 = add nsw i64 %add801, %conv918
  %add805 = add nsw i64 %add803, %conv850
  %add813 = add nsw i64 %add805, %conv852
  %add815 = add nsw i64 %add813, %conv854
  %add817 = add nsw i64 %add815, %conv856
  %add819 = add nsw i64 %add817, %conv858
  %add821 = add nsw i64 %add819, %conv860
  %add823 = add nsw i64 %add821, %conv862
  %add825 = add nsw i64 %add823, %conv864
  %add827 = add nsw i64 %add825, %conv866
  %add829 = add nsw i64 %add827, %conv868
  %add831 = add nsw i64 %add829, %conv870
  %add833 = add nsw i64 %add831, %conv872
  %add835 = add nsw i64 %add833, %conv874
  %add837 = add nsw i64 %add835, %conv876
  %add839 = add nsw i64 %add837, %conv878
  %add841 = add nsw i64 %add839, %conv880
  %add843 = add nsw i64 %add841, %conv812
  %add851 = add nsw i64 %add843, %conv814
  %add853 = add nsw i64 %add851, %conv816
  %add855 = add nsw i64 %add853, %conv818
  %add857 = add nsw i64 %add855, %conv820
  %add859 = add nsw i64 %add857, %conv822
  %add861 = add nsw i64 %add859, %conv824
  %add863 = add nsw i64 %add861, %conv826
  %add865 = add nsw i64 %add863, %conv828
  %add867 = add nsw i64 %add865, %conv830
  %add869 = add nsw i64 %add867, %conv832
  %add871 = add nsw i64 %add869, %conv834
  %add873 = add nsw i64 %add871, %conv836
  %add875 = add nsw i64 %add873, %conv838
  %add877 = add nsw i64 %add875, %conv840
  %add879 = add nsw i64 %add877, %conv842
  %add881 = add nsw i64 %add879, %conv774
  %add889 = add nsw i64 %add881, %conv776
  %add891 = add nsw i64 %add889, %conv778
  %add893 = add nsw i64 %add891, %conv780
  %add895 = add nsw i64 %add893, %conv782
  %add897 = add nsw i64 %add895, %conv784
  %add899 = add nsw i64 %add897, %conv786
  %add901 = add nsw i64 %add899, %conv788
  %add903 = add nsw i64 %add901, %conv790
  %add905 = add nsw i64 %add903, %conv792
  %add907 = add nsw i64 %add905, %conv794
  %add909 = add nsw i64 %add907, %conv796
  %add911 = add nsw i64 %add909, %conv798
  %add913 = add nsw i64 %add911, %conv800
  %add915 = add nsw i64 %add913, %conv802
  %add917 = add nsw i64 %add915, %conv804
  %add919 = add nsw i64 %add917, %conv736
  %add927 = add nsw i64 %add919, %conv738
  %add929 = add nsw i64 %add927, %conv740
  %add931 = add nsw i64 %add929, %conv742
  %add933 = add nsw i64 %add931, %conv744
  %add935 = add nsw i64 %add933, %conv746
  %add937 = add nsw i64 %add935, %conv748
  %add939 = add nsw i64 %add937, %conv750
  %add941 = add nsw i64 %add939, %conv752
  %add943 = add nsw i64 %add941, %conv754
  %add945 = add nsw i64 %add943, %conv756
  %add947 = add nsw i64 %add945, %conv758
  %add949 = add nsw i64 %add947, %conv760
  %add951 = add nsw i64 %add949, %conv762
  %add953 = add nsw i64 %add951, %conv764
  %add955 = add nsw i64 %add953, %conv766
  %add957 = add nsw i64 %add955, %conv698
  %add965 = add nsw i64 %add957, %conv700
  %add967 = add nsw i64 %add965, %conv702
  %add969 = add nsw i64 %add967, %conv704
  %add971 = add nsw i64 %add969, %conv706
  %add973 = add nsw i64 %add971, %conv708
  %add975 = add nsw i64 %add973, %conv710
  %add977 = add nsw i64 %add975, %conv712
  %add979 = add nsw i64 %add977, %conv714
  %add981 = add nsw i64 %add979, %conv716
  %add983 = add nsw i64 %add981, %conv718
  %add985 = add nsw i64 %add983, %conv720
  %add987 = add nsw i64 %add985, %conv722
  %add989 = add nsw i64 %add987, %conv724
  %add991 = add nsw i64 %add989, %conv726
  %add993 = add nsw i64 %add991, %conv728
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %305 = sub nsw i64 %sub367, %tile_id.1.lcssa
  %306 = mul i64 %add993, %305
  %307 = add i64 %sum.promoted, %306
  %308 = add i64 %307, %conv966
  %309 = add i64 %308, %conv964
  %310 = add i64 %309, %conv968
  %311 = add i64 %310, %conv970
  %312 = add i64 %311, %conv972
  %313 = add i64 %312, %conv974
  %314 = add i64 %313, %conv976
  %315 = add i64 %314, %conv978
  %316 = add i64 %315, %conv980
  %317 = add i64 %316, %conv982
  %318 = add i64 %317, %conv984
  %319 = add i64 %318, %conv986
  %320 = add i64 %319, %conv988
  %321 = add i64 %320, %conv990
  %322 = add i64 %321, %conv992
  %323 = add i64 %322, %conv994
  %324 = add i64 %323, %conv926
  %325 = add i64 %324, %conv928
  %326 = add i64 %325, %conv930
  %327 = add i64 %326, %conv932
  %328 = add i64 %327, %conv934
  %329 = add i64 %328, %conv936
  %330 = add i64 %329, %conv938
  %331 = add i64 %330, %conv940
  %332 = add i64 %331, %conv942
  %333 = add i64 %332, %conv944
  %334 = add i64 %333, %conv946
  %335 = add i64 %334, %conv948
  %336 = add i64 %335, %conv950
  %337 = add i64 %336, %conv952
  %338 = add i64 %337, %conv954
  %339 = add i64 %338, %conv956
  %340 = add i64 %339, %conv888
  %341 = add i64 %340, %conv890
  %342 = add i64 %341, %conv892
  %343 = add i64 %342, %conv894
  %344 = add i64 %343, %conv896
  %345 = add i64 %344, %conv898
  %346 = add i64 %345, %conv900
  %347 = add i64 %346, %conv902
  %348 = add i64 %347, %conv904
  %349 = add i64 %348, %conv906
  %350 = add i64 %349, %conv908
  %351 = add i64 %350, %conv910
  %352 = add i64 %351, %conv912
  %353 = add i64 %352, %conv914
  %354 = add i64 %353, %conv916
  %355 = add i64 %354, %conv918
  %356 = add i64 %355, %conv850
  %357 = add i64 %356, %conv852
  %358 = add i64 %357, %conv854
  %359 = add i64 %358, %conv856
  %360 = add i64 %359, %conv858
  %361 = add i64 %360, %conv860
  %362 = add i64 %361, %conv862
  %363 = add i64 %362, %conv864
  %364 = add i64 %363, %conv866
  %365 = add i64 %364, %conv868
  %366 = add i64 %365, %conv870
  %367 = add i64 %366, %conv872
  %368 = add i64 %367, %conv874
  %369 = add i64 %368, %conv876
  %370 = add i64 %369, %conv878
  %371 = add i64 %370, %conv880
  %372 = add i64 %371, %conv812
  %373 = add i64 %372, %conv814
  %374 = add i64 %373, %conv816
  %375 = add i64 %374, %conv818
  %376 = add i64 %375, %conv820
  %377 = add i64 %376, %conv822
  %378 = add i64 %377, %conv824
  %379 = add i64 %378, %conv826
  %380 = add i64 %379, %conv828
  %381 = add i64 %380, %conv830
  %382 = add i64 %381, %conv832
  %383 = add i64 %382, %conv834
  %384 = add i64 %383, %conv836
  %385 = add i64 %384, %conv838
  %386 = add i64 %385, %conv840
  %387 = add i64 %386, %conv842
  %388 = add i64 %387, %conv774
  %389 = add i64 %388, %conv776
  %390 = add i64 %389, %conv778
  %391 = add i64 %390, %conv780
  %392 = add i64 %391, %conv782
  %393 = add i64 %392, %conv784
  %394 = add i64 %393, %conv786
  %395 = add i64 %394, %conv788
  %396 = add i64 %395, %conv790
  %397 = add i64 %396, %conv792
  %398 = add i64 %397, %conv794
  %399 = add i64 %398, %conv796
  %400 = add i64 %399, %conv798
  %401 = add i64 %400, %conv800
  %402 = add i64 %401, %conv802
  %403 = add i64 %402, %conv804
  %404 = add i64 %403, %conv736
  %405 = add i64 %404, %conv738
  %406 = add i64 %405, %conv740
  %407 = add i64 %406, %conv742
  %408 = add i64 %407, %conv744
  %409 = add i64 %408, %conv746
  %410 = add i64 %409, %conv748
  %411 = add i64 %410, %conv750
  %412 = add i64 %411, %conv752
  %413 = add i64 %412, %conv754
  %414 = add i64 %413, %conv756
  %415 = add i64 %414, %conv758
  %416 = add i64 %415, %conv760
  %417 = add i64 %416, %conv762
  %418 = add i64 %417, %conv764
  %419 = add i64 %418, %conv766
  %420 = add i64 %419, %conv698
  %421 = add i64 %420, %conv700
  %422 = add i64 %421, %conv702
  %423 = add i64 %422, %conv704
  %424 = add i64 %423, %conv706
  %425 = add i64 %424, %conv708
  %426 = add i64 %425, %conv710
  %427 = add i64 %426, %conv712
  %428 = add i64 %427, %conv714
  %429 = add i64 %428, %conv716
  %430 = add i64 %429, %conv718
  %431 = add i64 %430, %conv720
  %432 = add i64 %431, %conv722
  %433 = add i64 %432, %conv724
  %434 = add i64 %433, %conv726
  %435 = add i64 %434, %conv728
  store i64 %435, i64* %sum, align 8, !tbaa !3
  br label %for.end998

for.body369:                                      ; preds = %for.body369.preheader, %for.body369
  %436 = phi i64 [ %add674, %for.body369 ], [ %.pre2335, %for.body369.preheader ]
  %437 = phi <16 x i32> [ %573, %for.body369 ], [ %z16.0.in.lcssa, %for.body369.preheader ]
  %438 = phi <16 x i32> [ %574, %for.body369 ], [ %z17.0.in.lcssa, %for.body369.preheader ]
  %439 = phi <16 x i32> [ %575, %for.body369 ], [ %z18.0.in.lcssa, %for.body369.preheader ]
  %440 = phi <16 x i32> [ %576, %for.body369 ], [ %z19.0.in.lcssa, %for.body369.preheader ]
  %441 = phi <16 x i32> [ %577, %for.body369 ], [ %z20.0.in.lcssa, %for.body369.preheader ]
  %442 = phi <16 x i32> [ %578, %for.body369 ], [ %z21.0.in.lcssa, %for.body369.preheader ]
  %443 = phi <16 x i32> [ %579, %for.body369 ], [ %z22.0.in.lcssa, %for.body369.preheader ]
  %444 = phi <16 x i32> [ %580, %for.body369 ], [ %z23.0.in.lcssa, %for.body369.preheader ]
  %tile_id.12257 = phi i64 [ %inc684, %for.body369 ], [ %tile_id.0.lcssa, %for.body369.preheader ]
  %445 = extractelement <16 x i32> %437, i32 0
  %conv377 = sext i32 %445 to i64
  %446 = extractelement <16 x i32> %437, i32 1
  %conv379 = sext i32 %446 to i64
  %447 = extractelement <16 x i32> %437, i32 2
  %conv381 = sext i32 %447 to i64
  %448 = extractelement <16 x i32> %437, i32 3
  %conv383 = sext i32 %448 to i64
  %449 = extractelement <16 x i32> %437, i32 4
  %conv385 = sext i32 %449 to i64
  %450 = extractelement <16 x i32> %437, i32 5
  %conv387 = sext i32 %450 to i64
  %451 = extractelement <16 x i32> %437, i32 6
  %conv389 = sext i32 %451 to i64
  %452 = extractelement <16 x i32> %437, i32 7
  %conv391 = sext i32 %452 to i64
  %453 = extractelement <16 x i32> %437, i32 8
  %conv393 = sext i32 %453 to i64
  %454 = extractelement <16 x i32> %437, i32 9
  %conv395 = sext i32 %454 to i64
  %455 = extractelement <16 x i32> %437, i32 10
  %conv397 = sext i32 %455 to i64
  %456 = extractelement <16 x i32> %437, i32 11
  %conv399 = sext i32 %456 to i64
  %457 = extractelement <16 x i32> %437, i32 12
  %conv401 = sext i32 %457 to i64
  %458 = extractelement <16 x i32> %437, i32 13
  %conv403 = sext i32 %458 to i64
  %459 = extractelement <16 x i32> %437, i32 14
  %conv405 = sext i32 %459 to i64
  %460 = extractelement <16 x i32> %437, i32 15
  %conv407 = sext i32 %460 to i64
  %461 = extractelement <16 x i32> %438, i32 0
  %conv415 = sext i32 %461 to i64
  %462 = extractelement <16 x i32> %438, i32 1
  %conv417 = sext i32 %462 to i64
  %463 = extractelement <16 x i32> %438, i32 2
  %conv419 = sext i32 %463 to i64
  %464 = extractelement <16 x i32> %438, i32 3
  %conv421 = sext i32 %464 to i64
  %465 = extractelement <16 x i32> %438, i32 4
  %conv423 = sext i32 %465 to i64
  %466 = extractelement <16 x i32> %438, i32 5
  %conv425 = sext i32 %466 to i64
  %467 = extractelement <16 x i32> %438, i32 6
  %conv427 = sext i32 %467 to i64
  %468 = extractelement <16 x i32> %438, i32 7
  %conv429 = sext i32 %468 to i64
  %469 = extractelement <16 x i32> %438, i32 8
  %conv431 = sext i32 %469 to i64
  %470 = extractelement <16 x i32> %438, i32 9
  %conv433 = sext i32 %470 to i64
  %471 = extractelement <16 x i32> %438, i32 10
  %conv435 = sext i32 %471 to i64
  %472 = extractelement <16 x i32> %438, i32 11
  %conv437 = sext i32 %472 to i64
  %473 = extractelement <16 x i32> %438, i32 12
  %conv439 = sext i32 %473 to i64
  %474 = extractelement <16 x i32> %438, i32 13
  %conv441 = sext i32 %474 to i64
  %475 = extractelement <16 x i32> %438, i32 14
  %conv443 = sext i32 %475 to i64
  %476 = extractelement <16 x i32> %438, i32 15
  %conv445 = sext i32 %476 to i64
  %477 = extractelement <16 x i32> %439, i32 0
  %conv453 = sext i32 %477 to i64
  %478 = extractelement <16 x i32> %439, i32 1
  %conv455 = sext i32 %478 to i64
  %479 = extractelement <16 x i32> %439, i32 2
  %conv457 = sext i32 %479 to i64
  %480 = extractelement <16 x i32> %439, i32 3
  %conv459 = sext i32 %480 to i64
  %481 = extractelement <16 x i32> %439, i32 4
  %conv461 = sext i32 %481 to i64
  %482 = extractelement <16 x i32> %439, i32 5
  %conv463 = sext i32 %482 to i64
  %483 = extractelement <16 x i32> %439, i32 6
  %conv465 = sext i32 %483 to i64
  %484 = extractelement <16 x i32> %439, i32 7
  %conv467 = sext i32 %484 to i64
  %485 = extractelement <16 x i32> %439, i32 8
  %conv469 = sext i32 %485 to i64
  %486 = extractelement <16 x i32> %439, i32 9
  %conv471 = sext i32 %486 to i64
  %487 = extractelement <16 x i32> %439, i32 10
  %conv473 = sext i32 %487 to i64
  %488 = extractelement <16 x i32> %439, i32 11
  %conv475 = sext i32 %488 to i64
  %489 = extractelement <16 x i32> %439, i32 12
  %conv477 = sext i32 %489 to i64
  %490 = extractelement <16 x i32> %439, i32 13
  %conv479 = sext i32 %490 to i64
  %491 = extractelement <16 x i32> %439, i32 14
  %conv481 = sext i32 %491 to i64
  %492 = extractelement <16 x i32> %439, i32 15
  %conv483 = sext i32 %492 to i64
  %493 = extractelement <16 x i32> %440, i32 0
  %conv491 = sext i32 %493 to i64
  %494 = extractelement <16 x i32> %440, i32 1
  %conv493 = sext i32 %494 to i64
  %495 = extractelement <16 x i32> %440, i32 2
  %conv495 = sext i32 %495 to i64
  %496 = extractelement <16 x i32> %440, i32 3
  %conv497 = sext i32 %496 to i64
  %497 = extractelement <16 x i32> %440, i32 4
  %conv499 = sext i32 %497 to i64
  %498 = extractelement <16 x i32> %440, i32 5
  %conv501 = sext i32 %498 to i64
  %499 = extractelement <16 x i32> %440, i32 6
  %conv503 = sext i32 %499 to i64
  %500 = extractelement <16 x i32> %440, i32 7
  %conv505 = sext i32 %500 to i64
  %501 = extractelement <16 x i32> %440, i32 8
  %conv507 = sext i32 %501 to i64
  %502 = extractelement <16 x i32> %440, i32 9
  %conv509 = sext i32 %502 to i64
  %503 = extractelement <16 x i32> %440, i32 10
  %conv511 = sext i32 %503 to i64
  %504 = extractelement <16 x i32> %440, i32 11
  %conv513 = sext i32 %504 to i64
  %505 = extractelement <16 x i32> %440, i32 12
  %conv515 = sext i32 %505 to i64
  %506 = extractelement <16 x i32> %440, i32 13
  %conv517 = sext i32 %506 to i64
  %507 = extractelement <16 x i32> %440, i32 14
  %conv519 = sext i32 %507 to i64
  %508 = extractelement <16 x i32> %440, i32 15
  %conv521 = sext i32 %508 to i64
  %509 = extractelement <16 x i32> %441, i32 0
  %conv529 = sext i32 %509 to i64
  %510 = extractelement <16 x i32> %441, i32 1
  %conv531 = sext i32 %510 to i64
  %511 = extractelement <16 x i32> %441, i32 2
  %conv533 = sext i32 %511 to i64
  %512 = extractelement <16 x i32> %441, i32 3
  %conv535 = sext i32 %512 to i64
  %513 = extractelement <16 x i32> %441, i32 4
  %conv537 = sext i32 %513 to i64
  %514 = extractelement <16 x i32> %441, i32 5
  %conv539 = sext i32 %514 to i64
  %515 = extractelement <16 x i32> %441, i32 6
  %conv541 = sext i32 %515 to i64
  %516 = extractelement <16 x i32> %441, i32 7
  %conv543 = sext i32 %516 to i64
  %517 = extractelement <16 x i32> %441, i32 8
  %conv545 = sext i32 %517 to i64
  %518 = extractelement <16 x i32> %441, i32 9
  %conv547 = sext i32 %518 to i64
  %519 = extractelement <16 x i32> %441, i32 10
  %conv549 = sext i32 %519 to i64
  %520 = extractelement <16 x i32> %441, i32 11
  %conv551 = sext i32 %520 to i64
  %521 = extractelement <16 x i32> %441, i32 12
  %conv553 = sext i32 %521 to i64
  %522 = extractelement <16 x i32> %441, i32 13
  %conv555 = sext i32 %522 to i64
  %523 = extractelement <16 x i32> %441, i32 14
  %conv557 = sext i32 %523 to i64
  %524 = extractelement <16 x i32> %441, i32 15
  %conv559 = sext i32 %524 to i64
  %525 = extractelement <16 x i32> %442, i32 0
  %conv567 = sext i32 %525 to i64
  %526 = extractelement <16 x i32> %442, i32 1
  %conv569 = sext i32 %526 to i64
  %527 = extractelement <16 x i32> %442, i32 2
  %conv571 = sext i32 %527 to i64
  %528 = extractelement <16 x i32> %442, i32 3
  %conv573 = sext i32 %528 to i64
  %529 = extractelement <16 x i32> %442, i32 4
  %conv575 = sext i32 %529 to i64
  %530 = extractelement <16 x i32> %442, i32 5
  %conv577 = sext i32 %530 to i64
  %531 = extractelement <16 x i32> %442, i32 6
  %conv579 = sext i32 %531 to i64
  %532 = extractelement <16 x i32> %442, i32 7
  %conv581 = sext i32 %532 to i64
  %533 = extractelement <16 x i32> %442, i32 8
  %conv583 = sext i32 %533 to i64
  %534 = extractelement <16 x i32> %442, i32 9
  %conv585 = sext i32 %534 to i64
  %535 = extractelement <16 x i32> %442, i32 10
  %conv587 = sext i32 %535 to i64
  %536 = extractelement <16 x i32> %442, i32 11
  %conv589 = sext i32 %536 to i64
  %537 = extractelement <16 x i32> %442, i32 12
  %conv591 = sext i32 %537 to i64
  %538 = extractelement <16 x i32> %442, i32 13
  %conv593 = sext i32 %538 to i64
  %539 = extractelement <16 x i32> %442, i32 14
  %conv595 = sext i32 %539 to i64
  %540 = extractelement <16 x i32> %442, i32 15
  %conv597 = sext i32 %540 to i64
  %541 = extractelement <16 x i32> %443, i32 0
  %conv605 = sext i32 %541 to i64
  %542 = extractelement <16 x i32> %443, i32 1
  %conv607 = sext i32 %542 to i64
  %543 = extractelement <16 x i32> %443, i32 2
  %conv609 = sext i32 %543 to i64
  %544 = extractelement <16 x i32> %443, i32 3
  %conv611 = sext i32 %544 to i64
  %545 = extractelement <16 x i32> %443, i32 4
  %conv613 = sext i32 %545 to i64
  %546 = extractelement <16 x i32> %443, i32 5
  %conv615 = sext i32 %546 to i64
  %547 = extractelement <16 x i32> %443, i32 6
  %conv617 = sext i32 %547 to i64
  %548 = extractelement <16 x i32> %443, i32 7
  %conv619 = sext i32 %548 to i64
  %549 = extractelement <16 x i32> %443, i32 8
  %conv621 = sext i32 %549 to i64
  %550 = extractelement <16 x i32> %443, i32 9
  %conv623 = sext i32 %550 to i64
  %551 = extractelement <16 x i32> %443, i32 10
  %conv625 = sext i32 %551 to i64
  %552 = extractelement <16 x i32> %443, i32 11
  %conv627 = sext i32 %552 to i64
  %553 = extractelement <16 x i32> %443, i32 12
  %conv629 = sext i32 %553 to i64
  %554 = extractelement <16 x i32> %443, i32 13
  %conv631 = sext i32 %554 to i64
  %555 = extractelement <16 x i32> %443, i32 14
  %conv633 = sext i32 %555 to i64
  %556 = extractelement <16 x i32> %443, i32 15
  %conv635 = sext i32 %556 to i64
  %557 = extractelement <16 x i32> %444, i32 0
  %conv643 = sext i32 %557 to i64
  %558 = extractelement <16 x i32> %444, i32 1
  %conv645 = sext i32 %558 to i64
  %559 = extractelement <16 x i32> %444, i32 2
  %conv647 = sext i32 %559 to i64
  %560 = extractelement <16 x i32> %444, i32 3
  %conv649 = sext i32 %560 to i64
  %561 = extractelement <16 x i32> %444, i32 4
  %conv651 = sext i32 %561 to i64
  %562 = extractelement <16 x i32> %444, i32 5
  %conv653 = sext i32 %562 to i64
  %563 = extractelement <16 x i32> %444, i32 6
  %conv655 = sext i32 %563 to i64
  %564 = extractelement <16 x i32> %444, i32 7
  %conv657 = sext i32 %564 to i64
  %565 = extractelement <16 x i32> %444, i32 8
  %conv659 = sext i32 %565 to i64
  %566 = extractelement <16 x i32> %444, i32 9
  %conv661 = sext i32 %566 to i64
  %567 = extractelement <16 x i32> %444, i32 10
  %conv663 = sext i32 %567 to i64
  %568 = extractelement <16 x i32> %444, i32 11
  %conv665 = sext i32 %568 to i64
  %569 = extractelement <16 x i32> %444, i32 12
  %conv667 = sext i32 %569 to i64
  %570 = extractelement <16 x i32> %444, i32 13
  %conv669 = sext i32 %570 to i64
  %571 = extractelement <16 x i32> %444, i32 14
  %conv671 = sext i32 %571 to i64
  %572 = extractelement <16 x i32> %444, i32 15
  %conv673 = sext i32 %572 to i64
  %add378 = add nsw i64 %conv645, %conv643
  %add380 = add nsw i64 %add378, %conv647
  %add382 = add nsw i64 %add380, %conv649
  %add384 = add nsw i64 %add382, %conv651
  %add386 = add nsw i64 %add384, %conv653
  %add388 = add nsw i64 %add386, %conv655
  %add390 = add nsw i64 %add388, %conv657
  %add392 = add nsw i64 %add390, %conv659
  %add394 = add nsw i64 %add392, %conv661
  %add396 = add nsw i64 %add394, %conv663
  %add398 = add nsw i64 %add396, %conv665
  %add400 = add nsw i64 %add398, %conv667
  %add402 = add nsw i64 %add400, %conv669
  %add404 = add nsw i64 %add402, %conv671
  %add406 = add nsw i64 %add404, %conv673
  %add408 = add nsw i64 %add406, %conv605
  %add416 = add nsw i64 %add408, %conv607
  %add418 = add nsw i64 %add416, %conv609
  %add420 = add nsw i64 %add418, %conv611
  %add422 = add nsw i64 %add420, %conv613
  %add424 = add nsw i64 %add422, %conv615
  %add426 = add nsw i64 %add424, %conv617
  %add428 = add nsw i64 %add426, %conv619
  %add430 = add nsw i64 %add428, %conv621
  %add432 = add nsw i64 %add430, %conv623
  %add434 = add nsw i64 %add432, %conv625
  %add436 = add nsw i64 %add434, %conv627
  %add438 = add nsw i64 %add436, %conv629
  %add440 = add nsw i64 %add438, %conv631
  %add442 = add nsw i64 %add440, %conv633
  %add444 = add nsw i64 %add442, %conv635
  %add446 = add nsw i64 %add444, %conv567
  %add454 = add nsw i64 %add446, %conv569
  %add456 = add nsw i64 %add454, %conv571
  %add458 = add nsw i64 %add456, %conv573
  %add460 = add nsw i64 %add458, %conv575
  %add462 = add nsw i64 %add460, %conv577
  %add464 = add nsw i64 %add462, %conv579
  %add466 = add nsw i64 %add464, %conv581
  %add468 = add nsw i64 %add466, %conv583
  %add470 = add nsw i64 %add468, %conv585
  %add472 = add nsw i64 %add470, %conv587
  %add474 = add nsw i64 %add472, %conv589
  %add476 = add nsw i64 %add474, %conv591
  %add478 = add nsw i64 %add476, %conv593
  %add480 = add nsw i64 %add478, %conv595
  %add482 = add nsw i64 %add480, %conv597
  %add484 = add nsw i64 %add482, %conv529
  %add492 = add nsw i64 %add484, %conv531
  %add494 = add nsw i64 %add492, %conv533
  %add496 = add nsw i64 %add494, %conv535
  %add498 = add nsw i64 %add496, %conv537
  %add500 = add nsw i64 %add498, %conv539
  %add502 = add nsw i64 %add500, %conv541
  %add504 = add nsw i64 %add502, %conv543
  %add506 = add nsw i64 %add504, %conv545
  %add508 = add nsw i64 %add506, %conv547
  %add510 = add nsw i64 %add508, %conv549
  %add512 = add nsw i64 %add510, %conv551
  %add514 = add nsw i64 %add512, %conv553
  %add516 = add nsw i64 %add514, %conv555
  %add518 = add nsw i64 %add516, %conv557
  %add520 = add nsw i64 %add518, %conv559
  %add522 = add nsw i64 %add520, %conv491
  %add530 = add nsw i64 %add522, %conv493
  %add532 = add nsw i64 %add530, %conv495
  %add534 = add nsw i64 %add532, %conv497
  %add536 = add nsw i64 %add534, %conv499
  %add538 = add nsw i64 %add536, %conv501
  %add540 = add nsw i64 %add538, %conv503
  %add542 = add nsw i64 %add540, %conv505
  %add544 = add nsw i64 %add542, %conv507
  %add546 = add nsw i64 %add544, %conv509
  %add548 = add nsw i64 %add546, %conv511
  %add550 = add nsw i64 %add548, %conv513
  %add552 = add nsw i64 %add550, %conv515
  %add554 = add nsw i64 %add552, %conv517
  %add556 = add nsw i64 %add554, %conv519
  %add558 = add nsw i64 %add556, %conv521
  %add560 = add nsw i64 %add558, %conv453
  %add568 = add nsw i64 %add560, %conv455
  %add570 = add nsw i64 %add568, %conv457
  %add572 = add nsw i64 %add570, %conv459
  %add574 = add nsw i64 %add572, %conv461
  %add576 = add nsw i64 %add574, %conv463
  %add578 = add nsw i64 %add576, %conv465
  %add580 = add nsw i64 %add578, %conv467
  %add582 = add nsw i64 %add580, %conv469
  %add584 = add nsw i64 %add582, %conv471
  %add586 = add nsw i64 %add584, %conv473
  %add588 = add nsw i64 %add586, %conv475
  %add590 = add nsw i64 %add588, %conv477
  %add592 = add nsw i64 %add590, %conv479
  %add594 = add nsw i64 %add592, %conv481
  %add596 = add nsw i64 %add594, %conv483
  %add598 = add nsw i64 %add596, %conv415
  %add606 = add nsw i64 %add598, %conv417
  %add608 = add nsw i64 %add606, %conv419
  %add610 = add nsw i64 %add608, %conv421
  %add612 = add nsw i64 %add610, %conv423
  %add614 = add nsw i64 %add612, %conv425
  %add616 = add nsw i64 %add614, %conv427
  %add618 = add nsw i64 %add616, %conv429
  %add620 = add nsw i64 %add618, %conv431
  %add622 = add nsw i64 %add620, %conv433
  %add624 = add nsw i64 %add622, %conv435
  %add626 = add nsw i64 %add624, %conv437
  %add628 = add nsw i64 %add626, %conv439
  %add630 = add nsw i64 %add628, %conv441
  %add632 = add nsw i64 %add630, %conv443
  %add634 = add nsw i64 %add632, %conv445
  %add636 = add nsw i64 %add634, %conv377
  %add644 = add nsw i64 %add636, %conv379
  %add646 = add nsw i64 %add644, %conv381
  %add648 = add nsw i64 %add646, %conv383
  %add650 = add nsw i64 %add648, %conv385
  %add652 = add nsw i64 %add650, %conv387
  %add654 = add nsw i64 %add652, %conv389
  %add656 = add nsw i64 %add654, %conv391
  %add658 = add nsw i64 %add656, %conv393
  %add660 = add nsw i64 %add658, %conv395
  %add662 = add nsw i64 %add660, %conv397
  %add664 = add nsw i64 %add662, %conv399
  %add666 = add nsw i64 %add664, %conv401
  %add668 = add nsw i64 %add666, %conv403
  %add670 = add nsw i64 %add668, %conv405
  %add672 = add nsw i64 %add670, %conv407
  %add674 = add i64 %add672, %436
  store i64 %add674, i64* %sum, align 8, !tbaa !3
  %573 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %16, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %574 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %17, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %575 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %18, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %576 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %19, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %577 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %20, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %578 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %21, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %579 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %22, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %580 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %23, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %inc684 = add nuw nsw i64 %tile_id.12257, 1
  %exitcond.not = icmp eq i64 %inc684, %sub367
  br i1 %exitcond.not, label %for.cond686.preheader, label %for.body369, !llvm.loop !40

for.end998:                                       ; preds = %for.body690.lr.ph, %for.cond686.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z27pipeline_512_8_8_stagger1x1Plii(i64* nocapture readnone %sum, i32 %prolog, i32 %tile_size) #9 {
entry:
  %0 = load <16 x i32>, <16 x i32>* bitcast ([1280000 x i32]* @B to <16 x i32>*), align 64, !tbaa !20
  %1 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 16) to <16 x i32>*), align 64, !tbaa !20
  %2 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 32) to <16 x i32>*), align 64, !tbaa !20
  %3 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 48) to <16 x i32>*), align 64, !tbaa !20
  %4 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %0, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %5 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %1, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %6 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %2, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %7 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %3, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %conv = sext i32 %tile_size to i64
  %div238 = sdiv i32 1280000, %tile_size
  %div.sext = sext i32 %div238 to i64
  %sub = add nsw i64 %div.sext, -2
  %z7.0250 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 112) to <8 x i64>*), align 64, !tbaa !20
  %z6.0251 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 96) to <8 x i64>*), align 64, !tbaa !20
  %z5.0252 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 80) to <8 x i64>*), align 64, !tbaa !20
  %z4.0253 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 64) to <8 x i64>*), align 64, !tbaa !20
  %cmp254 = icmp sgt i32 %div238, 2
  br i1 %cmp254, label %for.body, label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %entry
  %cmp101241 = icmp eq i32 %div238, 2
  br i1 %cmp101241, label %for.body102.preheader, label %for.cond126.preheader

for.body102.preheader:                            ; preds = %for.body, %for.cond97.preheader
  %.in = phi <8 x i64> [ %z7.0250, %for.cond97.preheader ], [ %z7.0, %for.body ]
  %.in330 = phi <8 x i64> [ %z6.0251, %for.cond97.preheader ], [ %z6.0, %for.body ]
  %.in331 = phi <8 x i64> [ %z5.0252, %for.cond97.preheader ], [ %z5.0, %for.body ]
  %.in332 = phi <8 x i64> [ %z4.0253, %for.cond97.preheader ], [ %z4.0, %for.body ]
  %tile_id.0.lcssa314 = phi i64 [ 0, %for.cond97.preheader ], [ %sub, %for.body ]
  %z19.0.in.lcssa313 = phi <16 x i32> [ %7, %for.cond97.preheader ], [ %48, %for.body ]
  %z18.0.in.lcssa312 = phi <16 x i32> [ %6, %for.cond97.preheader ], [ %47, %for.body ]
  %z17.0.in.lcssa311 = phi <16 x i32> [ %5, %for.cond97.preheader ], [ %46, %for.body ]
  %z16.0.in.lcssa310 = phi <16 x i32> [ %4, %for.cond97.preheader ], [ %45, %for.body ]
  %sub100315 = add nsw i64 %div.sext, -1
  %8 = bitcast <8 x i64> %.in332 to <16 x i32>
  %9 = bitcast <8 x i64> %.in331 to <16 x i32>
  %10 = bitcast <8 x i64> %.in330 to <16 x i32>
  %11 = bitcast <8 x i64> %.in to <16 x i32>
  %12 = add nsw i64 %div.sext, 1
  %13 = add nsw i64 %tile_id.0.lcssa314, 2
  %14 = sub nsw i64 %12, %13
  %15 = sub nsw i64 %div.sext, %13
  %xtraiter339 = and i64 %14, 7
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %for.body102.prol.loopexit, label %for.body102.prol

for.body102.prol:                                 ; preds = %for.body102.preheader, %for.body102.prol
  %tile_id.1242.prol = phi i64 [ %inc124.prol, %for.body102.prol ], [ %tile_id.0.lcssa314, %for.body102.preheader ]
  %prol.iter341 = phi i64 [ %prol.iter341.sub, %for.body102.prol ], [ %xtraiter339, %for.body102.preheader ]
  %mul104.prol = mul nsw i64 %tile_id.1242.prol, %conv
  %add.ptr105.prol = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.prol
  %16 = bitcast i32* %add.ptr105.prol to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %16, align 64, !tbaa !20
  %add.ptr110.prol = getelementptr inbounds i32, i32* %add.ptr105.prol, i64 16
  %17 = bitcast i32* %add.ptr110.prol to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %17, align 64, !tbaa !20
  %add.ptr114.prol = getelementptr inbounds i32, i32* %add.ptr105.prol, i64 32
  %18 = bitcast i32* %add.ptr114.prol to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %18, align 64, !tbaa !20
  %add.ptr118.prol = getelementptr inbounds i32, i32* %add.ptr105.prol, i64 48
  %19 = bitcast i32* %add.ptr118.prol to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %19, align 64, !tbaa !20
  %inc124.prol = add nuw nsw i64 %tile_id.1242.prol, 1
  %prol.iter341.sub = add i64 %prol.iter341, -1
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.sub, 0
  br i1 %prol.iter341.cmp.not, label %for.body102.prol.loopexit, label %for.body102.prol, !llvm.loop !41

for.body102.prol.loopexit:                        ; preds = %for.body102.prol, %for.body102.preheader
  %tile_id.1242.unr = phi i64 [ %tile_id.0.lcssa314, %for.body102.preheader ], [ %inc124.prol, %for.body102.prol ]
  %20 = icmp ult i64 %15, 7
  br i1 %20, label %for.cond126.preheader.thread, label %for.body102

for.body:                                         ; preds = %entry, %for.body
  %z4.0263 = phi <8 x i64> [ %z4.0, %for.body ], [ %z4.0253, %entry ]
  %z5.0262 = phi <8 x i64> [ %z5.0, %for.body ], [ %z5.0252, %entry ]
  %z6.0261 = phi <8 x i64> [ %z6.0, %for.body ], [ %z6.0251, %entry ]
  %z7.0260 = phi <8 x i64> [ %z7.0, %for.body ], [ %z7.0250, %entry ]
  %tile_id.0259 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %z19.0.in258 = phi <16 x i32> [ %48, %for.body ], [ %7, %entry ]
  %z18.0.in257 = phi <16 x i32> [ %47, %for.body ], [ %6, %entry ]
  %z17.0.in256 = phi <16 x i32> [ %46, %for.body ], [ %5, %entry ]
  %z16.0.in255 = phi <16 x i32> [ %45, %for.body ], [ %4, %entry ]
  %mul = mul nsw i64 %tile_id.0259, %conv
  %add.ptr = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul
  %21 = bitcast i32* %add.ptr to <16 x i32>*
  store <16 x i32> %z16.0.in255, <16 x i32>* %21, align 64, !tbaa !20
  %add.ptr17 = getelementptr inbounds i32, i32* %add.ptr, i64 16
  %22 = bitcast i32* %add.ptr17 to <16 x i32>*
  store <16 x i32> %z17.0.in256, <16 x i32>* %22, align 64, !tbaa !20
  %add.ptr21 = getelementptr inbounds i32, i32* %add.ptr, i64 32
  %23 = bitcast i32* %add.ptr21 to <16 x i32>*
  store <16 x i32> %z18.0.in257, <16 x i32>* %23, align 64, !tbaa !20
  %add.ptr25 = getelementptr inbounds i32, i32* %add.ptr, i64 48
  %24 = bitcast i32* %add.ptr25 to <16 x i32>*
  store <16 x i32> %z19.0.in258, <16 x i32>* %24, align 64, !tbaa !20
  %25 = bitcast <8 x i64> %z4.0263 to <16 x i32>
  %26 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %25, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %27 = bitcast <8 x i64> %z5.0262 to <16 x i32>
  %28 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %27, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %29 = bitcast <8 x i64> %z6.0261 to <16 x i32>
  %30 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %29, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %31 = bitcast <8 x i64> %z7.0260 to <16 x i32>
  %32 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %31, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add = add nuw nsw i64 %tile_id.0259, 1
  %mul31 = mul nsw i64 %add, %conv
  %add.ptr32 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %mul31
  %33 = bitcast i32* %add.ptr32 to <16 x i32>*
  %34 = load <16 x i32>, <16 x i32>* %33, align 64, !tbaa !20
  %add.ptr39 = getelementptr inbounds i32, i32* %add.ptr32, i64 16
  %35 = bitcast i32* %add.ptr39 to <16 x i32>*
  %36 = load <16 x i32>, <16 x i32>* %35, align 64, !tbaa !20
  %add.ptr45 = getelementptr inbounds i32, i32* %add.ptr32, i64 32
  %37 = bitcast i32* %add.ptr45 to <16 x i32>*
  %38 = load <16 x i32>, <16 x i32>* %37, align 64, !tbaa !20
  %add.ptr51 = getelementptr inbounds i32, i32* %add.ptr32, i64 48
  %39 = bitcast i32* %add.ptr51 to <16 x i32>*
  %40 = load <16 x i32>, <16 x i32>* %39, align 64, !tbaa !20
  %add.ptr56 = getelementptr inbounds i32, i32* %add.ptr, i64 64
  %41 = bitcast i32* %add.ptr56 to <16 x i32>*
  store <16 x i32> %26, <16 x i32>* %41, align 64, !tbaa !20
  %add.ptr60 = getelementptr inbounds i32, i32* %add.ptr, i64 80
  %42 = bitcast i32* %add.ptr60 to <16 x i32>*
  store <16 x i32> %28, <16 x i32>* %42, align 64, !tbaa !20
  %add.ptr64 = getelementptr inbounds i32, i32* %add.ptr, i64 96
  %43 = bitcast i32* %add.ptr64 to <16 x i32>*
  store <16 x i32> %30, <16 x i32>* %43, align 64, !tbaa !20
  %add.ptr68 = getelementptr inbounds i32, i32* %add.ptr, i64 112
  %44 = bitcast i32* %add.ptr68 to <16 x i32>*
  store <16 x i32> %32, <16 x i32>* %44, align 64, !tbaa !20
  %45 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %34, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %46 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %36, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %47 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %38, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %48 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %40, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr77 = getelementptr inbounds i32, i32* %add.ptr32, i64 64
  %49 = bitcast i32* %add.ptr77 to <8 x i64>*
  %add.ptr83 = getelementptr inbounds i32, i32* %add.ptr32, i64 80
  %50 = bitcast i32* %add.ptr83 to <8 x i64>*
  %add.ptr89 = getelementptr inbounds i32, i32* %add.ptr32, i64 96
  %51 = bitcast i32* %add.ptr89 to <8 x i64>*
  %add.ptr95 = getelementptr inbounds i32, i32* %add.ptr32, i64 112
  %52 = bitcast i32* %add.ptr95 to <8 x i64>*
  %z7.0 = load <8 x i64>, <8 x i64>* %52, align 64, !tbaa !20
  %z6.0 = load <8 x i64>, <8 x i64>* %51, align 64, !tbaa !20
  %z5.0 = load <8 x i64>, <8 x i64>* %50, align 64, !tbaa !20
  %z4.0 = load <8 x i64>, <8 x i64>* %49, align 64, !tbaa !20
  %exitcond294.not = icmp eq i64 %add, %sub
  br i1 %exitcond294.not, label %for.body102.preheader, label %for.body, !llvm.loop !42

for.cond126.preheader.thread:                     ; preds = %for.body102, %for.body102.prol.loopexit
  %53 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %11, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %54 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %10, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %55 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %9, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %56 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %8, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %57 = bitcast <16 x i32> %56 to <8 x i64>
  %58 = bitcast <16 x i32> %55 to <8 x i64>
  %59 = bitcast <16 x i32> %54 to <8 x i64>
  %60 = bitcast <16 x i32> %53 to <8 x i64>
  br label %for.body130.preheader

for.cond126.preheader:                            ; preds = %for.cond97.preheader
  %cmp129239 = icmp sgt i32 %div238, 0
  br i1 %cmp129239, label %for.body130.preheader, label %for.end149

for.body130.preheader:                            ; preds = %for.cond126.preheader.thread, %for.cond126.preheader
  %tile_id.1.lcssa326 = phi i64 [ %sub100315, %for.cond126.preheader.thread ], [ 0, %for.cond126.preheader ]
  %z23.1.lcssa325 = phi <8 x i64> [ %60, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %z22.1.lcssa324 = phi <8 x i64> [ %59, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %z21.1.lcssa323 = phi <8 x i64> [ %58, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %z20.1.lcssa322 = phi <8 x i64> [ %57, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %61 = sub nsw i64 %div.sext, %tile_id.1.lcssa326
  %62 = xor i64 %tile_id.1.lcssa326, -1
  %63 = add nsw i64 %62, %div.sext
  %xtraiter = and i64 %61, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body130.prol.loopexit, label %for.body130.prol

for.body130.prol:                                 ; preds = %for.body130.preheader, %for.body130.prol
  %tile_id.2240.prol = phi i64 [ %inc148.prol, %for.body130.prol ], [ %tile_id.1.lcssa326, %for.body130.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body130.prol ], [ %xtraiter, %for.body130.preheader ]
  %mul132.prol = mul nsw i64 %tile_id.2240.prol, %conv
  %add.ptr133.prol = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.prol
  %add.ptr134.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 64
  %64 = bitcast i32* %add.ptr134.prol to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %64, align 64, !tbaa !20
  %add.ptr138.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 80
  %65 = bitcast i32* %add.ptr138.prol to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %65, align 64, !tbaa !20
  %add.ptr142.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 96
  %66 = bitcast i32* %add.ptr142.prol to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %66, align 64, !tbaa !20
  %add.ptr146.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 112
  %67 = bitcast i32* %add.ptr146.prol to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %67, align 64, !tbaa !20
  %inc148.prol = add nuw nsw i64 %tile_id.2240.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body130.prol.loopexit, label %for.body130.prol, !llvm.loop !43

for.body130.prol.loopexit:                        ; preds = %for.body130.prol, %for.body130.preheader
  %tile_id.2240.unr = phi i64 [ %tile_id.1.lcssa326, %for.body130.preheader ], [ %inc148.prol, %for.body130.prol ]
  %68 = icmp ult i64 %63, 7
  br i1 %68, label %for.end149, label %for.body130

for.body102:                                      ; preds = %for.body102.prol.loopexit, %for.body102
  %tile_id.1242 = phi i64 [ %inc124.7, %for.body102 ], [ %tile_id.1242.unr, %for.body102.prol.loopexit ]
  %mul104 = mul nsw i64 %tile_id.1242, %conv
  %add.ptr105 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104
  %69 = bitcast i32* %add.ptr105 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %69, align 64, !tbaa !20
  %add.ptr110 = getelementptr inbounds i32, i32* %add.ptr105, i64 16
  %70 = bitcast i32* %add.ptr110 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %70, align 64, !tbaa !20
  %add.ptr114 = getelementptr inbounds i32, i32* %add.ptr105, i64 32
  %71 = bitcast i32* %add.ptr114 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %71, align 64, !tbaa !20
  %add.ptr118 = getelementptr inbounds i32, i32* %add.ptr105, i64 48
  %72 = bitcast i32* %add.ptr118 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %72, align 64, !tbaa !20
  %inc124 = add nuw nsw i64 %tile_id.1242, 1
  %mul104.1 = mul nsw i64 %inc124, %conv
  %add.ptr105.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.1
  %73 = bitcast i32* %add.ptr105.1 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %73, align 64, !tbaa !20
  %add.ptr110.1 = getelementptr inbounds i32, i32* %add.ptr105.1, i64 16
  %74 = bitcast i32* %add.ptr110.1 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %74, align 64, !tbaa !20
  %add.ptr114.1 = getelementptr inbounds i32, i32* %add.ptr105.1, i64 32
  %75 = bitcast i32* %add.ptr114.1 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %75, align 64, !tbaa !20
  %add.ptr118.1 = getelementptr inbounds i32, i32* %add.ptr105.1, i64 48
  %76 = bitcast i32* %add.ptr118.1 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %76, align 64, !tbaa !20
  %inc124.1 = add nuw nsw i64 %tile_id.1242, 2
  %mul104.2 = mul nsw i64 %inc124.1, %conv
  %add.ptr105.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.2
  %77 = bitcast i32* %add.ptr105.2 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %77, align 64, !tbaa !20
  %add.ptr110.2 = getelementptr inbounds i32, i32* %add.ptr105.2, i64 16
  %78 = bitcast i32* %add.ptr110.2 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %78, align 64, !tbaa !20
  %add.ptr114.2 = getelementptr inbounds i32, i32* %add.ptr105.2, i64 32
  %79 = bitcast i32* %add.ptr114.2 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %79, align 64, !tbaa !20
  %add.ptr118.2 = getelementptr inbounds i32, i32* %add.ptr105.2, i64 48
  %80 = bitcast i32* %add.ptr118.2 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %80, align 64, !tbaa !20
  %inc124.2 = add nuw nsw i64 %tile_id.1242, 3
  %mul104.3 = mul nsw i64 %inc124.2, %conv
  %add.ptr105.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.3
  %81 = bitcast i32* %add.ptr105.3 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %81, align 64, !tbaa !20
  %add.ptr110.3 = getelementptr inbounds i32, i32* %add.ptr105.3, i64 16
  %82 = bitcast i32* %add.ptr110.3 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %82, align 64, !tbaa !20
  %add.ptr114.3 = getelementptr inbounds i32, i32* %add.ptr105.3, i64 32
  %83 = bitcast i32* %add.ptr114.3 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %83, align 64, !tbaa !20
  %add.ptr118.3 = getelementptr inbounds i32, i32* %add.ptr105.3, i64 48
  %84 = bitcast i32* %add.ptr118.3 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %84, align 64, !tbaa !20
  %inc124.3 = add nuw nsw i64 %tile_id.1242, 4
  %mul104.4 = mul nsw i64 %inc124.3, %conv
  %add.ptr105.4 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.4
  %85 = bitcast i32* %add.ptr105.4 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %85, align 64, !tbaa !20
  %add.ptr110.4 = getelementptr inbounds i32, i32* %add.ptr105.4, i64 16
  %86 = bitcast i32* %add.ptr110.4 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %86, align 64, !tbaa !20
  %add.ptr114.4 = getelementptr inbounds i32, i32* %add.ptr105.4, i64 32
  %87 = bitcast i32* %add.ptr114.4 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %87, align 64, !tbaa !20
  %add.ptr118.4 = getelementptr inbounds i32, i32* %add.ptr105.4, i64 48
  %88 = bitcast i32* %add.ptr118.4 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %88, align 64, !tbaa !20
  %inc124.4 = add nuw nsw i64 %tile_id.1242, 5
  %mul104.5 = mul nsw i64 %inc124.4, %conv
  %add.ptr105.5 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.5
  %89 = bitcast i32* %add.ptr105.5 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %89, align 64, !tbaa !20
  %add.ptr110.5 = getelementptr inbounds i32, i32* %add.ptr105.5, i64 16
  %90 = bitcast i32* %add.ptr110.5 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %90, align 64, !tbaa !20
  %add.ptr114.5 = getelementptr inbounds i32, i32* %add.ptr105.5, i64 32
  %91 = bitcast i32* %add.ptr114.5 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %91, align 64, !tbaa !20
  %add.ptr118.5 = getelementptr inbounds i32, i32* %add.ptr105.5, i64 48
  %92 = bitcast i32* %add.ptr118.5 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %92, align 64, !tbaa !20
  %inc124.5 = add nuw nsw i64 %tile_id.1242, 6
  %mul104.6 = mul nsw i64 %inc124.5, %conv
  %add.ptr105.6 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.6
  %93 = bitcast i32* %add.ptr105.6 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %93, align 64, !tbaa !20
  %add.ptr110.6 = getelementptr inbounds i32, i32* %add.ptr105.6, i64 16
  %94 = bitcast i32* %add.ptr110.6 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %94, align 64, !tbaa !20
  %add.ptr114.6 = getelementptr inbounds i32, i32* %add.ptr105.6, i64 32
  %95 = bitcast i32* %add.ptr114.6 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %95, align 64, !tbaa !20
  %add.ptr118.6 = getelementptr inbounds i32, i32* %add.ptr105.6, i64 48
  %96 = bitcast i32* %add.ptr118.6 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %96, align 64, !tbaa !20
  %inc124.6 = add nuw nsw i64 %tile_id.1242, 7
  %mul104.7 = mul nsw i64 %inc124.6, %conv
  %add.ptr105.7 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.7
  %97 = bitcast i32* %add.ptr105.7 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa310, <16 x i32>* %97, align 64, !tbaa !20
  %add.ptr110.7 = getelementptr inbounds i32, i32* %add.ptr105.7, i64 16
  %98 = bitcast i32* %add.ptr110.7 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa311, <16 x i32>* %98, align 64, !tbaa !20
  %add.ptr114.7 = getelementptr inbounds i32, i32* %add.ptr105.7, i64 32
  %99 = bitcast i32* %add.ptr114.7 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa312, <16 x i32>* %99, align 64, !tbaa !20
  %add.ptr118.7 = getelementptr inbounds i32, i32* %add.ptr105.7, i64 48
  %100 = bitcast i32* %add.ptr118.7 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa313, <16 x i32>* %100, align 64, !tbaa !20
  %inc124.7 = add nuw nsw i64 %tile_id.1242, 8
  %exitcond293.not.7 = icmp eq i64 %inc124.7, %sub100315
  br i1 %exitcond293.not.7, label %for.cond126.preheader.thread, label %for.body102, !llvm.loop !44

for.body130:                                      ; preds = %for.body130.prol.loopexit, %for.body130
  %tile_id.2240 = phi i64 [ %inc148.7, %for.body130 ], [ %tile_id.2240.unr, %for.body130.prol.loopexit ]
  %mul132 = mul nsw i64 %tile_id.2240, %conv
  %add.ptr133 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132
  %add.ptr134 = getelementptr inbounds i32, i32* %add.ptr133, i64 64
  %101 = bitcast i32* %add.ptr134 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %101, align 64, !tbaa !20
  %add.ptr138 = getelementptr inbounds i32, i32* %add.ptr133, i64 80
  %102 = bitcast i32* %add.ptr138 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %102, align 64, !tbaa !20
  %add.ptr142 = getelementptr inbounds i32, i32* %add.ptr133, i64 96
  %103 = bitcast i32* %add.ptr142 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %103, align 64, !tbaa !20
  %add.ptr146 = getelementptr inbounds i32, i32* %add.ptr133, i64 112
  %104 = bitcast i32* %add.ptr146 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %104, align 64, !tbaa !20
  %inc148 = add nuw nsw i64 %tile_id.2240, 1
  %mul132.1 = mul nsw i64 %inc148, %conv
  %add.ptr133.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.1
  %add.ptr134.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 64
  %105 = bitcast i32* %add.ptr134.1 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %105, align 64, !tbaa !20
  %add.ptr138.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 80
  %106 = bitcast i32* %add.ptr138.1 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %106, align 64, !tbaa !20
  %add.ptr142.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 96
  %107 = bitcast i32* %add.ptr142.1 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %107, align 64, !tbaa !20
  %add.ptr146.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 112
  %108 = bitcast i32* %add.ptr146.1 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %108, align 64, !tbaa !20
  %inc148.1 = add nuw nsw i64 %tile_id.2240, 2
  %mul132.2 = mul nsw i64 %inc148.1, %conv
  %add.ptr133.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.2
  %add.ptr134.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 64
  %109 = bitcast i32* %add.ptr134.2 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %109, align 64, !tbaa !20
  %add.ptr138.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 80
  %110 = bitcast i32* %add.ptr138.2 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %110, align 64, !tbaa !20
  %add.ptr142.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 96
  %111 = bitcast i32* %add.ptr142.2 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %111, align 64, !tbaa !20
  %add.ptr146.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 112
  %112 = bitcast i32* %add.ptr146.2 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %112, align 64, !tbaa !20
  %inc148.2 = add nuw nsw i64 %tile_id.2240, 3
  %mul132.3 = mul nsw i64 %inc148.2, %conv
  %add.ptr133.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.3
  %add.ptr134.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 64
  %113 = bitcast i32* %add.ptr134.3 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %113, align 64, !tbaa !20
  %add.ptr138.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 80
  %114 = bitcast i32* %add.ptr138.3 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %114, align 64, !tbaa !20
  %add.ptr142.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 96
  %115 = bitcast i32* %add.ptr142.3 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %115, align 64, !tbaa !20
  %add.ptr146.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 112
  %116 = bitcast i32* %add.ptr146.3 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %116, align 64, !tbaa !20
  %inc148.3 = add nuw nsw i64 %tile_id.2240, 4
  %mul132.4 = mul nsw i64 %inc148.3, %conv
  %add.ptr133.4 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.4
  %add.ptr134.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 64
  %117 = bitcast i32* %add.ptr134.4 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %117, align 64, !tbaa !20
  %add.ptr138.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 80
  %118 = bitcast i32* %add.ptr138.4 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %118, align 64, !tbaa !20
  %add.ptr142.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 96
  %119 = bitcast i32* %add.ptr142.4 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %119, align 64, !tbaa !20
  %add.ptr146.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 112
  %120 = bitcast i32* %add.ptr146.4 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %120, align 64, !tbaa !20
  %inc148.4 = add nuw nsw i64 %tile_id.2240, 5
  %mul132.5 = mul nsw i64 %inc148.4, %conv
  %add.ptr133.5 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.5
  %add.ptr134.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 64
  %121 = bitcast i32* %add.ptr134.5 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %121, align 64, !tbaa !20
  %add.ptr138.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 80
  %122 = bitcast i32* %add.ptr138.5 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %122, align 64, !tbaa !20
  %add.ptr142.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 96
  %123 = bitcast i32* %add.ptr142.5 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %123, align 64, !tbaa !20
  %add.ptr146.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 112
  %124 = bitcast i32* %add.ptr146.5 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %124, align 64, !tbaa !20
  %inc148.5 = add nuw nsw i64 %tile_id.2240, 6
  %mul132.6 = mul nsw i64 %inc148.5, %conv
  %add.ptr133.6 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.6
  %add.ptr134.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 64
  %125 = bitcast i32* %add.ptr134.6 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %125, align 64, !tbaa !20
  %add.ptr138.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 80
  %126 = bitcast i32* %add.ptr138.6 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %126, align 64, !tbaa !20
  %add.ptr142.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 96
  %127 = bitcast i32* %add.ptr142.6 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %127, align 64, !tbaa !20
  %add.ptr146.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 112
  %128 = bitcast i32* %add.ptr146.6 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %128, align 64, !tbaa !20
  %inc148.6 = add nuw nsw i64 %tile_id.2240, 7
  %mul132.7 = mul nsw i64 %inc148.6, %conv
  %add.ptr133.7 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.7
  %add.ptr134.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 64
  %129 = bitcast i32* %add.ptr134.7 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa322, <8 x i64>* %129, align 64, !tbaa !20
  %add.ptr138.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 80
  %130 = bitcast i32* %add.ptr138.7 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa323, <8 x i64>* %130, align 64, !tbaa !20
  %add.ptr142.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 96
  %131 = bitcast i32* %add.ptr142.7 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa324, <8 x i64>* %131, align 64, !tbaa !20
  %add.ptr146.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 112
  %132 = bitcast i32* %add.ptr146.7 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa325, <8 x i64>* %132, align 64, !tbaa !20
  %inc148.7 = add nuw nsw i64 %tile_id.2240, 8
  %exitcond.not.7 = icmp eq i64 %inc148.7, %div.sext
  br i1 %exitcond.not.7, label %for.end149, label %for.body130, !llvm.loop !45

for.end149:                                       ; preds = %for.body130.prol.loopexit, %for.body130, %for.cond126.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z24pipeline_512_8_8_staggerPlii(i64* nocapture readnone %sum, i32 %prolog, i32 %tile_size) #9 {
entry:
  %0 = load <16 x i32>, <16 x i32>* bitcast ([1280000 x i32]* @B to <16 x i32>*), align 64, !tbaa !20
  %1 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 16) to <16 x i32>*), align 64, !tbaa !20
  %2 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 32) to <16 x i32>*), align 64, !tbaa !20
  %3 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 48) to <16 x i32>*), align 64, !tbaa !20
  %4 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 64) to <16 x i32>*), align 64, !tbaa !20
  %5 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %0, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %6 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 80) to <16 x i32>*), align 64, !tbaa !20
  %7 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %1, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %8 = load <16 x i32>, <16 x i32>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 96) to <16 x i32>*), align 64, !tbaa !20
  %9 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %2, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %10 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %3, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %conv = sext i32 %tile_size to i64
  %div238 = sdiv i32 1280000, %tile_size
  %div.sext = sext i32 %div238 to i64
  %sub = add nsw i64 %div.sext, -2
  %z7.0253 = load <8 x i64>, <8 x i64>* bitcast (i32* getelementptr inbounds ([1280000 x i32], [1280000 x i32]* @B, i64 0, i64 112) to <8 x i64>*), align 64, !tbaa !20
  %cmp254 = icmp sgt i32 %div238, 2
  br i1 %cmp254, label %for.body, label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %entry
  %cmp101243 = icmp eq i32 %div238, 2
  br i1 %cmp101243, label %for.body102.preheader, label %for.cond126.preheader

for.body102.preheader:                            ; preds = %for.body, %for.cond97.preheader
  %.in = phi <8 x i64> [ %z7.0253, %for.cond97.preheader ], [ %z7.0, %for.body ]
  %tile_id.0.lcssa318 = phi i64 [ 0, %for.cond97.preheader ], [ %sub, %for.body ]
  %z19.0.in.lcssa317 = phi <16 x i32> [ %10, %for.cond97.preheader ], [ %58, %for.body ]
  %z18.0.in.lcssa316 = phi <16 x i32> [ %9, %for.cond97.preheader ], [ %55, %for.body ]
  %z17.0.in.lcssa315 = phi <16 x i32> [ %7, %for.cond97.preheader ], [ %51, %for.body ]
  %z16.0.in.lcssa314 = phi <16 x i32> [ %5, %for.cond97.preheader ], [ %47, %for.body ]
  %.lcssa313 = phi <16 x i32> [ %8, %for.cond97.preheader ], [ %54, %for.body ]
  %.lcssa239312 = phi <16 x i32> [ %6, %for.cond97.preheader ], [ %50, %for.body ]
  %.lcssa240311 = phi <16 x i32> [ %4, %for.cond97.preheader ], [ %46, %for.body ]
  %sub100319 = add nsw i64 %div.sext, -1
  %11 = bitcast <8 x i64> %.in to <16 x i32>
  %12 = add nsw i64 %div.sext, 1
  %13 = add nsw i64 %tile_id.0.lcssa318, 2
  %14 = sub nsw i64 %12, %13
  %15 = sub nsw i64 %div.sext, %13
  %xtraiter358 = and i64 %14, 3
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %for.body102.prol.loopexit, label %for.body102.prol

for.body102.prol:                                 ; preds = %for.body102.preheader, %for.body102.prol
  %tile_id.1244.prol = phi i64 [ %inc124.prol, %for.body102.prol ], [ %tile_id.0.lcssa318, %for.body102.preheader ]
  %prol.iter360 = phi i64 [ %prol.iter360.sub, %for.body102.prol ], [ %xtraiter358, %for.body102.preheader ]
  %mul104.prol = mul nsw i64 %tile_id.1244.prol, %conv
  %add.ptr105.prol = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.prol
  %16 = bitcast i32* %add.ptr105.prol to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa314, <16 x i32>* %16, align 64, !tbaa !20
  %17 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %.lcssa240311, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr111.prol = getelementptr inbounds i32, i32* %add.ptr105.prol, i64 16
  %18 = bitcast i32* %add.ptr111.prol to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa315, <16 x i32>* %18, align 64, !tbaa !20
  %19 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %.lcssa239312, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr116.prol = getelementptr inbounds i32, i32* %add.ptr105.prol, i64 32
  %20 = bitcast i32* %add.ptr116.prol to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa316, <16 x i32>* %20, align 64, !tbaa !20
  %21 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %.lcssa313, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr121.prol = getelementptr inbounds i32, i32* %add.ptr105.prol, i64 48
  %22 = bitcast i32* %add.ptr121.prol to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa317, <16 x i32>* %22, align 64, !tbaa !20
  %inc124.prol = add nuw nsw i64 %tile_id.1244.prol, 1
  %prol.iter360.sub = add i64 %prol.iter360, -1
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.sub, 0
  br i1 %prol.iter360.cmp.not, label %for.body102.prol.loopexit, label %for.body102.prol, !llvm.loop !46

for.body102.prol.loopexit:                        ; preds = %for.body102.prol, %for.body102.preheader
  %.lcssa350.unr = phi <16 x i32> [ undef, %for.body102.preheader ], [ %17, %for.body102.prol ]
  %.lcssa349.unr = phi <16 x i32> [ undef, %for.body102.preheader ], [ %19, %for.body102.prol ]
  %.lcssa.unr = phi <16 x i32> [ undef, %for.body102.preheader ], [ %21, %for.body102.prol ]
  %tile_id.1244.unr = phi i64 [ %tile_id.0.lcssa318, %for.body102.preheader ], [ %inc124.prol, %for.body102.prol ]
  %23 = icmp ult i64 %15, 3
  br i1 %23, label %for.cond126.preheader.thread, label %for.body102

for.body:                                         ; preds = %entry, %for.body
  %z7.0260 = phi <8 x i64> [ %z7.0, %for.body ], [ %z7.0253, %entry ]
  %tile_id.0259 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %z19.0.in258 = phi <16 x i32> [ %58, %for.body ], [ %10, %entry ]
  %z18.0.in257 = phi <16 x i32> [ %55, %for.body ], [ %9, %entry ]
  %z17.0.in256 = phi <16 x i32> [ %51, %for.body ], [ %7, %entry ]
  %z16.0.in255 = phi <16 x i32> [ %47, %for.body ], [ %5, %entry ]
  %24 = phi <16 x i32> [ %54, %for.body ], [ %8, %entry ]
  %25 = phi <16 x i32> [ %50, %for.body ], [ %6, %entry ]
  %26 = phi <16 x i32> [ %46, %for.body ], [ %4, %entry ]
  %mul = mul nsw i64 %tile_id.0259, %conv
  %add.ptr = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul
  %27 = bitcast i32* %add.ptr to <16 x i32>*
  store <16 x i32> %z16.0.in255, <16 x i32>* %27, align 64, !tbaa !20
  %add = add nuw nsw i64 %tile_id.0259, 1
  %mul15 = mul nsw i64 %add, %conv
  %add.ptr16 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %mul15
  %28 = bitcast i32* %add.ptr16 to <16 x i32>*
  %29 = load <16 x i32>, <16 x i32>* %28, align 64, !tbaa !20
  %30 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %26, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr23 = getelementptr inbounds i32, i32* %add.ptr, i64 16
  %31 = bitcast i32* %add.ptr23 to <16 x i32>*
  store <16 x i32> %z17.0.in256, <16 x i32>* %31, align 64, !tbaa !20
  %add.ptr28 = getelementptr inbounds i32, i32* %add.ptr16, i64 16
  %32 = bitcast i32* %add.ptr28 to <16 x i32>*
  %33 = load <16 x i32>, <16 x i32>* %32, align 64, !tbaa !20
  %34 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %25, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr34 = getelementptr inbounds i32, i32* %add.ptr, i64 32
  %35 = bitcast i32* %add.ptr34 to <16 x i32>*
  store <16 x i32> %z18.0.in257, <16 x i32>* %35, align 64, !tbaa !20
  %add.ptr39 = getelementptr inbounds i32, i32* %add.ptr16, i64 32
  %36 = bitcast i32* %add.ptr39 to <16 x i32>*
  %37 = load <16 x i32>, <16 x i32>* %36, align 64, !tbaa !20
  %38 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %24, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr45 = getelementptr inbounds i32, i32* %add.ptr, i64 48
  %39 = bitcast i32* %add.ptr45 to <16 x i32>*
  store <16 x i32> %z19.0.in258, <16 x i32>* %39, align 64, !tbaa !20
  %add.ptr50 = getelementptr inbounds i32, i32* %add.ptr16, i64 48
  %40 = bitcast i32* %add.ptr50 to <16 x i32>*
  %41 = load <16 x i32>, <16 x i32>* %40, align 64, !tbaa !20
  %42 = bitcast <8 x i64> %z7.0260 to <16 x i32>
  %43 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %42, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr56 = getelementptr inbounds i32, i32* %add.ptr, i64 64
  %44 = bitcast i32* %add.ptr56 to <16 x i32>*
  store <16 x i32> %30, <16 x i32>* %44, align 64, !tbaa !20
  %add.ptr61 = getelementptr inbounds i32, i32* %add.ptr16, i64 64
  %45 = bitcast i32* %add.ptr61 to <16 x i32>*
  %46 = load <16 x i32>, <16 x i32>* %45, align 64, !tbaa !20
  %47 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %29, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr67 = getelementptr inbounds i32, i32* %add.ptr, i64 80
  %48 = bitcast i32* %add.ptr67 to <16 x i32>*
  store <16 x i32> %34, <16 x i32>* %48, align 64, !tbaa !20
  %add.ptr72 = getelementptr inbounds i32, i32* %add.ptr16, i64 80
  %49 = bitcast i32* %add.ptr72 to <16 x i32>*
  %50 = load <16 x i32>, <16 x i32>* %49, align 64, !tbaa !20
  %51 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %33, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr78 = getelementptr inbounds i32, i32* %add.ptr, i64 96
  %52 = bitcast i32* %add.ptr78 to <16 x i32>*
  store <16 x i32> %38, <16 x i32>* %52, align 64, !tbaa !20
  %add.ptr83 = getelementptr inbounds i32, i32* %add.ptr16, i64 96
  %53 = bitcast i32* %add.ptr83 to <16 x i32>*
  %54 = load <16 x i32>, <16 x i32>* %53, align 64, !tbaa !20
  %55 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %37, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr89 = getelementptr inbounds i32, i32* %add.ptr, i64 112
  %56 = bitcast i32* %add.ptr89 to <16 x i32>*
  store <16 x i32> %43, <16 x i32>* %56, align 64, !tbaa !20
  %add.ptr94 = getelementptr inbounds i32, i32* %add.ptr16, i64 112
  %57 = bitcast i32* %add.ptr94 to <8 x i64>*
  %58 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %41, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %z7.0 = load <8 x i64>, <8 x i64>* %57, align 64, !tbaa !20
  %exitcond295.not = icmp eq i64 %add, %sub
  br i1 %exitcond295.not, label %for.body102.preheader, label %for.body, !llvm.loop !47

for.cond126.preheader.thread:                     ; preds = %for.body102, %for.body102.prol.loopexit
  %.lcssa350 = phi <16 x i32> [ %.lcssa350.unr, %for.body102.prol.loopexit ], [ %85, %for.body102 ]
  %.lcssa349 = phi <16 x i32> [ %.lcssa349.unr, %for.body102.prol.loopexit ], [ %87, %for.body102 ]
  %.lcssa = phi <16 x i32> [ %.lcssa.unr, %for.body102.prol.loopexit ], [ %89, %for.body102 ]
  %59 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %11, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %60 = bitcast <16 x i32> %.lcssa350 to <8 x i64>
  %61 = bitcast <16 x i32> %.lcssa349 to <8 x i64>
  %62 = bitcast <16 x i32> %.lcssa to <8 x i64>
  %63 = bitcast <16 x i32> %59 to <8 x i64>
  br label %for.body130.preheader

for.cond126.preheader:                            ; preds = %for.cond97.preheader
  %cmp129241 = icmp sgt i32 %div238, 0
  br i1 %cmp129241, label %for.body130.preheader, label %for.end149

for.body130.preheader:                            ; preds = %for.cond126.preheader.thread, %for.cond126.preheader
  %tile_id.1.lcssa330 = phi i64 [ %sub100319, %for.cond126.preheader.thread ], [ 0, %for.cond126.preheader ]
  %z23.1.lcssa329 = phi <8 x i64> [ %63, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %z22.1.lcssa328 = phi <8 x i64> [ %62, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %z21.1.lcssa327 = phi <8 x i64> [ %61, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %z20.1.lcssa326 = phi <8 x i64> [ %60, %for.cond126.preheader.thread ], [ undef, %for.cond126.preheader ]
  %64 = sub nsw i64 %div.sext, %tile_id.1.lcssa330
  %65 = xor i64 %tile_id.1.lcssa330, -1
  %66 = add nsw i64 %65, %div.sext
  %xtraiter = and i64 %64, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body130.prol.loopexit, label %for.body130.prol

for.body130.prol:                                 ; preds = %for.body130.preheader, %for.body130.prol
  %tile_id.2242.prol = phi i64 [ %inc148.prol, %for.body130.prol ], [ %tile_id.1.lcssa330, %for.body130.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body130.prol ], [ %xtraiter, %for.body130.preheader ]
  %mul132.prol = mul nsw i64 %tile_id.2242.prol, %conv
  %add.ptr133.prol = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.prol
  %add.ptr134.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 64
  %67 = bitcast i32* %add.ptr134.prol to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %67, align 64, !tbaa !20
  %add.ptr138.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 80
  %68 = bitcast i32* %add.ptr138.prol to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %68, align 64, !tbaa !20
  %add.ptr142.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 96
  %69 = bitcast i32* %add.ptr142.prol to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %69, align 64, !tbaa !20
  %add.ptr146.prol = getelementptr inbounds i32, i32* %add.ptr133.prol, i64 112
  %70 = bitcast i32* %add.ptr146.prol to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %70, align 64, !tbaa !20
  %inc148.prol = add nuw nsw i64 %tile_id.2242.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body130.prol.loopexit, label %for.body130.prol, !llvm.loop !48

for.body130.prol.loopexit:                        ; preds = %for.body130.prol, %for.body130.preheader
  %tile_id.2242.unr = phi i64 [ %tile_id.1.lcssa330, %for.body130.preheader ], [ %inc148.prol, %for.body130.prol ]
  %71 = icmp ult i64 %66, 7
  br i1 %71, label %for.end149, label %for.body130

for.body102:                                      ; preds = %for.body102.prol.loopexit, %for.body102
  %tile_id.1244 = phi i64 [ %inc124.3, %for.body102 ], [ %tile_id.1244.unr, %for.body102.prol.loopexit ]
  %mul104 = mul nsw i64 %tile_id.1244, %conv
  %add.ptr105 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104
  %72 = bitcast i32* %add.ptr105 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa314, <16 x i32>* %72, align 64, !tbaa !20
  %add.ptr111 = getelementptr inbounds i32, i32* %add.ptr105, i64 16
  %73 = bitcast i32* %add.ptr111 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa315, <16 x i32>* %73, align 64, !tbaa !20
  %add.ptr116 = getelementptr inbounds i32, i32* %add.ptr105, i64 32
  %74 = bitcast i32* %add.ptr116 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa316, <16 x i32>* %74, align 64, !tbaa !20
  %add.ptr121 = getelementptr inbounds i32, i32* %add.ptr105, i64 48
  %75 = bitcast i32* %add.ptr121 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa317, <16 x i32>* %75, align 64, !tbaa !20
  %inc124 = add nuw nsw i64 %tile_id.1244, 1
  %mul104.1 = mul nsw i64 %inc124, %conv
  %add.ptr105.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.1
  %76 = bitcast i32* %add.ptr105.1 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa314, <16 x i32>* %76, align 64, !tbaa !20
  %add.ptr111.1 = getelementptr inbounds i32, i32* %add.ptr105.1, i64 16
  %77 = bitcast i32* %add.ptr111.1 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa315, <16 x i32>* %77, align 64, !tbaa !20
  %add.ptr116.1 = getelementptr inbounds i32, i32* %add.ptr105.1, i64 32
  %78 = bitcast i32* %add.ptr116.1 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa316, <16 x i32>* %78, align 64, !tbaa !20
  %add.ptr121.1 = getelementptr inbounds i32, i32* %add.ptr105.1, i64 48
  %79 = bitcast i32* %add.ptr121.1 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa317, <16 x i32>* %79, align 64, !tbaa !20
  %inc124.1 = add nuw nsw i64 %tile_id.1244, 2
  %mul104.2 = mul nsw i64 %inc124.1, %conv
  %add.ptr105.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.2
  %80 = bitcast i32* %add.ptr105.2 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa314, <16 x i32>* %80, align 64, !tbaa !20
  %add.ptr111.2 = getelementptr inbounds i32, i32* %add.ptr105.2, i64 16
  %81 = bitcast i32* %add.ptr111.2 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa315, <16 x i32>* %81, align 64, !tbaa !20
  %add.ptr116.2 = getelementptr inbounds i32, i32* %add.ptr105.2, i64 32
  %82 = bitcast i32* %add.ptr116.2 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa316, <16 x i32>* %82, align 64, !tbaa !20
  %add.ptr121.2 = getelementptr inbounds i32, i32* %add.ptr105.2, i64 48
  %83 = bitcast i32* %add.ptr121.2 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa317, <16 x i32>* %83, align 64, !tbaa !20
  %inc124.2 = add nuw nsw i64 %tile_id.1244, 3
  %mul104.3 = mul nsw i64 %inc124.2, %conv
  %add.ptr105.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul104.3
  %84 = bitcast i32* %add.ptr105.3 to <16 x i32>*
  store <16 x i32> %z16.0.in.lcssa314, <16 x i32>* %84, align 64, !tbaa !20
  %85 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %.lcssa240311, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr111.3 = getelementptr inbounds i32, i32* %add.ptr105.3, i64 16
  %86 = bitcast i32* %add.ptr111.3 to <16 x i32>*
  store <16 x i32> %z17.0.in.lcssa315, <16 x i32>* %86, align 64, !tbaa !20
  %87 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %.lcssa239312, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr116.3 = getelementptr inbounds i32, i32* %add.ptr105.3, i64 32
  %88 = bitcast i32* %add.ptr116.3 to <16 x i32>*
  store <16 x i32> %z18.0.in.lcssa316, <16 x i32>* %88, align 64, !tbaa !20
  %89 = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, i8* bitcast ([1280000 x i32]* @A to i8*), <16 x i32> %.lcssa313, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, i32 4)
  %add.ptr121.3 = getelementptr inbounds i32, i32* %add.ptr105.3, i64 48
  %90 = bitcast i32* %add.ptr121.3 to <16 x i32>*
  store <16 x i32> %z19.0.in.lcssa317, <16 x i32>* %90, align 64, !tbaa !20
  %inc124.3 = add nuw nsw i64 %tile_id.1244, 4
  %exitcond294.not.3 = icmp eq i64 %inc124.3, %sub100319
  br i1 %exitcond294.not.3, label %for.cond126.preheader.thread, label %for.body102, !llvm.loop !49

for.body130:                                      ; preds = %for.body130.prol.loopexit, %for.body130
  %tile_id.2242 = phi i64 [ %inc148.7, %for.body130 ], [ %tile_id.2242.unr, %for.body130.prol.loopexit ]
  %mul132 = mul nsw i64 %tile_id.2242, %conv
  %add.ptr133 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132
  %add.ptr134 = getelementptr inbounds i32, i32* %add.ptr133, i64 64
  %91 = bitcast i32* %add.ptr134 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %91, align 64, !tbaa !20
  %add.ptr138 = getelementptr inbounds i32, i32* %add.ptr133, i64 80
  %92 = bitcast i32* %add.ptr138 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %92, align 64, !tbaa !20
  %add.ptr142 = getelementptr inbounds i32, i32* %add.ptr133, i64 96
  %93 = bitcast i32* %add.ptr142 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %93, align 64, !tbaa !20
  %add.ptr146 = getelementptr inbounds i32, i32* %add.ptr133, i64 112
  %94 = bitcast i32* %add.ptr146 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %94, align 64, !tbaa !20
  %inc148 = add nuw nsw i64 %tile_id.2242, 1
  %mul132.1 = mul nsw i64 %inc148, %conv
  %add.ptr133.1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.1
  %add.ptr134.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 64
  %95 = bitcast i32* %add.ptr134.1 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %95, align 64, !tbaa !20
  %add.ptr138.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 80
  %96 = bitcast i32* %add.ptr138.1 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %96, align 64, !tbaa !20
  %add.ptr142.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 96
  %97 = bitcast i32* %add.ptr142.1 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %97, align 64, !tbaa !20
  %add.ptr146.1 = getelementptr inbounds i32, i32* %add.ptr133.1, i64 112
  %98 = bitcast i32* %add.ptr146.1 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %98, align 64, !tbaa !20
  %inc148.1 = add nuw nsw i64 %tile_id.2242, 2
  %mul132.2 = mul nsw i64 %inc148.1, %conv
  %add.ptr133.2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.2
  %add.ptr134.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 64
  %99 = bitcast i32* %add.ptr134.2 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %99, align 64, !tbaa !20
  %add.ptr138.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 80
  %100 = bitcast i32* %add.ptr138.2 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %100, align 64, !tbaa !20
  %add.ptr142.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 96
  %101 = bitcast i32* %add.ptr142.2 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %101, align 64, !tbaa !20
  %add.ptr146.2 = getelementptr inbounds i32, i32* %add.ptr133.2, i64 112
  %102 = bitcast i32* %add.ptr146.2 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %102, align 64, !tbaa !20
  %inc148.2 = add nuw nsw i64 %tile_id.2242, 3
  %mul132.3 = mul nsw i64 %inc148.2, %conv
  %add.ptr133.3 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.3
  %add.ptr134.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 64
  %103 = bitcast i32* %add.ptr134.3 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %103, align 64, !tbaa !20
  %add.ptr138.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 80
  %104 = bitcast i32* %add.ptr138.3 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %104, align 64, !tbaa !20
  %add.ptr142.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 96
  %105 = bitcast i32* %add.ptr142.3 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %105, align 64, !tbaa !20
  %add.ptr146.3 = getelementptr inbounds i32, i32* %add.ptr133.3, i64 112
  %106 = bitcast i32* %add.ptr146.3 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %106, align 64, !tbaa !20
  %inc148.3 = add nuw nsw i64 %tile_id.2242, 4
  %mul132.4 = mul nsw i64 %inc148.3, %conv
  %add.ptr133.4 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.4
  %add.ptr134.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 64
  %107 = bitcast i32* %add.ptr134.4 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %107, align 64, !tbaa !20
  %add.ptr138.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 80
  %108 = bitcast i32* %add.ptr138.4 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %108, align 64, !tbaa !20
  %add.ptr142.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 96
  %109 = bitcast i32* %add.ptr142.4 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %109, align 64, !tbaa !20
  %add.ptr146.4 = getelementptr inbounds i32, i32* %add.ptr133.4, i64 112
  %110 = bitcast i32* %add.ptr146.4 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %110, align 64, !tbaa !20
  %inc148.4 = add nuw nsw i64 %tile_id.2242, 5
  %mul132.5 = mul nsw i64 %inc148.4, %conv
  %add.ptr133.5 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.5
  %add.ptr134.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 64
  %111 = bitcast i32* %add.ptr134.5 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %111, align 64, !tbaa !20
  %add.ptr138.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 80
  %112 = bitcast i32* %add.ptr138.5 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %112, align 64, !tbaa !20
  %add.ptr142.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 96
  %113 = bitcast i32* %add.ptr142.5 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %113, align 64, !tbaa !20
  %add.ptr146.5 = getelementptr inbounds i32, i32* %add.ptr133.5, i64 112
  %114 = bitcast i32* %add.ptr146.5 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %114, align 64, !tbaa !20
  %inc148.5 = add nuw nsw i64 %tile_id.2242, 6
  %mul132.6 = mul nsw i64 %inc148.5, %conv
  %add.ptr133.6 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.6
  %add.ptr134.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 64
  %115 = bitcast i32* %add.ptr134.6 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %115, align 64, !tbaa !20
  %add.ptr138.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 80
  %116 = bitcast i32* %add.ptr138.6 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %116, align 64, !tbaa !20
  %add.ptr142.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 96
  %117 = bitcast i32* %add.ptr142.6 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %117, align 64, !tbaa !20
  %add.ptr146.6 = getelementptr inbounds i32, i32* %add.ptr133.6, i64 112
  %118 = bitcast i32* %add.ptr146.6 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %118, align 64, !tbaa !20
  %inc148.6 = add nuw nsw i64 %tile_id.2242, 7
  %mul132.7 = mul nsw i64 %inc148.6, %conv
  %add.ptr133.7 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %mul132.7
  %add.ptr134.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 64
  %119 = bitcast i32* %add.ptr134.7 to <8 x i64>*
  store <8 x i64> %z20.1.lcssa326, <8 x i64>* %119, align 64, !tbaa !20
  %add.ptr138.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 80
  %120 = bitcast i32* %add.ptr138.7 to <8 x i64>*
  store <8 x i64> %z21.1.lcssa327, <8 x i64>* %120, align 64, !tbaa !20
  %add.ptr142.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 96
  %121 = bitcast i32* %add.ptr142.7 to <8 x i64>*
  store <8 x i64> %z22.1.lcssa328, <8 x i64>* %121, align 64, !tbaa !20
  %add.ptr146.7 = getelementptr inbounds i32, i32* %add.ptr133.7, i64 112
  %122 = bitcast i32* %add.ptr146.7 to <8 x i64>*
  store <8 x i64> %z23.1.lcssa329, <8 x i64>* %122, align 64, !tbaa !20
  %inc148.7 = add nuw nsw i64 %tile_id.2242, 8
  %exitcond.not.7 = icmp eq i64 %inc148.7, %div.sext
  br i1 %exitcond.not.7, label %for.end149, label %for.body130, !llvm.loop !50

for.end149:                                       ; preds = %for.body130.prol.loopexit, %for.body130, %for.cond126.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z15pipeline_scalarPl(i64* nocapture %sum) local_unnamed_addr #8 {
entry:
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %0 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %sum.promoted, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ %0, %entry ], [ %45, %vector.body ]
  %vec.phi10 = phi <4 x i64> [ zeroinitializer, %entry ], [ %46, %vector.body ]
  %vec.phi11 = phi <4 x i64> [ zeroinitializer, %entry ], [ %47, %vector.body ]
  %vec.phi12 = phi <4 x i64> [ zeroinitializer, %entry ], [ %48, %vector.body ]
  %1 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %index
  %2 = bitcast i32* %1 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %2, align 64, !tbaa !15
  %3 = getelementptr inbounds i32, i32* %1, i64 4
  %4 = bitcast i32* %3 to <4 x i32>*
  %wide.load13 = load <4 x i32>, <4 x i32>* %4, align 16, !tbaa !15
  %5 = getelementptr inbounds i32, i32* %1, i64 8
  %6 = bitcast i32* %5 to <4 x i32>*
  %wide.load14 = load <4 x i32>, <4 x i32>* %6, align 32, !tbaa !15
  %7 = getelementptr inbounds i32, i32* %1, i64 12
  %8 = bitcast i32* %7 to <4 x i32>*
  %wide.load15 = load <4 x i32>, <4 x i32>* %8, align 16, !tbaa !15
  %9 = sext <4 x i32> %wide.load to <4 x i64>
  %10 = sext <4 x i32> %wide.load13 to <4 x i64>
  %11 = sext <4 x i32> %wide.load14 to <4 x i64>
  %12 = sext <4 x i32> %wide.load15 to <4 x i64>
  %13 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %9
  %14 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %10
  %15 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %11
  %16 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %12
  %wide.masked.gather = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %13, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather16 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %14, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather17 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %15, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather18 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %16, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %17 = sext <4 x i32> %wide.masked.gather to <4 x i64>
  %18 = sext <4 x i32> %wide.masked.gather16 to <4 x i64>
  %19 = sext <4 x i32> %wide.masked.gather17 to <4 x i64>
  %20 = sext <4 x i32> %wide.masked.gather18 to <4 x i64>
  %21 = add <4 x i64> %vec.phi, %17
  %22 = add <4 x i64> %vec.phi10, %18
  %23 = add <4 x i64> %vec.phi11, %19
  %24 = add <4 x i64> %vec.phi12, %20
  %index.next = or i64 %index, 16
  %25 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %index.next
  %26 = bitcast i32* %25 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %26, align 64, !tbaa !15
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  %wide.load13.1 = load <4 x i32>, <4 x i32>* %28, align 16, !tbaa !15
  %29 = getelementptr inbounds i32, i32* %25, i64 8
  %30 = bitcast i32* %29 to <4 x i32>*
  %wide.load14.1 = load <4 x i32>, <4 x i32>* %30, align 32, !tbaa !15
  %31 = getelementptr inbounds i32, i32* %25, i64 12
  %32 = bitcast i32* %31 to <4 x i32>*
  %wide.load15.1 = load <4 x i32>, <4 x i32>* %32, align 16, !tbaa !15
  %33 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %34 = sext <4 x i32> %wide.load13.1 to <4 x i64>
  %35 = sext <4 x i32> %wide.load14.1 to <4 x i64>
  %36 = sext <4 x i32> %wide.load15.1 to <4 x i64>
  %37 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %33
  %38 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %34
  %39 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %35
  %40 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, <4 x i64> %36
  %wide.masked.gather.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %37, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather16.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %38, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather17.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %39, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %wide.masked.gather18.1 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> %40, i32 4, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i32> undef), !tbaa !15
  %41 = sext <4 x i32> %wide.masked.gather.1 to <4 x i64>
  %42 = sext <4 x i32> %wide.masked.gather16.1 to <4 x i64>
  %43 = sext <4 x i32> %wide.masked.gather17.1 to <4 x i64>
  %44 = sext <4 x i32> %wide.masked.gather18.1 to <4 x i64>
  %45 = add <4 x i64> %21, %41
  %46 = add <4 x i64> %22, %42
  %47 = add <4 x i64> %23, %43
  %48 = add <4 x i64> %24, %44
  %index.next.1 = add nuw nsw i64 %index, 32
  %49 = icmp eq i64 %index.next.1, 1280000
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %46, %45
  %bin.rdx19 = add <4 x i64> %47, %bin.rdx
  %bin.rdx20 = add <4 x i64> %48, %bin.rdx19
  %50 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx20)
  store i64 %50, i64* %sum, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9startTestPFvPlE(void (i64*)* nocapture %foo) local_unnamed_addr #3 {
entry:
  %sum = alloca i64, align 8
  %0 = bitcast i64* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %sum, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 64 dereferenceable(5120000) bitcast ([1280000 x i32]* @C to i8*), i8 0, i64 5120000, i1 false)
  %call = tail call i64 @_Z10clearCachev()
  call void %foo(i64* nonnull %sum)
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %1 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %sum.promoted, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ %1, %entry ], [ %30, %vector.body ]
  %vec.phi59 = phi <4 x i64> [ zeroinitializer, %entry ], [ %31, %vector.body ]
  %vec.phi60 = phi <4 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index
  %3 = bitcast i32* %2 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %3, align 64, !tbaa !15
  %4 = getelementptr inbounds i32, i32* %2, i64 4
  %5 = bitcast i32* %4 to <4 x i32>*
  %wide.load62 = load <4 x i32>, <4 x i32>* %5, align 16, !tbaa !15
  %6 = getelementptr inbounds i32, i32* %2, i64 8
  %7 = bitcast i32* %6 to <4 x i32>*
  %wide.load63 = load <4 x i32>, <4 x i32>* %7, align 32, !tbaa !15
  %8 = getelementptr inbounds i32, i32* %2, i64 12
  %9 = bitcast i32* %8 to <4 x i32>*
  %wide.load64 = load <4 x i32>, <4 x i32>* %9, align 16, !tbaa !15
  %10 = sext <4 x i32> %wide.load to <4 x i64>
  %11 = sext <4 x i32> %wide.load62 to <4 x i64>
  %12 = sext <4 x i32> %wide.load63 to <4 x i64>
  %13 = sext <4 x i32> %wide.load64 to <4 x i64>
  %14 = add <4 x i64> %vec.phi, %10
  %15 = add <4 x i64> %vec.phi59, %11
  %16 = add <4 x i64> %vec.phi60, %12
  %17 = add <4 x i64> %vec.phi61, %13
  %index.next = or i64 %index, 16
  %18 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index.next
  %19 = bitcast i32* %18 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %19, align 64, !tbaa !15
  %20 = getelementptr inbounds i32, i32* %18, i64 4
  %21 = bitcast i32* %20 to <4 x i32>*
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %21, align 16, !tbaa !15
  %22 = getelementptr inbounds i32, i32* %18, i64 8
  %23 = bitcast i32* %22 to <4 x i32>*
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %23, align 32, !tbaa !15
  %24 = getelementptr inbounds i32, i32* %18, i64 12
  %25 = bitcast i32* %24 to <4 x i32>*
  %wide.load64.1 = load <4 x i32>, <4 x i32>* %25, align 16, !tbaa !15
  %26 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %27 = sext <4 x i32> %wide.load62.1 to <4 x i64>
  %28 = sext <4 x i32> %wide.load63.1 to <4 x i64>
  %29 = sext <4 x i32> %wide.load64.1 to <4 x i64>
  %30 = add <4 x i64> %14, %26
  %31 = add <4 x i64> %15, %27
  %32 = add <4 x i64> %16, %28
  %33 = add <4 x i64> %17, %29
  %index.next.1 = add nuw nsw i64 %index, 32
  %34 = icmp eq i64 %index.next.1, 1280000
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %31, %30
  %bin.rdx65 = add <4 x i64> %32, %bin.rdx
  %bin.rdx66 = add <4 x i64> %33, %bin.rdx65
  %35 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx66)
  store i64 %35, i64* %sum, align 8, !tbaa !3
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6)
  %36 = load i64, i64* %sum, align 8, !tbaa !3
  %call.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %36)
  %37 = bitcast %"class.std::basic_ostream"* %call.i to i8**
  %vtable.i = load i8*, i8** %37, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::basic_ostream"* %call.i to i8*
  %_M_ctype.i.idx.i = add nsw i64 %vbase.offset.i, 240
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %39, i64 %_M_ctype.i.idx.i
  %40 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %41 = load %"class.std::ctype"*, %"class.std::ctype"** %40, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq %"class.std::ctype"* %41, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %middle.block
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %middle.block
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 8
  %42 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i3.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 9, i64 10
  %43 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41)
  %44 = bitcast %"class.std::ctype"* %41 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %43, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8 signext %retval.0.i.i.i)
  %call.i.i28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i27)
  %call1.i30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %call.i31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %call)
  %46 = bitcast %"class.std::basic_ostream"* %call.i31 to i8**
  %vtable.i33 = load i8*, i8** %46, align 8, !tbaa !22
  %vbase.offset.ptr.i34 = getelementptr i8, i8* %vtable.i33, i64 -24
  %47 = bitcast i8* %vbase.offset.ptr.i34 to i64*
  %vbase.offset.i35 = load i64, i64* %47, align 8
  %48 = bitcast %"class.std::basic_ostream"* %call.i31 to i8*
  %_M_ctype.i.idx.i36 = add nsw i64 %vbase.offset.i35, 240
  %_M_ctype.i.i37 = getelementptr inbounds i8, i8* %48, i64 %_M_ctype.i.idx.i36
  %49 = bitcast i8* %_M_ctype.i.i37 to %"class.std::ctype"**
  %50 = load %"class.std::ctype"*, %"class.std::ctype"** %49, align 8, !tbaa !24
  %tobool.not.i.i.i38 = icmp eq %"class.std::ctype"* %50, null
  br i1 %tobool.not.i.i.i38, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

if.then.i.i.i39:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i40 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 8
  %51 = load i8, i8* %_M_widen_ok.i.i.i40, align 8, !tbaa !28
  %tobool.not.i3.i.i41 = icmp eq i8 %51, 0
  br i1 %tobool.not.i3.i.i41, label %if.end.i.i.i48, label %if.then.i4.i.i44

if.then.i4.i.i44:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %arrayidx.i.i.i43 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 9, i64 10
  %52 = load i8, i8* %arrayidx.i.i.i43, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

if.end.i.i.i48:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50)
  %53 = bitcast %"class.std::ctype"* %50 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i45 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %53, align 8, !tbaa !22
  %vfn.i.i.i46 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i45, i64 6
  %54 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i46, align 8
  %call.i.i.i47 = call signext i8 %54(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52: ; preds = %if.then.i4.i.i44, %if.end.i.i.i48
  %retval.0.i.i.i49 = phi i8 [ %52, %if.then.i4.i.i44 ], [ %call.i.i.i47, %if.end.i.i.i48 ]
  %call1.i50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i31, i8 signext %retval.0.i.i.i49)
  %call.i.i51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i50)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13startTest_a_bPFvPliEi(void (i64*, i32)* nocapture %foo, i32 %pf_dis) local_unnamed_addr #3 {
entry:
  %sum = alloca i64, align 8
  %0 = bitcast i64* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %sum, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 64 dereferenceable(5120000) bitcast ([1280000 x i32]* @C to i8*), i8 0, i64 5120000, i1 false)
  %call = tail call i64 @_Z10clearCachev()
  tail call void @m5_dump_stats(i64 0, i64 0)
  call void %foo(i64* nonnull %sum, i32 %pf_dis)
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %1 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %sum.promoted, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ %1, %entry ], [ %30, %vector.body ]
  %vec.phi59 = phi <4 x i64> [ zeroinitializer, %entry ], [ %31, %vector.body ]
  %vec.phi60 = phi <4 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index
  %3 = bitcast i32* %2 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %3, align 64, !tbaa !15
  %4 = getelementptr inbounds i32, i32* %2, i64 4
  %5 = bitcast i32* %4 to <4 x i32>*
  %wide.load62 = load <4 x i32>, <4 x i32>* %5, align 16, !tbaa !15
  %6 = getelementptr inbounds i32, i32* %2, i64 8
  %7 = bitcast i32* %6 to <4 x i32>*
  %wide.load63 = load <4 x i32>, <4 x i32>* %7, align 32, !tbaa !15
  %8 = getelementptr inbounds i32, i32* %2, i64 12
  %9 = bitcast i32* %8 to <4 x i32>*
  %wide.load64 = load <4 x i32>, <4 x i32>* %9, align 16, !tbaa !15
  %10 = sext <4 x i32> %wide.load to <4 x i64>
  %11 = sext <4 x i32> %wide.load62 to <4 x i64>
  %12 = sext <4 x i32> %wide.load63 to <4 x i64>
  %13 = sext <4 x i32> %wide.load64 to <4 x i64>
  %14 = add <4 x i64> %vec.phi, %10
  %15 = add <4 x i64> %vec.phi59, %11
  %16 = add <4 x i64> %vec.phi60, %12
  %17 = add <4 x i64> %vec.phi61, %13
  %index.next = or i64 %index, 16
  %18 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index.next
  %19 = bitcast i32* %18 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %19, align 64, !tbaa !15
  %20 = getelementptr inbounds i32, i32* %18, i64 4
  %21 = bitcast i32* %20 to <4 x i32>*
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %21, align 16, !tbaa !15
  %22 = getelementptr inbounds i32, i32* %18, i64 8
  %23 = bitcast i32* %22 to <4 x i32>*
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %23, align 32, !tbaa !15
  %24 = getelementptr inbounds i32, i32* %18, i64 12
  %25 = bitcast i32* %24 to <4 x i32>*
  %wide.load64.1 = load <4 x i32>, <4 x i32>* %25, align 16, !tbaa !15
  %26 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %27 = sext <4 x i32> %wide.load62.1 to <4 x i64>
  %28 = sext <4 x i32> %wide.load63.1 to <4 x i64>
  %29 = sext <4 x i32> %wide.load64.1 to <4 x i64>
  %30 = add <4 x i64> %14, %26
  %31 = add <4 x i64> %15, %27
  %32 = add <4 x i64> %16, %28
  %33 = add <4 x i64> %17, %29
  %index.next.1 = add nuw nsw i64 %index, 32
  %34 = icmp eq i64 %index.next.1, 1280000
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %31, %30
  %bin.rdx65 = add <4 x i64> %32, %bin.rdx
  %bin.rdx66 = add <4 x i64> %33, %bin.rdx65
  %35 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx66)
  store i64 %35, i64* %sum, align 8, !tbaa !3
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6)
  %36 = load i64, i64* %sum, align 8, !tbaa !3
  %call.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %36)
  %37 = bitcast %"class.std::basic_ostream"* %call.i to i8**
  %vtable.i = load i8*, i8** %37, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::basic_ostream"* %call.i to i8*
  %_M_ctype.i.idx.i = add nsw i64 %vbase.offset.i, 240
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %39, i64 %_M_ctype.i.idx.i
  %40 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %41 = load %"class.std::ctype"*, %"class.std::ctype"** %40, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq %"class.std::ctype"* %41, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %middle.block
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %middle.block
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 8
  %42 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i3.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 9, i64 10
  %43 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41)
  %44 = bitcast %"class.std::ctype"* %41 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %43, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8 signext %retval.0.i.i.i)
  %call.i.i28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i27)
  %call1.i30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %call.i31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %call)
  %46 = bitcast %"class.std::basic_ostream"* %call.i31 to i8**
  %vtable.i33 = load i8*, i8** %46, align 8, !tbaa !22
  %vbase.offset.ptr.i34 = getelementptr i8, i8* %vtable.i33, i64 -24
  %47 = bitcast i8* %vbase.offset.ptr.i34 to i64*
  %vbase.offset.i35 = load i64, i64* %47, align 8
  %48 = bitcast %"class.std::basic_ostream"* %call.i31 to i8*
  %_M_ctype.i.idx.i36 = add nsw i64 %vbase.offset.i35, 240
  %_M_ctype.i.i37 = getelementptr inbounds i8, i8* %48, i64 %_M_ctype.i.idx.i36
  %49 = bitcast i8* %_M_ctype.i.i37 to %"class.std::ctype"**
  %50 = load %"class.std::ctype"*, %"class.std::ctype"** %49, align 8, !tbaa !24
  %tobool.not.i.i.i38 = icmp eq %"class.std::ctype"* %50, null
  br i1 %tobool.not.i.i.i38, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

if.then.i.i.i39:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i40 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 8
  %51 = load i8, i8* %_M_widen_ok.i.i.i40, align 8, !tbaa !28
  %tobool.not.i3.i.i41 = icmp eq i8 %51, 0
  br i1 %tobool.not.i3.i.i41, label %if.end.i.i.i48, label %if.then.i4.i.i44

if.then.i4.i.i44:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %arrayidx.i.i.i43 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 9, i64 10
  %52 = load i8, i8* %arrayidx.i.i.i43, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

if.end.i.i.i48:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50)
  %53 = bitcast %"class.std::ctype"* %50 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i45 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %53, align 8, !tbaa !22
  %vfn.i.i.i46 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i45, i64 6
  %54 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i46, align 8
  %call.i.i.i47 = call signext i8 %54(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52: ; preds = %if.then.i4.i.i44, %if.end.i.i.i48
  %retval.0.i.i.i49 = phi i8 [ %52, %if.then.i4.i.i44 ], [ %call.i.i.i47, %if.end.i.i.i48 ]
  %call1.i50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i31, i8 signext %retval.0.i.i.i49)
  %call.i.i51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i50)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15startTest_l_i_iPFvPliiEii(void (i64*, i32, i32)* nocapture %foo, i32 %x, i32 %y) local_unnamed_addr #3 {
entry:
  %sum = alloca i64, align 8
  %0 = bitcast i64* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %sum, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 64 dereferenceable(5120000) bitcast ([1280000 x i32]* @C to i8*), i8 0, i64 5120000, i1 false)
  %call = tail call i64 @_Z10clearCachev()
  call void %foo(i64* nonnull %sum, i32 %x, i32 %y)
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %1 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %sum.promoted, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ %1, %entry ], [ %30, %vector.body ]
  %vec.phi59 = phi <4 x i64> [ zeroinitializer, %entry ], [ %31, %vector.body ]
  %vec.phi60 = phi <4 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index
  %3 = bitcast i32* %2 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %3, align 64, !tbaa !15
  %4 = getelementptr inbounds i32, i32* %2, i64 4
  %5 = bitcast i32* %4 to <4 x i32>*
  %wide.load62 = load <4 x i32>, <4 x i32>* %5, align 16, !tbaa !15
  %6 = getelementptr inbounds i32, i32* %2, i64 8
  %7 = bitcast i32* %6 to <4 x i32>*
  %wide.load63 = load <4 x i32>, <4 x i32>* %7, align 32, !tbaa !15
  %8 = getelementptr inbounds i32, i32* %2, i64 12
  %9 = bitcast i32* %8 to <4 x i32>*
  %wide.load64 = load <4 x i32>, <4 x i32>* %9, align 16, !tbaa !15
  %10 = sext <4 x i32> %wide.load to <4 x i64>
  %11 = sext <4 x i32> %wide.load62 to <4 x i64>
  %12 = sext <4 x i32> %wide.load63 to <4 x i64>
  %13 = sext <4 x i32> %wide.load64 to <4 x i64>
  %14 = add <4 x i64> %vec.phi, %10
  %15 = add <4 x i64> %vec.phi59, %11
  %16 = add <4 x i64> %vec.phi60, %12
  %17 = add <4 x i64> %vec.phi61, %13
  %index.next = or i64 %index, 16
  %18 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index.next
  %19 = bitcast i32* %18 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %19, align 64, !tbaa !15
  %20 = getelementptr inbounds i32, i32* %18, i64 4
  %21 = bitcast i32* %20 to <4 x i32>*
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %21, align 16, !tbaa !15
  %22 = getelementptr inbounds i32, i32* %18, i64 8
  %23 = bitcast i32* %22 to <4 x i32>*
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %23, align 32, !tbaa !15
  %24 = getelementptr inbounds i32, i32* %18, i64 12
  %25 = bitcast i32* %24 to <4 x i32>*
  %wide.load64.1 = load <4 x i32>, <4 x i32>* %25, align 16, !tbaa !15
  %26 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %27 = sext <4 x i32> %wide.load62.1 to <4 x i64>
  %28 = sext <4 x i32> %wide.load63.1 to <4 x i64>
  %29 = sext <4 x i32> %wide.load64.1 to <4 x i64>
  %30 = add <4 x i64> %14, %26
  %31 = add <4 x i64> %15, %27
  %32 = add <4 x i64> %16, %28
  %33 = add <4 x i64> %17, %29
  %index.next.1 = add nuw nsw i64 %index, 32
  %34 = icmp eq i64 %index.next.1, 1280000
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %31, %30
  %bin.rdx65 = add <4 x i64> %32, %bin.rdx
  %bin.rdx66 = add <4 x i64> %33, %bin.rdx65
  %35 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx66)
  store i64 %35, i64* %sum, align 8, !tbaa !3
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6)
  %36 = load i64, i64* %sum, align 8, !tbaa !3
  %call.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %36)
  %37 = bitcast %"class.std::basic_ostream"* %call.i to i8**
  %vtable.i = load i8*, i8** %37, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::basic_ostream"* %call.i to i8*
  %_M_ctype.i.idx.i = add nsw i64 %vbase.offset.i, 240
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %39, i64 %_M_ctype.i.idx.i
  %40 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %41 = load %"class.std::ctype"*, %"class.std::ctype"** %40, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq %"class.std::ctype"* %41, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %middle.block
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %middle.block
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 8
  %42 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i3.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 9, i64 10
  %43 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41)
  %44 = bitcast %"class.std::ctype"* %41 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %43, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8 signext %retval.0.i.i.i)
  %call.i.i28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i27)
  %call1.i30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %call.i31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %call)
  %46 = bitcast %"class.std::basic_ostream"* %call.i31 to i8**
  %vtable.i33 = load i8*, i8** %46, align 8, !tbaa !22
  %vbase.offset.ptr.i34 = getelementptr i8, i8* %vtable.i33, i64 -24
  %47 = bitcast i8* %vbase.offset.ptr.i34 to i64*
  %vbase.offset.i35 = load i64, i64* %47, align 8
  %48 = bitcast %"class.std::basic_ostream"* %call.i31 to i8*
  %_M_ctype.i.idx.i36 = add nsw i64 %vbase.offset.i35, 240
  %_M_ctype.i.i37 = getelementptr inbounds i8, i8* %48, i64 %_M_ctype.i.idx.i36
  %49 = bitcast i8* %_M_ctype.i.i37 to %"class.std::ctype"**
  %50 = load %"class.std::ctype"*, %"class.std::ctype"** %49, align 8, !tbaa !24
  %tobool.not.i.i.i38 = icmp eq %"class.std::ctype"* %50, null
  br i1 %tobool.not.i.i.i38, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

if.then.i.i.i39:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i40 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 8
  %51 = load i8, i8* %_M_widen_ok.i.i.i40, align 8, !tbaa !28
  %tobool.not.i3.i.i41 = icmp eq i8 %51, 0
  br i1 %tobool.not.i3.i.i41, label %if.end.i.i.i48, label %if.then.i4.i.i44

if.then.i4.i.i44:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %arrayidx.i.i.i43 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 9, i64 10
  %52 = load i8, i8* %arrayidx.i.i.i43, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

if.end.i.i.i48:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50)
  %53 = bitcast %"class.std::ctype"* %50 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i45 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %53, align 8, !tbaa !22
  %vfn.i.i.i46 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i45, i64 6
  %54 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i46, align 8
  %call.i.i.i47 = call signext i8 %54(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52: ; preds = %if.then.i4.i.i44, %if.end.i.i.i48
  %retval.0.i.i.i49 = phi i8 [ %52, %if.then.i4.i.i44 ], [ %call.i.i.i47, %if.end.i.i.i48 ]
  %call1.i50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i31, i8 signext %retval.0.i.i.i49)
  %call.i.i51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i50)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z18startTest_pipelinePFvPliiiEiii(void (i64*, i32, i32, i32)* nocapture %foo, i32 %distance, i32 %prolog, i32 %epilog) local_unnamed_addr #3 {
entry:
  %sum = alloca i64, align 8
  %0 = bitcast i64* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %sum, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 64 dereferenceable(5120000) bitcast ([1280000 x i32]* @C to i8*), i8 0, i64 5120000, i1 false)
  %call = tail call i64 @_Z10clearCachev()
  call void %foo(i64* nonnull %sum, i32 %distance, i32 %prolog, i32 %epilog)
  %sum.promoted = load i64, i64* %sum, align 8, !tbaa !3
  %1 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %sum.promoted, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i64> [ %1, %entry ], [ %30, %vector.body ]
  %vec.phi59 = phi <4 x i64> [ zeroinitializer, %entry ], [ %31, %vector.body ]
  %vec.phi60 = phi <4 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %2 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index
  %3 = bitcast i32* %2 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %3, align 64, !tbaa !15
  %4 = getelementptr inbounds i32, i32* %2, i64 4
  %5 = bitcast i32* %4 to <4 x i32>*
  %wide.load62 = load <4 x i32>, <4 x i32>* %5, align 16, !tbaa !15
  %6 = getelementptr inbounds i32, i32* %2, i64 8
  %7 = bitcast i32* %6 to <4 x i32>*
  %wide.load63 = load <4 x i32>, <4 x i32>* %7, align 32, !tbaa !15
  %8 = getelementptr inbounds i32, i32* %2, i64 12
  %9 = bitcast i32* %8 to <4 x i32>*
  %wide.load64 = load <4 x i32>, <4 x i32>* %9, align 16, !tbaa !15
  %10 = sext <4 x i32> %wide.load to <4 x i64>
  %11 = sext <4 x i32> %wide.load62 to <4 x i64>
  %12 = sext <4 x i32> %wide.load63 to <4 x i64>
  %13 = sext <4 x i32> %wide.load64 to <4 x i64>
  %14 = add <4 x i64> %vec.phi, %10
  %15 = add <4 x i64> %vec.phi59, %11
  %16 = add <4 x i64> %vec.phi60, %12
  %17 = add <4 x i64> %vec.phi61, %13
  %index.next = or i64 %index, 16
  %18 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @C, i64 0, i64 %index.next
  %19 = bitcast i32* %18 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %19, align 64, !tbaa !15
  %20 = getelementptr inbounds i32, i32* %18, i64 4
  %21 = bitcast i32* %20 to <4 x i32>*
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %21, align 16, !tbaa !15
  %22 = getelementptr inbounds i32, i32* %18, i64 8
  %23 = bitcast i32* %22 to <4 x i32>*
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %23, align 32, !tbaa !15
  %24 = getelementptr inbounds i32, i32* %18, i64 12
  %25 = bitcast i32* %24 to <4 x i32>*
  %wide.load64.1 = load <4 x i32>, <4 x i32>* %25, align 16, !tbaa !15
  %26 = sext <4 x i32> %wide.load.1 to <4 x i64>
  %27 = sext <4 x i32> %wide.load62.1 to <4 x i64>
  %28 = sext <4 x i32> %wide.load63.1 to <4 x i64>
  %29 = sext <4 x i32> %wide.load64.1 to <4 x i64>
  %30 = add <4 x i64> %14, %26
  %31 = add <4 x i64> %15, %27
  %32 = add <4 x i64> %16, %28
  %33 = add <4 x i64> %17, %29
  %index.next.1 = add nuw nsw i64 %index, 32
  %34 = icmp eq i64 %index.next.1, 1280000
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %31, %30
  %bin.rdx65 = add <4 x i64> %32, %bin.rdx
  %bin.rdx66 = add <4 x i64> %33, %bin.rdx65
  %35 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx66)
  store i64 %35, i64* %sum, align 8, !tbaa !3
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6)
  %36 = load i64, i64* %sum, align 8, !tbaa !3
  %call.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %36)
  %37 = bitcast %"class.std::basic_ostream"* %call.i to i8**
  %vtable.i = load i8*, i8** %37, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::basic_ostream"* %call.i to i8*
  %_M_ctype.i.idx.i = add nsw i64 %vbase.offset.i, 240
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %39, i64 %_M_ctype.i.idx.i
  %40 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %41 = load %"class.std::ctype"*, %"class.std::ctype"** %40, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq %"class.std::ctype"* %41, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %middle.block
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %middle.block
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 8
  %42 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i3.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %41, i64 0, i32 9, i64 10
  %43 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41)
  %44 = bitcast %"class.std::ctype"* %41 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i = call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %41, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %43, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8 signext %retval.0.i.i.i)
  %call.i.i28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i27)
  %call1.i30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %call.i31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %call)
  %46 = bitcast %"class.std::basic_ostream"* %call.i31 to i8**
  %vtable.i33 = load i8*, i8** %46, align 8, !tbaa !22
  %vbase.offset.ptr.i34 = getelementptr i8, i8* %vtable.i33, i64 -24
  %47 = bitcast i8* %vbase.offset.ptr.i34 to i64*
  %vbase.offset.i35 = load i64, i64* %47, align 8
  %48 = bitcast %"class.std::basic_ostream"* %call.i31 to i8*
  %_M_ctype.i.idx.i36 = add nsw i64 %vbase.offset.i35, 240
  %_M_ctype.i.i37 = getelementptr inbounds i8, i8* %48, i64 %_M_ctype.i.idx.i36
  %49 = bitcast i8* %_M_ctype.i.i37 to %"class.std::ctype"**
  %50 = load %"class.std::ctype"*, %"class.std::ctype"** %49, align 8, !tbaa !24
  %tobool.not.i.i.i38 = icmp eq %"class.std::ctype"* %50, null
  br i1 %tobool.not.i.i.i38, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

if.then.i.i.i39:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %_M_widen_ok.i.i.i40 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 8
  %51 = load i8, i8* %_M_widen_ok.i.i.i40, align 8, !tbaa !28
  %tobool.not.i3.i.i41 = icmp eq i8 %51, 0
  br i1 %tobool.not.i3.i.i41, label %if.end.i.i.i48, label %if.then.i4.i.i44

if.then.i4.i.i44:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %arrayidx.i.i.i43 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %50, i64 0, i32 9, i64 10
  %52 = load i8, i8* %arrayidx.i.i.i43, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

if.end.i.i.i48:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50)
  %53 = bitcast %"class.std::ctype"* %50 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i45 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %53, align 8, !tbaa !22
  %vfn.i.i.i46 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i45, i64 6
  %54 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i46, align 8
  %call.i.i.i47 = call signext i8 %54(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %50, i8 signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52: ; preds = %if.then.i4.i.i44, %if.end.i.i.i48
  %retval.0.i.i.i49 = phi i8 [ %52, %if.then.i4.i.i44 ], [ %call.i.i.i47, %if.end.i.i.i48 ]
  %call1.i50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i31, i8 signext %retval.0.i.i.i49)
  %call.i.i51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i50)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #12 {
entry:
  %gen.i10 = alloca %"class.std::mersenne_twister_engine", align 8
  %dis.i11 = alloca %"class.std::uniform_int_distribution", align 4
  %gen.i = alloca %"class.std::mersenne_twister_engine", align 8
  %dis.i = alloca %"class.std::uniform_int_distribution", align 4
  %0 = bitcast %"class.std::mersenne_twister_engine"* %gen.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %0) #18
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 0, i64 0
  store i64 1000, i64* %arrayidx.i.i.i, align 8, !tbaa !3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.1, %entry
  %1 = phi i64 [ 1000, %entry ], [ %rem.i.i18.i.i.i.1, %for.body.i.i.i.1 ]
  %__i.021.i.i.i = phi i64 [ 1, %entry ], [ %inc.i.i.i.1, %for.body.i.i.i.1 ]
  %shr.i.i.i = lshr i64 %1, 30
  %xor.i.i.i = xor i64 %shr.i.i.i, %1
  %mul.i.i.i = mul nuw nsw i64 %xor.i.i.i, 1812433253
  %rem.i.i19.lhs.trunc.i.i.i = trunc i64 %__i.021.i.i.i to i16
  %rem.i.i1920.i.i.i = urem i16 %rem.i.i19.lhs.trunc.i.i.i, 624
  %rem.i.i19.zext.i.i.i = zext i16 %rem.i.i1920.i.i.i to i64
  %add.i.i.i = add nuw i64 %mul.i.i.i, %rem.i.i19.zext.i.i.i
  %rem.i.i18.i.i.i = and i64 %add.i.i.i, 4294967295
  %arrayidx7.i.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 0, i64 %__i.021.i.i.i
  store i64 %rem.i.i18.i.i.i, i64* %arrayidx7.i.i.i, align 8, !tbaa !3
  %inc.i.i.i = add nuw nsw i64 %__i.021.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %inc.i.i.i, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %for.body.i.i.i.1, !llvm.loop !7

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %for.body.i.i.i
  %_M_p.i.i.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 1
  store i64 624, i64* %_M_p.i.i.i, align 8, !tbaa !9
  %2 = bitcast %"class.std::uniform_int_distribution"* %dis.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  %_M_a.i.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i, i64 0, i32 0, i32 0
  store i32 0, i32* %_M_a.i.i.i, align 4, !tbaa !11
  %_M_b.i.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i, i64 0, i32 0, i32 1
  store i32 1279999, i32* %_M_b.i.i.i, align 4, !tbaa !14
  %_M_param.i.i = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i, i64 0, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i ], [ %indvars.iv.next.i, %for.body.i ]
  %call.i.i = call i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull align 4 dereferenceable(8) %dis.i, %"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %gen.i, %"struct.std::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %_M_param.i.i)
  %rem6.i = srem i32 %call.i.i, 1280000
  %arrayidx.i = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @A, i64 0, i64 %indvars.iv.i
  store i32 %rem6.i, i32* %arrayidx.i, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1280000
  br i1 %exitcond.not.i, label %_Z17fillArrayRandomlyPii.exit, label %for.body.i, !llvm.loop !16

_Z17fillArrayRandomlyPii.exit:                    ; preds = %for.body.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %0) #18
  %3 = bitcast %"class.std::mersenne_twister_engine"* %gen.i10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %3) #18
  %arrayidx.i.i.i12 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i10, i64 0, i32 0, i64 0
  store i64 1000, i64* %arrayidx.i.i.i12, align 8, !tbaa !3
  br label %for.body.i.i.i25

for.body.i.i.i25:                                 ; preds = %for.body.i.i.i25.1, %_Z17fillArrayRandomlyPii.exit
  %4 = phi i64 [ 1000, %_Z17fillArrayRandomlyPii.exit ], [ %rem.i.i18.i.i.i21.1, %for.body.i.i.i25.1 ]
  %__i.021.i.i.i13 = phi i64 [ 1, %_Z17fillArrayRandomlyPii.exit ], [ %inc.i.i.i23.1, %for.body.i.i.i25.1 ]
  %shr.i.i.i14 = lshr i64 %4, 30
  %xor.i.i.i15 = xor i64 %shr.i.i.i14, %4
  %mul.i.i.i16 = mul nuw nsw i64 %xor.i.i.i15, 1812433253
  %rem.i.i19.lhs.trunc.i.i.i17 = trunc i64 %__i.021.i.i.i13 to i16
  %rem.i.i1920.i.i.i18 = urem i16 %rem.i.i19.lhs.trunc.i.i.i17, 624
  %rem.i.i19.zext.i.i.i19 = zext i16 %rem.i.i1920.i.i.i18 to i64
  %add.i.i.i20 = add nuw i64 %mul.i.i.i16, %rem.i.i19.zext.i.i.i19
  %rem.i.i18.i.i.i21 = and i64 %add.i.i.i20, 4294967295
  %arrayidx7.i.i.i22 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i10, i64 0, i32 0, i64 %__i.021.i.i.i13
  store i64 %rem.i.i18.i.i.i21, i64* %arrayidx7.i.i.i22, align 8, !tbaa !3
  %inc.i.i.i23 = add nuw nsw i64 %__i.021.i.i.i13, 1
  %exitcond.not.i.i.i24 = icmp eq i64 %inc.i.i.i23, 624
  br i1 %exitcond.not.i.i.i24, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i30, label %for.body.i.i.i25.1, !llvm.loop !7

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i30: ; preds = %for.body.i.i.i25
  %_M_p.i.i.i26 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i10, i64 0, i32 1
  store i64 624, i64* %_M_p.i.i.i26, align 8, !tbaa !9
  %5 = bitcast %"class.std::uniform_int_distribution"* %dis.i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #18
  %_M_a.i.i.i27 = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i11, i64 0, i32 0, i32 0
  store i32 0, i32* %_M_a.i.i.i27, align 4, !tbaa !11
  %_M_b.i.i.i28 = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i11, i64 0, i32 0, i32 1
  store i32 1279999, i32* %_M_b.i.i.i28, align 4, !tbaa !14
  %_M_param.i.i29 = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %dis.i11, i64 0, i32 0
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.body.i37, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i30
  %indvars.iv.i31 = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i30 ], [ %indvars.iv.next.i35, %for.body.i37 ]
  %call.i.i32 = call i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull align 4 dereferenceable(8) %dis.i11, %"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %gen.i10, %"struct.std::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %_M_param.i.i29)
  %rem6.i33 = srem i32 %call.i.i32, 1280000
  %arrayidx.i34 = getelementptr inbounds [1280000 x i32], [1280000 x i32]* @B, i64 0, i64 %indvars.iv.i31
  store i32 %rem6.i33, i32* %arrayidx.i34, align 4, !tbaa !15
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i31, 1
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, 1280000
  br i1 %exitcond.not.i36, label %_Z17fillArrayRandomlyPii.exit38, label %for.body.i37, !llvm.loop !16

_Z17fillArrayRandomlyPii.exit38:                  ; preds = %for.body.i37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #18
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %3) #18
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 15)
  call void @m5_reset_stats(i64 0, i64 0)
  call void @_Z9startTestPFvPlE(void (i64*)* nonnull @_Z12testFunctionPl)
  call void @m5_dump_stats(i64 0, i64 0)
  %call1.i41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %call1.i43 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 15)
  call void @m5_reset_stats(i64 0, i64 0)
  call void @_Z9startTestPFvPlE(void (i64*)* nonnull @_Z26testFunction_manual_avx512Pl)
  call void @m5_dump_stats(i64 0, i64 0)
  %call1.i45 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %call1.i47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 29)
  call void @m5_reset_stats(i64 0, i64 0)
  call void @_Z15startTest_l_i_iPFvPliiEii(void (i64*, i32, i32)* nonnull @_Z27pipeline_512_8_8vreg_reducePlii, i32 8, i32 128)
  call void @m5_dump_stats(i64 0, i64 0)
  %call1.i49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %call1.i51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 29)
  call void @m5_reset_stats(i64 0, i64 0)
  call void @_Z15startTest_l_i_iPFvPliiEii(void (i64*, i32, i32)* nonnull @_Z27pipeline_512_8_8_stagger1x1Plii, i32 8, i32 128)
  call void @m5_dump_stats(i64 0, i64 0)
  %call1.i53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %call1.i55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 26)
  call void @m5_reset_stats(i64 0, i64 0)
  call void @_Z15startTest_l_i_iPFvPliiEii(void (i64*, i32, i32)* nonnull @_Z24pipeline_512_8_8_staggerPlii, i32 8, i32 128)
  call void @m5_dump_stats(i64 0, i64 0)
  %call1.i57 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  ret i32 0

for.body.i.i.i25.1:                               ; preds = %for.body.i.i.i25
  %shr.i.i.i14.1 = lshr i64 %rem.i.i18.i.i.i21, 30
  %xor.i.i.i15.1 = xor i64 %shr.i.i.i14.1, %rem.i.i18.i.i.i21
  %mul.i.i.i16.1 = mul nuw nsw i64 %xor.i.i.i15.1, 1812433253
  %rem.i.i19.lhs.trunc.i.i.i17.1 = trunc i64 %inc.i.i.i23 to i16
  %rem.i.i1920.i.i.i18.1 = urem i16 %rem.i.i19.lhs.trunc.i.i.i17.1, 624
  %rem.i.i19.zext.i.i.i19.1 = zext i16 %rem.i.i1920.i.i.i18.1 to i64
  %add.i.i.i20.1 = add nuw i64 %mul.i.i.i16.1, %rem.i.i19.zext.i.i.i19.1
  %rem.i.i18.i.i.i21.1 = and i64 %add.i.i.i20.1, 4294967295
  %arrayidx7.i.i.i22.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i10, i64 0, i32 0, i64 %inc.i.i.i23
  store i64 %rem.i.i18.i.i.i21.1, i64* %arrayidx7.i.i.i22.1, align 8, !tbaa !3
  %inc.i.i.i23.1 = add nuw nsw i64 %__i.021.i.i.i13, 2
  br label %for.body.i.i.i25

for.body.i.i.i.1:                                 ; preds = %for.body.i.i.i
  %shr.i.i.i.1 = lshr i64 %rem.i.i18.i.i.i, 30
  %xor.i.i.i.1 = xor i64 %shr.i.i.i.1, %rem.i.i18.i.i.i
  %mul.i.i.i.1 = mul nuw nsw i64 %xor.i.i.i.1, 1812433253
  %rem.i.i19.lhs.trunc.i.i.i.1 = trunc i64 %inc.i.i.i to i16
  %rem.i.i1920.i.i.i.1 = urem i16 %rem.i.i19.lhs.trunc.i.i.i.1, 624
  %rem.i.i19.zext.i.i.i.1 = zext i16 %rem.i.i1920.i.i.i.1 to i64
  %add.i.i.i.1 = add nuw i64 %mul.i.i.i.1, %rem.i.i19.zext.i.i.i.1
  %rem.i.i18.i.i.i.1 = and i64 %add.i.i.i.1, 4294967295
  %arrayidx7.i.i.i.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %gen.i, i64 0, i32 0, i64 %inc.i.i.i
  store i64 %rem.i.i18.i.i.i.1, i64* %arrayidx7.i.i.i.1, align 8, !tbaa !3
  %inc.i.i.i.1 = add nuw nsw i64 %__i.021.i.i.i, 2
  br label %for.body.i.i.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #13

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull align 4 dereferenceable(8) %this, %"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %__urng, %"struct.std::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %__param) local_unnamed_addr #4 comdat align 2 {
entry:
  %ref.tmp = alloca %"struct.std::uniform_int_distribution<>::param_type", align 4
  %_M_b.i = getelementptr inbounds %"struct.std::uniform_int_distribution<>::param_type", %"struct.std::uniform_int_distribution<>::param_type"* %__param, i64 0, i32 1
  %0 = load i32, i32* %_M_b.i, align 4, !tbaa !14
  %conv = sext i32 %0 to i64
  %_M_a.i = getelementptr inbounds %"struct.std::uniform_int_distribution<>::param_type", %"struct.std::uniform_int_distribution<>::param_type"* %__param, i64 0, i32 0
  %1 = load i32, i32* %_M_a.i, align 4, !tbaa !11
  %conv5 = sext i32 %1 to i64
  %sub6 = sub nsw i64 %conv, %conv5
  %cmp = icmp ult i64 %sub6, 4294967295
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nuw nsw i64 %sub6, 1
  %div.rhs.trunc = trunc i64 %add to i32
  %div74 = udiv i32 -1, %div.rhs.trunc
  %div.zext = zext i32 %div74 to i64
  %mul = mul nuw i64 %add, %div.zext
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then
  %call7 = tail call i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(%"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %__urng)
  %cmp9.not = icmp ult i64 %call7, %mul
  br i1 %cmp9.not, label %do.end, label %do.body, !llvm.loop !56

do.end:                                           ; preds = %do.body
  %div10 = udiv i64 %call7, %div.zext
  br label %if.end30

if.else:                                          ; preds = %entry
  %cmp11.not = icmp eq i64 %sub6, 4294967295
  br i1 %cmp11.not, label %if.else27, label %do.body13.preheader

do.body13.preheader:                              ; preds = %if.else
  %2 = bitcast %"struct.std::uniform_int_distribution<>::param_type"* %ref.tmp to i8*
  %div15 = lshr i64 %sub6, 32
  %conv16 = trunc i64 %div15 to i32
  %_M_a.i72 = getelementptr inbounds %"struct.std::uniform_int_distribution<>::param_type", %"struct.std::uniform_int_distribution<>::param_type"* %ref.tmp, i64 0, i32 0
  %_M_b.i73 = getelementptr inbounds %"struct.std::uniform_int_distribution<>::param_type", %"struct.std::uniform_int_distribution<>::param_type"* %ref.tmp, i64 0, i32 1
  br label %do.body13

do.body13:                                        ; preds = %do.body13.preheader, %do.body13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store i32 0, i32* %_M_a.i72, align 4, !tbaa !11
  store i32 %conv16, i32* %_M_b.i73, align 4, !tbaa !14
  %call17 = call i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* nonnull align 4 dereferenceable(8) %this, %"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %__urng, %"struct.std::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %ref.tmp)
  %conv18 = sext i32 %call17 to i64
  %mul19 = shl nsw i64 %conv18, 32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  %call20 = call i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(%"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %__urng)
  %add22 = add i64 %mul19, %call20
  %cmp24 = icmp ugt i64 %add22, %sub6
  %cmp25 = icmp ult i64 %add22, %mul19
  %3 = or i1 %cmp24, %cmp25
  br i1 %3, label %do.body13, label %if.end30, !llvm.loop !57

if.else27:                                        ; preds = %if.else
  %call28 = tail call i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(%"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %__urng)
  br label %if.end30

if.end30:                                         ; preds = %do.body13, %if.else27, %do.end
  %__ret.0 = phi i64 [ %div10, %do.end ], [ %call28, %if.else27 ], [ %add22, %do.body13 ]
  %4 = load i32, i32* %_M_a.i, align 4, !tbaa !11
  %5 = trunc i64 %__ret.0 to i32
  %conv34 = add i32 %4, %5
  ret i32 %conv34
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(%"class.std::mersenne_twister_engine"* nonnull align 8 dereferenceable(5000) %this) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_p = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 1
  %0 = load i64, i64* %_M_p, align 8, !tbaa !9
  %cmp = icmp ugt i64 %0, 623
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.phi.trans.insert.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 0
  %.pre.i = load i64, i64* %arrayidx.phi.trans.insert.i, align 8, !tbaa !3
  %vector.recur.init = insertelement <4 x i64> poison, i64 %.pre.i, i32 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %if.then
  %index = phi i64 [ 0, %if.then ], [ %index.next, %vector.body ]
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %if.then ], [ %wide.load21, %vector.body ]
  %1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %index
  %2 = or i64 %index, 1
  %3 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %2
  %4 = bitcast i64* %3 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %4, align 8, !tbaa !3
  %5 = getelementptr inbounds i64, i64* %3, i64 4
  %6 = bitcast i64* %5 to <4 x i64>*
  %wide.load19 = load <4 x i64>, <4 x i64>* %6, align 8, !tbaa !3
  %7 = getelementptr inbounds i64, i64* %3, i64 8
  %8 = bitcast i64* %7 to <4 x i64>*
  %wide.load20 = load <4 x i64>, <4 x i64>* %8, align 8, !tbaa !3
  %9 = getelementptr inbounds i64, i64* %3, i64 12
  %10 = bitcast i64* %9 to <4 x i64>*
  %wide.load21 = load <4 x i64>, <4 x i64>* %10, align 8, !tbaa !3
  %11 = shufflevector <4 x i64> %vector.recur, <4 x i64> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %12 = shufflevector <4 x i64> %wide.load, <4 x i64> %wide.load19, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %13 = shufflevector <4 x i64> %wide.load19, <4 x i64> %wide.load20, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %14 = shufflevector <4 x i64> %wide.load20, <4 x i64> %wide.load21, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %15 = and <4 x i64> %11, <i64 -2147483648, i64 -2147483648, i64 -2147483648, i64 -2147483648>
  %16 = and <4 x i64> %12, <i64 -2147483648, i64 -2147483648, i64 -2147483648, i64 -2147483648>
  %17 = and <4 x i64> %13, <i64 -2147483648, i64 -2147483648, i64 -2147483648, i64 -2147483648>
  %18 = and <4 x i64> %14, <i64 -2147483648, i64 -2147483648, i64 -2147483648, i64 -2147483648>
  %19 = and <4 x i64> %wide.load, <i64 2147483646, i64 2147483646, i64 2147483646, i64 2147483646>
  %20 = and <4 x i64> %wide.load19, <i64 2147483646, i64 2147483646, i64 2147483646, i64 2147483646>
  %21 = and <4 x i64> %wide.load20, <i64 2147483646, i64 2147483646, i64 2147483646, i64 2147483646>
  %22 = and <4 x i64> %wide.load21, <i64 2147483646, i64 2147483646, i64 2147483646, i64 2147483646>
  %23 = or <4 x i64> %19, %15
  %24 = or <4 x i64> %20, %16
  %25 = or <4 x i64> %21, %17
  %26 = or <4 x i64> %22, %18
  %27 = add nuw nsw i64 %index, 397
  %28 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %27
  %29 = bitcast i64* %28 to <4 x i64>*
  %wide.load22 = load <4 x i64>, <4 x i64>* %29, align 8, !tbaa !3
  %30 = getelementptr inbounds i64, i64* %28, i64 4
  %31 = bitcast i64* %30 to <4 x i64>*
  %wide.load23 = load <4 x i64>, <4 x i64>* %31, align 8, !tbaa !3
  %32 = getelementptr inbounds i64, i64* %28, i64 8
  %33 = bitcast i64* %32 to <4 x i64>*
  %wide.load24 = load <4 x i64>, <4 x i64>* %33, align 8, !tbaa !3
  %34 = getelementptr inbounds i64, i64* %28, i64 12
  %35 = bitcast i64* %34 to <4 x i64>*
  %wide.load25 = load <4 x i64>, <4 x i64>* %35, align 8, !tbaa !3
  %36 = lshr exact <4 x i64> %23, <i64 1, i64 1, i64 1, i64 1>
  %37 = lshr exact <4 x i64> %24, <i64 1, i64 1, i64 1, i64 1>
  %38 = lshr exact <4 x i64> %25, <i64 1, i64 1, i64 1, i64 1>
  %39 = lshr exact <4 x i64> %26, <i64 1, i64 1, i64 1, i64 1>
  %40 = xor <4 x i64> %36, %wide.load22
  %41 = xor <4 x i64> %37, %wide.load23
  %42 = xor <4 x i64> %38, %wide.load24
  %43 = xor <4 x i64> %39, %wide.load25
  %44 = and <4 x i64> %wide.load, <i64 1, i64 1, i64 1, i64 1>
  %45 = and <4 x i64> %wide.load19, <i64 1, i64 1, i64 1, i64 1>
  %46 = and <4 x i64> %wide.load20, <i64 1, i64 1, i64 1, i64 1>
  %47 = and <4 x i64> %wide.load21, <i64 1, i64 1, i64 1, i64 1>
  %48 = icmp eq <4 x i64> %44, zeroinitializer
  %49 = icmp eq <4 x i64> %45, zeroinitializer
  %50 = icmp eq <4 x i64> %46, zeroinitializer
  %51 = icmp eq <4 x i64> %47, zeroinitializer
  %52 = select <4 x i1> %48, <4 x i64> zeroinitializer, <4 x i64> <i64 2567483615, i64 2567483615, i64 2567483615, i64 2567483615>
  %53 = select <4 x i1> %49, <4 x i64> zeroinitializer, <4 x i64> <i64 2567483615, i64 2567483615, i64 2567483615, i64 2567483615>
  %54 = select <4 x i1> %50, <4 x i64> zeroinitializer, <4 x i64> <i64 2567483615, i64 2567483615, i64 2567483615, i64 2567483615>
  %55 = select <4 x i1> %51, <4 x i64> zeroinitializer, <4 x i64> <i64 2567483615, i64 2567483615, i64 2567483615, i64 2567483615>
  %56 = xor <4 x i64> %40, %52
  %57 = xor <4 x i64> %41, %53
  %58 = xor <4 x i64> %42, %54
  %59 = xor <4 x i64> %43, %55
  %60 = bitcast i64* %1 to <4 x i64>*
  store <4 x i64> %56, <4 x i64>* %60, align 8, !tbaa !3
  %61 = getelementptr inbounds i64, i64* %1, i64 4
  %62 = bitcast i64* %61 to <4 x i64>*
  store <4 x i64> %57, <4 x i64>* %62, align 8, !tbaa !3
  %63 = getelementptr inbounds i64, i64* %1, i64 8
  %64 = bitcast i64* %63 to <4 x i64>*
  store <4 x i64> %58, <4 x i64>* %64, align 8, !tbaa !3
  %65 = getelementptr inbounds i64, i64* %1, i64 12
  %66 = bitcast i64* %65 to <4 x i64>*
  store <4 x i64> %59, <4 x i64>* %66, align 8, !tbaa !3
  %index.next = add nuw i64 %index, 16
  %67 = icmp eq i64 %index.next, 224
  br i1 %67, label %for.body.i, label %vector.body, !llvm.loop !58

for.body.i:                                       ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %wide.load21, i32 3
  %arrayidx.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 224
  %and.i = and i64 %vector.recur.extract, -2147483648
  %arrayidx3.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 225
  %68 = load i64, i64* %arrayidx3.i, align 8, !tbaa !3
  %and4.i = and i64 %68, 2147483646
  %or.i = or i64 %and4.i, %and.i
  %arrayidx7.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 621
  %69 = load i64, i64* %arrayidx7.i, align 8, !tbaa !3
  %shr.i = lshr exact i64 %or.i, 1
  %xor.i = xor i64 %shr.i, %69
  %and8.i = and i64 %68, 1
  %tobool.not.i = icmp eq i64 %and8.i, 0
  %cond.i = select i1 %tobool.not.i, i64 0, i64 2567483615
  %xor9.i = xor i64 %xor.i, %cond.i
  store i64 %xor9.i, i64* %arrayidx.i, align 8, !tbaa !3
  %arrayidx.i.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 225
  %and.i.1 = and i64 %68, -2147483648
  %arrayidx3.i.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 226
  %70 = load i64, i64* %arrayidx3.i.1, align 8, !tbaa !3
  %and4.i.1 = and i64 %70, 2147483646
  %or.i.1 = or i64 %and4.i.1, %and.i.1
  %arrayidx7.i.1 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 622
  %71 = load i64, i64* %arrayidx7.i.1, align 8, !tbaa !3
  %shr.i.1 = lshr exact i64 %or.i.1, 1
  %xor.i.1 = xor i64 %shr.i.1, %71
  %and8.i.1 = and i64 %70, 1
  %tobool.not.i.1 = icmp eq i64 %and8.i.1, 0
  %cond.i.1 = select i1 %tobool.not.i.1, i64 0, i64 2567483615
  %xor9.i.1 = xor i64 %xor.i.1, %cond.i.1
  store i64 %xor9.i.1, i64* %arrayidx.i.1, align 8, !tbaa !3
  %arrayidx.i.2 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 226
  %and.i.2 = and i64 %70, -2147483648
  %arrayidx3.i.2 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 227
  %72 = load i64, i64* %arrayidx3.i.2, align 8, !tbaa !3
  %and4.i.2 = and i64 %72, 2147483646
  %or.i.2 = or i64 %and4.i.2, %and.i.2
  %arrayidx7.i.2 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 623
  %73 = load i64, i64* %arrayidx7.i.2, align 8, !tbaa !3
  %shr.i.2 = lshr exact i64 %or.i.2, 1
  %xor.i.2 = xor i64 %shr.i.2, %73
  %and8.i.2 = and i64 %72, 1
  %tobool.not.i.2 = icmp eq i64 %and8.i.2, 0
  %cond.i.2 = select i1 %tobool.not.i.2, i64 0, i64 2567483615
  %xor9.i.2 = xor i64 %xor.i.2, %cond.i.2
  store i64 %xor9.i.2, i64* %arrayidx.i.2, align 8, !tbaa !3
  %arrayidx19.phi.trans.insert.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 227
  %.pre81.i = load i64, i64* %arrayidx19.phi.trans.insert.i, align 8, !tbaa !3
  %vector.recur.init34 = insertelement <2 x i64> poison, i64 %.pre81.i, i32 1
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %for.body.i
  %index30 = phi i64 [ 0, %for.body.i ], [ %index.next31.2, %vector.body28 ]
  %vector.recur35 = phi <2 x i64> [ %vector.recur.init34, %for.body.i ], [ %wide.load36.2, %vector.body28 ]
  %offset.idx = add nuw nsw i64 %index30, 227
  %74 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %offset.idx
  %75 = add nuw nsw i64 %index30, 228
  %76 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %75
  %77 = bitcast i64* %76 to <2 x i64>*
  %wide.load36 = load <2 x i64>, <2 x i64>* %77, align 8, !tbaa !3
  %78 = shufflevector <2 x i64> %vector.recur35, <2 x i64> %wide.load36, <2 x i32> <i32 1, i32 2>
  %79 = and <2 x i64> %78, <i64 -2147483648, i64 -2147483648>
  %80 = and <2 x i64> %wide.load36, <i64 2147483646, i64 2147483646>
  %81 = or <2 x i64> %80, %79
  %82 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %index30
  %83 = bitcast i64* %82 to <2 x i64>*
  %wide.load37 = load <2 x i64>, <2 x i64>* %83, align 8, !tbaa !3
  %84 = lshr exact <2 x i64> %81, <i64 1, i64 1>
  %85 = xor <2 x i64> %84, %wide.load37
  %86 = and <2 x i64> %wide.load36, <i64 1, i64 1>
  %87 = icmp eq <2 x i64> %86, zeroinitializer
  %88 = select <2 x i1> %87, <2 x i64> zeroinitializer, <2 x i64> <i64 2567483615, i64 2567483615>
  %89 = xor <2 x i64> %85, %88
  %90 = bitcast i64* %74 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %90, align 8, !tbaa !3
  %index.next31 = add nuw nsw i64 %index30, 2
  %offset.idx.1 = add nuw nsw i64 %index30, 229
  %91 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %offset.idx.1
  %92 = add nuw nsw i64 %index30, 230
  %93 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %92
  %94 = bitcast i64* %93 to <2 x i64>*
  %wide.load36.1 = load <2 x i64>, <2 x i64>* %94, align 8, !tbaa !3
  %95 = shufflevector <2 x i64> %wide.load36, <2 x i64> %wide.load36.1, <2 x i32> <i32 1, i32 2>
  %96 = and <2 x i64> %95, <i64 -2147483648, i64 -2147483648>
  %97 = and <2 x i64> %wide.load36.1, <i64 2147483646, i64 2147483646>
  %98 = or <2 x i64> %97, %96
  %99 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %index.next31
  %100 = bitcast i64* %99 to <2 x i64>*
  %wide.load37.1 = load <2 x i64>, <2 x i64>* %100, align 8, !tbaa !3
  %101 = lshr exact <2 x i64> %98, <i64 1, i64 1>
  %102 = xor <2 x i64> %101, %wide.load37.1
  %103 = and <2 x i64> %wide.load36.1, <i64 1, i64 1>
  %104 = icmp eq <2 x i64> %103, zeroinitializer
  %105 = select <2 x i1> %104, <2 x i64> zeroinitializer, <2 x i64> <i64 2567483615, i64 2567483615>
  %106 = xor <2 x i64> %102, %105
  %107 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> %106, <2 x i64>* %107, align 8, !tbaa !3
  %index.next31.1 = add nuw nsw i64 %index30, 4
  %offset.idx.2 = add nuw nsw i64 %index30, 231
  %108 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %offset.idx.2
  %109 = add nuw nsw i64 %index30, 232
  %110 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %109
  %111 = bitcast i64* %110 to <2 x i64>*
  %wide.load36.2 = load <2 x i64>, <2 x i64>* %111, align 8, !tbaa !3
  %112 = shufflevector <2 x i64> %wide.load36.1, <2 x i64> %wide.load36.2, <2 x i32> <i32 1, i32 2>
  %113 = and <2 x i64> %112, <i64 -2147483648, i64 -2147483648>
  %114 = and <2 x i64> %wide.load36.2, <i64 2147483646, i64 2147483646>
  %115 = or <2 x i64> %114, %113
  %116 = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %index.next31.1
  %117 = bitcast i64* %116 to <2 x i64>*
  %wide.load37.2 = load <2 x i64>, <2 x i64>* %117, align 8, !tbaa !3
  %118 = lshr exact <2 x i64> %115, <i64 1, i64 1>
  %119 = xor <2 x i64> %118, %wide.load37.2
  %120 = and <2 x i64> %wide.load36.2, <i64 1, i64 1>
  %121 = icmp eq <2 x i64> %120, zeroinitializer
  %122 = select <2 x i1> %121, <2 x i64> zeroinitializer, <2 x i64> <i64 2567483615, i64 2567483615>
  %123 = xor <2 x i64> %119, %122
  %124 = bitcast i64* %108 to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %124, align 8, !tbaa !3
  %index.next31.2 = add nuw nsw i64 %index30, 6
  %125 = icmp eq i64 %index.next31.2, 396
  br i1 %125, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body28, !llvm.loop !59

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body28
  %arrayidx42.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 623
  %126 = load i64, i64* %arrayidx42.i, align 8, !tbaa !3
  %and43.i = and i64 %126, -2147483648
  %127 = load i64, i64* %arrayidx.phi.trans.insert.i, align 8, !tbaa !3
  %and46.i = and i64 %127, 2147483646
  %or47.i = or i64 %and46.i, %and43.i
  %arrayidx49.i = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 396
  %128 = load i64, i64* %arrayidx49.i, align 8, !tbaa !3
  %shr50.i = lshr exact i64 %or47.i, 1
  %xor51.i = xor i64 %shr50.i, %128
  %and52.i = and i64 %127, 1
  %tobool53.not.i = icmp eq i64 %and52.i, 0
  %cond54.i = select i1 %tobool53.not.i, i64 0, i64 2567483615
  %xor55.i = xor i64 %xor51.i, %cond54.i
  store i64 %xor55.i, i64* %arrayidx42.i, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %entry
  %129 = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %0, %entry ]
  %inc = add nuw nsw i64 %129, 1
  store i64 %inc, i64* %_M_p, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %"class.std::mersenne_twister_engine", %"class.std::mersenne_twister_engine"* %this, i64 0, i32 0, i64 %129
  %130 = load i64, i64* %arrayidx, align 8, !tbaa !3
  %shr = lshr i64 %130, 11
  %and = and i64 %shr, 4294967295
  %xor = xor i64 %and, %130
  %shl = shl i64 %xor, 7
  %and3 = and i64 %shl, 2636928640
  %xor4 = xor i64 %and3, %xor
  %shl5 = shl i64 %xor4, 15
  %and6 = and i64 %shl5, 4022730752
  %xor7 = xor i64 %and6, %xor4
  %shr8 = lshr i64 %xor7, 18
  %xor9 = xor i64 %shr8, %xor7
  ret i64 %xor9
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_main.cc() #4 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #16

; Function Attrs: nofree nosync nounwind readonly willreturn
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*>, i32 immarg, <4 x i1>, <4 x i32>) #17

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #9 = { mustprogress nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #12 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nofree nosync nounwind readnone willreturn }
attributes #17 = { nofree nosync nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 13.0.0 (git@git.enflame.cn:xiaofeng.guan/llvm-project.git 1ce133e2b5d5d82d39c547de39047c496cbb7240)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !4, i64 4992}
!10 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !5, i64 0, !4, i64 4992}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !13, i64 0, !13, i64 4}
!13 = !{!"int", !5, i64 0}
!14 = !{!12, !13, i64 4}
!15 = !{!13, !13, i64 0}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8, !18}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !8, !18}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!25, !26, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 216, !5, i64 224, !27, i64 225, !26, i64 232, !26, i64 240, !26, i64 248, !26, i64 256}
!26 = !{!"any pointer", !5, i64 0}
!27 = !{!"bool", !5, i64 0}
!28 = !{!29, !5, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !26, i64 16, !27, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !32}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8, !18}
!52 = distinct !{!52, !8, !18}
!53 = distinct !{!53, !8, !18}
!54 = distinct !{!54, !8, !18}
!55 = distinct !{!55, !8, !18}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8, !18}
!59 = distinct !{!59, !8, !18}
