rm -fR workspace
mkdir workspace
tar -zxvf ./clang-tools-extra-3.3.src.tar.gz -C ./workspace/
tar -zxvf ./libcxx-3.3.src.tar.gz -C ./workspace/
tar -zxvf ./cfe-3.3.src.tar.gz -C ./workspace/
tar -zxvf ./llvm-3.3.src.tar.gz -C ./workspace/
tar -zxvf ./compiler-rt-3.3.src.tar.gz -C ./workspace/


cd ./workspace

mv cfe-3.3.src clang
mv clang/ llvm-3.3.src/tools/
mv clang-tools-extra-3.3.src extra
mv extra/ llvm-3.3.src/tools/clang/
mv compiler-rt-3.3.src compiler-rt
mv compiler-rt llvm-3.3.src/projects/

mkdir build-3.3
cd build-3.3
../llvm-3.3.src/configure --enable-optimized --enable-targets=host-only
make -j4
sudo make install
cd ../..
# rm -fR workspace

