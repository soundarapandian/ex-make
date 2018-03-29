default: calc

calc: calc.o lib_basic_calc.a
	gcc -g -o calc calc.o -L. -l_basic_calc

calc.o: calc.c
	gcc -c calc.c -o calc.o

lib_basic_calc.a: lib_basic_calc.o
	ar rcs lib_basic_calc.a lib_basic_calc.o

lib_basic_calc.o: lib_basic_calc.c
	gcc -c lib_basic_calc.c -o lib_basic_calc.o

clean:
	rm *.o *.a calc
