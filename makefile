src=$(wildcard *.c)
obj=$(src:.c=.o)

executable.out:main.o ma_fonction.o
	gcc -o executable.out main.o ma_fonction.o

main.o:main.c
	gcc main.c -c

ma_fonction.o:ma_fonction.c
	gcc ma_fonction.c -c

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"

clean:
	rm -rf *.o
	rm -rf *.out
