src=$(wildcard *.c)
obj=$(src:.c=.o)

executable.out:$(obj)
	gcc -o executable.out $(obj)

%.o:%.c
	gcc $< -c

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"

clean:
	rm -rf *.o
	rm -rf *.out
