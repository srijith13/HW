all: test_static.o matrix_static.o
	gcc test_static.o matrix_static.o -o static_test

test_static.o: test_static.c matrix_static.h
	gcc -c test_static.c

matrix_static.o: matrix_static.c matrix_static.h
	gcc -c matrix_static.c

clean:
	rm *.o
	rm static_test

