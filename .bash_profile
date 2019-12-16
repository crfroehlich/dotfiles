export PS1="\[\033[31m\][\D{%d %b}, \t] \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export SUDO_PS1="\n[\t] \[\e[33;01;41m\]\u@\H\[\e[0m\]:\$PWD\n"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="/usr/local/sbin:$PATH"
export HISTCONTROL=ignoreboth

# Aliases: Basic
alias ..='cd ..'
alias c='clear'
alias ls='ls -GFh'
alias ll='ls -Ghal'

# Aliases: Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Aliases: System
alias brewery='brew update && brew upgrade && brew cleanup'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias flushDNS='sudo killall -HUP mDNSResponder'

# Aliases: Development
alias d='docker'
alias dokcer='docker'
alias dcomp='docker-compose'
alias dwipe="docker kill $(docker ps -a -q) || docker rm $(docker ps -a -q) || docker ps -a"
alias g='git'

# Hitting CTRL+S after using CTRL+R (reverse search) will forward search if you pass over an element.
[[ $- == *i* ]] && stty -ixon

# Homebrew completions
if type brew 2&>/dev/null; then
  for completion_file in $(brew --prefix)/etc/bash_completion.d/*; do
    source "$completion_file"
  done
fi

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Aquia Dev Desktop
export PATH="$PATH:/Applications/DevDesktop/tools"
export PATH="$PATH:/Applications/DevDesktop/drush_9"

# Ruby rbenv
eval "$(rbenv init -)"
eval "$(pyenv init -)"

# Python
#eval "$(pipenv --completion)"
