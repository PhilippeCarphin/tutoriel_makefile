src = $(wildcard *.c)
obj = $(src:.c=.o)
all:libphil.a
libphil.a:$(obj)
	ar -crs libphil.a $(obj)
%.o:%.c
	gcc -c -o $@ $<
clean:
	rm -f *.o
	rm -f *.a
