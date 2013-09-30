# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# use subl as an editor
export EDITOR=vim

# aliases
if [ -e "$HOME/.zsh_aliases" ]; then
  source "$HOME/.zsh_aliases"
fi

# zlogin
if [ -e "$HOME/.zlogin" ]; then
  source "$HOME/.zlogin"
fi

# RVM
if [ -e "$HOME/.rvm" ]; then
  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi


# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# use incremental search
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# handy keybindings
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# keybinds to go end of line, not start of line when browsing command history
bindkey -M viins "\e[A" up-line-or-history
bindkey -M viins "\e[B" down-line-or-history
bindkey -M viins "\eOA" up-line-or-history
bindkey -M viins "\eOB" down-line-or-history

# expand functions in the prompt
setopt prompt_subst

# ignore duplicate history entries
setopt histignoredups

# keep TONS of history
export HISTSIZE=4096

# look for ey config in project dirs
export EYRC=./.eyrc

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB

# Enable shared history
setopt SHARE_HISTORY
