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

# Use for Blog
export DB_HOST="127.0.0.1"
export DB_PORT="3306"
export DB_USER="root"
export DB_PASSWORD="asdasd"
# consider using a dedicated script or direnv instead.

# OpenHarness
export PATH="/home/shorin/.openharness-venv/bin:$PATH"
