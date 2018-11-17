# Aliases
alias rr="ranger"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias tmuxconf="vim ~/.tmux.conf" # then in tmux command line (ctrl-a :) source-file ~/.tmux.conf"

# Git aliases
alias gd="git diff"
alias gs="git status"
alias gb="git branch"
alias gc="git commit"
alias ga="git add --all"
alias gl="git log --oneline"

# TEMPORARY aliases!
#alias nuc="ssh -i ~/.ssh/nuc-lubuntu greg@13.80.245.96 -p 2222"
#alias sgx-docker="sudo docker run -v ~/oraclize/sgx/rust-sgx-sdk:/root/sgx -ti baiduxlab/sgx-rust"
#alias upkey="scp -P 2222 -i ~/.ssh/nuc-lubuntu ~/oraclize/sgx/rust-sgx-sdk/samplecode/secp256k1-enclave-rust/bin/enclave.signed.so greg@13.80.245.96:/home/greg/t && scp -P 2222 -i ~/.ssh/nuc-lubuntu ~/oraclize/sgx/rust-sgx-sdk/samplecode/secp256k1-enclave-rust/bin/ethkey_sgx greg@13.80.245.96:/home/greg/t"

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
setxkbmap gb

# The ssh-vault stuff
SSH_VAULT_VM="ssh-vault"
if [ "$SSH_VAULT_VM" != "" ]; then
       export SSH_AUTH_SOCK=/home/user/.SSH_AGENT_$SSH_VAULT_VM
fi
