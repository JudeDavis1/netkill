# Go out of 'scripts' directory
cd ..

# Create build directory and enter it
mkdir build
cd build

# Create build instructions in release mode
cmake -DCMAKE_BUILD_TYPE=Release ..

# Build the project
make

cd ..
cd scripts
