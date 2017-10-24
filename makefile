src=$(wildcard src/*.c)
obj=$(src:.c=.o)
trg=executable.out

all:$(trg)
$(trg):$(obj)
	gcc -o $@ $(obj)

%.o:%.c
	gcc $< -c -o $@

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"

clean:
	rm -rf src/*.o
	rm -rf *.out
