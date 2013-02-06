TARGETS=zshrc vim vimrc tmux.conf

install:
	for target in $(TARGETS); do \
        if [ -e $(HOME)/.$$target ] ; then \
            mv $(HOME)/.$$target $(HOME)/.$$target.backup ; \
        fi ; \
		ln -s `pwd`/$$target $(HOME)/.$$target ; \
	done
	


