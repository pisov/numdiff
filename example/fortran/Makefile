FC=gfortran
CFLAGS=-O3
EXE=firstderiv.x
SRC=firstderiv.f90
OBJ=firstderiv.o

all: $(EXE)

$(EXE): $(OBJ)
	$(FC) $(CFLAGS) $(OBJ) -o $(EXE)

$(OBJ): $(SRC)
	$(FC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXE)
