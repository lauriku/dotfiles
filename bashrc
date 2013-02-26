. ~/.aliases
. ~/.colors

# RVM

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set up the bash prompt

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

Time=`date +%H:%M`

PS1="${Green}\w${Red} \$(parse_git_branch) ${Blue}\$${NC} "
