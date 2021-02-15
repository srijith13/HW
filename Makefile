all: test_static.o matrix_static.o test_dynamic.o matrix_dynamic.o
	gcc test_static.o matrix_static.o -o static_test
	gcc test_dynamic.o matrix_dynamic.o -o dynamic_test

test_static.o: test_static.c matrix_static.h
	gcc -c test_static.c

matrix_static.o: matrix_static.c matrix_static.h
	gcc -c matrix_static.c

test_dynamic.o: test_dynamic.c matrix_dynamic.h
	gcc -c test_dynamic.c

matrix_dynamic.o: matrix_dynamic.c matrix_dynamic.h
	gcc -c matrix_dynamic.c

clean:
	rm *.o
	rm static_test
	rm dynamic_test
