src=$(wildcard src/*.c)
obj_temp=$(src:.c=.o)
obj=$(subst src,build,$(obj_temp))
trg=executable.out
inc_dir= ./include

all:$(trg)
$(trg):$(obj)
	gcc -o $@ $(obj)

%.o:%.c
	gcc $< -c -o $@ -I $(inc_dir)

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"

clean:
	rm -rf src/*.o
	rm -rf *.out
