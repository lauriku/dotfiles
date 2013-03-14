# Unix
alias tlf="tail -f"
alias ln='ln -v'
alias mkdir='mkdir -p'
alias ...='../..'
alias l='ls --color=auto'
alias ll='ls --color=auto -al'
alias lh='ls --color=auto -Alh'

# git
alias g="git"
alias gci="git pull --rebase && rake && git push"

# Bundler
alias b="bundle"

# Tests and Specs
alias t="ruby -I test"
alias cuc="bundle exec cucumber"

# Rubygems
alias gi="gem install"
alias giv="gem install -v"

# Rails
alias migrate="rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare"

# Own
alias cd..="cd .."
alias xclip="xclip -selection c"
alias pubkey="cat ~/.ssh/id_rsa.pub | xclip"

# Function for starting sublime on the background, and detach it from the current terminal

function subl() { 
  nohup $HOME/sublime-text/sublime_text "$@" > /dev/null 2>&1 &
}

# Same for gitk

function gitk() {
  nohup /usr/bin/gitk "$@" > /dev/null 2>&1 &
}
