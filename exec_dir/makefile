# Structure de notre projet
src_dir=./src
build_dir=./build
inc_dir= ./include
exec_dir=./exec
exec_name=executable.out

# Structure de la librairie
lib_dir=../libphil
lib_inc=$(lib_dir)/include
lib_location=$(lib_dir)/lib
lib_name=phil

# Flags de compilation et de linking
CFLAGS += -I $(inc_dir) -I $(lib_inc)
LDLIBS = -L $(lib_location) -l $(lib_name)
LDFLAGS =

# Les listes de fichiers sur lesquels on va faire des choses
src=$(wildcard $(src_dir)/*.c)
obj=$(subst $(src_dir),$(build_dir),$(src:.c=.o))
trg=$(exec_dir)/$(exec_name)
lib_file=$(lib_location)/lib$(lib_name).a

all:$(trg)
$(trg):$(lib_file) $(obj)
	@echo '$(shell tput setab 10)$(shell tput setaf 0)Linking $(obj) to make $(trg)$(shell tput sgr 0)'
	gcc $(LDFLAGS) -o $@ $(obj) $(LDLIBS)

$(build_dir)/%.o:$(src_dir)/%.c
	@echo '$(shell tput setab 8)Compiling $< -> $@$(shell tput sgr 0)'
	gcc $< -c -o $@ $(CFLAGS)

$(lib_file):$(wildcard $(lib_dir)/src/*.c)
	@echo "$@ <--- $^"
	@echo '$(shell tput setab 3)Building library$(shell tput sgr 0)'
	cd $(lib_dir); make
	@echo '$(shell tput setab 3)Finished building library$(shell tput sgr 0)'

vars:
	@echo "src = $(src)"
	@echo "obj = $(obj)"
	@echo "trg = $(trg)"
CLEAN:clean
	cd $(lib_dir); make clean
clean:
	rm -rf ./$(build_dir)/*.o
	rm -rf ./$(exec_dir)/*.out

include ../compile.mk
-include $(build_dir)/*.d

