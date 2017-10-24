src_dir=./src
build_dir=./build
inc_dir= ./include
exec_dir=./exec
exec_name=executable.out

CFLAGS = -I $(inc_dir)

src=$(wildcard $(src_dir)/*.c)
obj=$(subst $(src_dir),$(build_dir),$(src:.c=.o))
trg=$(exec_dir)/$(exec_name)

all:$(trg)
$(trg):$(obj)
	gcc -o $@ $(obj)

$(build_dir)/%.o:$(src_dir)/%.c
	gcc $< -c -o $@ $(CFLAGS)

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"

clean:
	rm -rf ./$(build_dir)/*.o
	rm -rf ./$(exec_dir)/*.out
