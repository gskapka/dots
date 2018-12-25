# Aliases
alias rr="ranger"
alias vimrc="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf" # then in tmux command line (ctrl-a :) source-file ~/.tmux.conf"
alias nt="vim ~/Desktop/notes.txt"
alias cs="vim ~/Desktop/cheat-sheet.txt"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"

# Git aliases
logLine="git log --graph --pretty=format:'%C(#ff69b4)%h%Creset %C(yellow)%d%Creset %s %C(#66cdaa) (%an: %cr)'"
alias gl=$logLine
alias gd="git diff"
alias gs="git status"
alias gb="git branch"
alias glp="$logLine -p"
alias ga="git add --all"
alias gc="git commit -m"
alias gp="git stash pop"
alias gr="git rebase -i"
alias gsl="git stash list"
alias gcs="git commit -S -m"
alias gst="git stash save -u"
alias gca="git commit --amend"
alias gls="$logLine --show-signature"
alias glsp="$logLine --show-signature -p"

# Colourise grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias rgrep='rgrep --color=auto'

# ZSH Stuff
export ZSH="/home/user/.oh-my-zsh"
ZSH_THEME="pygmalion"
source $ZSH/oh-my-zsh.sh

# Set python path
export PYTHONPATH=/home/gregkapka/.local/lib/python2.7/site-packages

# Make ranger default to vim
export VISUAL=vim
export EDITOR=vim

# Source the NVM stuff
source ~/.nvm/nvm.sh

# Set keyboard to UK
setxkbmap -layout gb -option ctrl:nocaps

# The ssh-vault stuff
SSH_VAULT_VM="ssh-vault"
if [ "$SSH_VAULT_VM" != "" ]; then
       export SSH_AUTH_SOCK=/home/user/.SSH_AGENT_$SSH_VAULT_VM
fi

# Make sure sbin is in $PATH!
export PATH=$PATH:/sbin:/usr/sbin
