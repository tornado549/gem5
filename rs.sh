set -e
set -x


# clang++ -fno-unroll-loops -flegacy-pass-manager -O3 $1.cc -S -emit-llvm  -Xclang -load -Xclang ../plugin-llvm-sw-prefetch-pass/SwPrefetchPass_llvm10.so -o $1_pf.ll

# clang++ -flegacy-pass-manager -O3 $1.cc -S -emit-llvm  -Xclang -load -Xclang /home/wsj/CK/reproduce-cgo2017-paper/package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass_llvm10.so -mllvm -debug-only=SwPrefetchPass -o $1_pf.ll
# llc -filetype=obj $1_pf.ll -o $1_pf.o
# llc -filetype=asm $1_pf.ll -o $1_pf.s
# clang++ $1_pf.o -o $1_pf

clang++ -flegacy-pass-manager -O3 $1.cc -S -emit-llvm -o $1_nopf.ll
llc -filetype=obj $1_nopf.ll -o $1_nopf.o
llc -filetype=asm $1_nopf.ll -o $1_nopf.s
clang++ $1_nopf.o -o $1_nopf

#=================================================================================================

# m5op
# clang++ -flegacy-pass-manager -O3 $1.cc -S -emit-llvm -DMOP -Xclang -load -Xclang /home/wsj/CK/reproduce-cgo2017-paper/package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass_llvm10.so -mllvm -debug-only=SwPrefetchPass -I${GEM5_HOME}/include/ -o $1_pf.ll
# llc -filetype=obj $1_pf.ll -o $1_pf.o
# llc -filetype=asm $1_pf.ll -o $1_pf.s
# clang++ $1_pf.o -L${GEM5_HOME}/util/m5/build/x86/out -lm5 -static -o $1_pf_m5

clang++ -flegacy-pass-manager -O3 $1.cc -S -emit-llvm -DMOP -I${GEM5_HOME}/include/ -static -o $1_nopf.ll
llc -filetype=obj $1_nopf.ll -o $1_nopf.o
llc -filetype=asm $1_nopf.ll -o $1_nopf.s
clang++ $1_nopf.o -L${GEM5_HOME}/util/m5/build/x86/out -lm5 -static -o $1_nopf_m5