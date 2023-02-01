```bash
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../CrossCompile.<MCU>.cmake ../
cmake --build .
```