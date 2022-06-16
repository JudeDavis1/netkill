cd ..

# Create build folder and enter it
mkdir build
cd build

# Create build instructions for Debug mode
cmake -DCMAKE_BUILD_TYPE=Debug ..

# Build project
make

cd ..
cd scripts
