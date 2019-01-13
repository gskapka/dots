# Run tmux anytime z-shell starts
[ -z "$TMUX" ] && { tmux attach || exec tmux new-session ranger && exit; }

# Aliases
alias rr="ranger"
alias vimrc="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf" # then in tmux command line (ctrl-a :) source-file ~/.tmux.conf"
alias cs="vim ~/Desktop/cheat-sheet"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias echocp='function echoCopy(){echo $1 | xclip -i -f -selection primary | xsel -i --clipboard}; echoCopy'
alias therefore="echocp ∴"
alias because="echocp ∵"
alias interrobang="echocp ‽"
todo="~/Desktop/todo"
note="~/Desktop/notes"
alias todos="cat $todo"
alias notes="cat $notes"
alias todo="cat >> $todo"
alias note="cat >> $notes"

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
alias gba="git branch --all"
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

# Source my profile
source ~/.profile

# Set keyboard to UK
setxkbmap -layout gb -option ctrl:nocaps

# Make sure sbin is in $PATH!
export PATH=$PATH:/sbin:/usr/sbin
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source the NVM stuff
source ~/.nvm/nvm.sh

# Add rust binaries to path
export PATH=$PATH:/home/user/.cargo/bin
