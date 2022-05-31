cd build

cmake ..
make
./netkill $1 $2

cd ..
