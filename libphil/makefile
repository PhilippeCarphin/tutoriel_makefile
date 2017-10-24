# Structure de notre projet
src_dir=./src
build_dir=./build
inc_dir= ./include
lib_dir=./lib
lib_name=libphil.a

# Flags de compilation
CFLAGS = -I $(inc_dir)

# Listes de fichiers sur lesquesl on travail
src=$(wildcard $(src_dir)/*.c)
obj=$(subst $(src_dir),$(build_dir),$(src:.c=.o))
trg=$(lib_dir)/$(lib_name)

all:$(trg)
$(trg):$(obj) $(lib_file)
	ar -crs $(trg) $(obj)

$(build_dir)/%.o:$(src_dir)/%.c
	gcc $< -c -o $@ $(CFLAGS)

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"
clean:
	rm -rf ./$(build_dir)/*.o
	rm -rf ./$(lib_dir)/*.a
