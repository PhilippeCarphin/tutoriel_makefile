$(build_dir)/%.o:$(src_dir)/%.c
	@echo '$(shell tput setab 8)Compiling $< -> $@$(shell tput sgr 0)'
	gcc $< -c -o $@ $(CFLAGS)

CFLAGS += -MMD -Wall
