. ~/.aliases
. ~/.colors

# RVM

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set up the bash prompt

PS1="${BWhite}\@ ${Green}\w${Red}\$(__git_ps1) ${Blue}\$${NC} "
