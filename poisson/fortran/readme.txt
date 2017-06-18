1. Compile

gfortran -O3 poisson.f90 -o poisson.x

or

make

2. Execute

./possion.x > plot.dat


3. Plot solution

gnuplot plot.gnu
