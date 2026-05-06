# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
alias ls='ls --color=auto'
alias grep='grep --color=auto'

set PS1='[\u@\h \W]\$ '

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load Goland
export PATH=$PATH:/opt/GoLand-2026.1.1/bin
alias goland='/opt/GoLand-2026.1.1/bin/goland.sh'
