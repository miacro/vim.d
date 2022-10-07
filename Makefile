SRC=$(realpath .)
DST=~/.vim
MAKE=make --no-print-directory
SHELL=/bin/bash

all: reinstall-vim-plug

reinstall-vim-plug: reinstall
	[[ ! -f ${DST}/autoload/plug.vim ]] \
	&& curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
	|| exit 0

reinstall-vundle: reinstall
	[[ ! -d ${DST}/bundle/Vundle.vim/.git ]] \
	&& git clone https://github.com/VundleVim/Vundle.vim.git ${DST}/bundle/Vundle.vim \
	|| exit 0

reinstall:
	ln -fs -n ${SRC} ${DST}

uninstall:
	[[ -L ${DST} ]] && rm ${DST} || exit 0

.PHONY: reinstall uninstall reinstall-vundle reinstall-vim-plug
