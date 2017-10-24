src=$(wildcard src/*.c)
obj=$(subst src,build,$(src:.c=.o))
trg=executable.out
inc_dir= ./include

all:$(trg)
$(trg):$(obj)
	gcc -o $@ $(obj)

build/%.o:src/%.c
	gcc $< -c -o $@ -I $(inc_dir)

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"

clean:
	rm -rf build/*.o
	rm -rf *.out
