src=$(wildcard *.c)
obj=$(src:.c=.o)
trg=executable.out

all:$(trg)
$(trg):$(obj)
	gcc -o $@ $(obj)

%.o:%.c
	gcc $< -c

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"

clean:
	rm -rf *.o
	rm -rf *.out
