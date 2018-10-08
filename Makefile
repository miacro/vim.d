SRC=$(realpath .)
DST=~/.vim
MAKE=make --no-print-directory
SHELL=/bin/bash

reinstall:
	ln -fs -T ${SRC} ${DST} \
	&& [[ ! -d ${DST}/bundle/Vundle.vim/.git ]] \
	&& git clone https://github.com/VundleVim/Vundle.vim.git ${DST}/bundle/Vundle.vim \
	|| exit 0

uninstall:
	[[ -L ${DST} ]] && rm ${DST} || exit 0

.PHONY: reinstall uninstall 
