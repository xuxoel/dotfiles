#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=/home/jcm/.dotfiles --work-tree=/home/jcm'
alias v='~/.config/vifm/scripts/vifmrun'
alias ytv="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias ytvs="youtube-dl --add-metadata -i --write-srt -o '%(upload_date)s-%(title)s.%(ext)s'"
alias yta="ytv -x -f bestaudio/best"

export PATH="~/.scripts:$PATH"
export PATH="~/.config/vifm:$PATH"
#source /usr/share/nvm/init-nvm.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
