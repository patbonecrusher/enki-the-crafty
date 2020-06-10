#!/bin/bash

export packages=(
	https://github.com/tpope/vim-pathogen.git                      # plugin management
#	https://github.com/scrooloose/nerdtree.git                     # nice source tree nav
	https://github.com/tpope/vim-sensible.git
	https://github.com/tpope/vim-vinegar.git                       # - to access directory
	https://github.com/tpope/vim-airline.git                       # better status bar
	https://github.com/othree/html5.vim.git                        #
	https://github.com/vim-scripts/L9.git
	https://github.com/othree/javascript-libraries-syntax.vim.git  # js syntax
#	https://github.com/Valloric/YouCompleteMe.git                  # code completion
	https://github.com/pangloss/vim-javascript.git                 # can replace javascript code with funky char
	https://github.com/tpope/vim-fugitive.git                      # git command in vim
	https://github.com/rstacruz/sparkup.git                        # like zen coding
	git://git.wincent.com/command-t.git                            # opening files and buffer
)

export clone_pkgs=(
	https://github.com/VundleVim/Vundle.vim.git                    # another plugin management
)
