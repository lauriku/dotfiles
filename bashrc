. ~/.bash_aliases
. ~/.colors

[ -e "$HOME/bin" ] && PATH=$PATH:$HOME/bin

# RVM

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set up the bash prompt

#PS1="${BWhite}\@ ${Green}\w${Red}\$(__git_ps1) ${Blue}\$${NC} "

PS1="\@ \w\$(__git_ps1) \$ "
