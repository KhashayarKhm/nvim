SHELL = bash

.PHONY: help
help:   ## shows this message
	@cat $(MAKEFILE_LIST) | grep -E "^[a-zA-Z0-9\-]+:.*"  | awk 'BEGIN { FS = ":.*?##"}; { printf "\033[31m %-20s \033[0m %s\n", $$1, $$2 }'

# add check deps(health) = pnpm, npm

#run with npm option
.PHONY: install
install: # install NeoVim and plugins
	sudo pacman -S neovim
	npm install -g @fsouza/prettierd
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	nvim --headless -c "PackerInstall" -c "quit"
