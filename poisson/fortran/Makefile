FC=gfortran
CFLAGS=-O3
EXE=poisson.x
SRC=poisson.f90
OBJ=poisson.o

all: $(EXE)

$(EXE): $(OBJ)
	$(FC) $(CFLAGS) $(OBJ) -o $(EXE)

$(OBJ): $(SRC)
	$(FC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXE)
