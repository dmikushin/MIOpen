#!/usr/bin/fish
mkdir -p ../MIOpen_build_release
cd ../MIOpen_build_release
env CXX=/opt/rocm/llvm/bin/clang++ cmake -DMIOPEN_BACKEND=HIP -DCMAKE_PREFIX_PATH="/opt/rocm/;/opt/rocm/hip" ../MIOpen -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=(pwd)/install
cmake --build .
cmake --install .

