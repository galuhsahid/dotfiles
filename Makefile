DIR = '${HOME}/Documents/dotfiles'

.PHONY: all
all: dotfiles test

.PHONY: dotfiles
dotfiles:
	for dotfile in $(shell find $(DIR) -name ".*" -not -name ".DS_Store" -not -name ".gitignore" -not -name ".git"); do \
		ln -sfn $$dotfile $(HOME)/$$f; \
	done; \

.PHONY: test
test: 
	find $(DIR) -name ".*" -not -name ".DS_Store" -not -name ".gitignore" -not -name ".git" -type f -exec "shellcheck" "--format=gcc" {} \;