TARGETS=zshrc vim vimrc gitconfig tmux.conf

install:
	for target in $(TARGETS); do \
        if [ -e $(HOME)/.$$target ] ; then \
            mv $(HOME)/.$$target $(HOME)/.$$target.backup ; \
        fi ; \
		ln -fs `pwd`/$$target $(HOME)/.$$target ; \
	done
	


