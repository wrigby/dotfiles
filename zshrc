# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster-rigs"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

PATHDIRS=(
    /usr/X11/bin
    /opt/vista/bin
    /opt/apache/maven/bin
    /opt/apache/ant/bin
    /opt/java/current/bin
    /opt/local/bin
    /opt/local/sbin
    /usr/local/bin
    /usr/local/sbin
    /usr/sbin
    /sbin
    /usr/bin
    /bin )

# Check for a ~/local directory structure
if [ -d $HOME/local ]; then
    # Add local perl modules to @INC and enable local::lib if available
    export PERL5LIB=~/local/lib/perl5:~/local/lib/perl
    perl -e 'use local::lib' 2>/dev/null && export PERL5OPT=-Mlocal::lib=~/local

    # Add locally installed man pages
    export MANPATH=$MANPATH:$HOME/local/man:$HOME/local/share/man
    
    # Add locally installed binaries to path
    PATHDIRS=($HOME/local/bin $HOME/local/sbin $PATHDIRS)
fi

if [ -x $HOME/local/bin/vim ]; then
    export EDITOR=$HOME/local/bin/vim
fi


# Add ssrp-dev if available
if [ -d $HOME/src/vrisys ]; then
    PATHDIRS=($HOME/src/vrisys/ssrp-dev $PATHDIRS)
    alias issh.py='issh.py -n'
fi

# Add golang tools if installed
if [ -d $HOME/local/go ]; then
    PATHDIRS=($HOME/local/go/bin $PATHDIRS)
    export GOROOT=$HOME/local/go
fi

export PATH=${(j.:.)PATHDIRS}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(issh git per-directory-history jira osx brew sublime virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

