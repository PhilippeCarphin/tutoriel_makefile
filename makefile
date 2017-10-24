src_dir=./src
build_dir=./build
inc_dir= ./include

src=$(wildcard $(src_dir)/*.c)
obj=$(subst $(src_dir),$(build_dir),$(src:.c=.o))
trg=executable.out

all:$(trg)
$(trg):$(obj)
	gcc -o $@ $(obj)

$(build_dir)/%.o:$(src_dir)/%.c
	gcc $< -c -o $@ -I $(inc_dir)

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"

clean:
	rm -rf ./$(build_dir)/*.o
	rm -rf *.out
