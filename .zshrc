export ZSH="/Users/home/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# WebAssembly Decompiler
export PATH="$HOME/Documents/repos/wabt/bin:$PATH"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Meteor Path
export PATH=/Users/home/.meteor:$PATH

# Go Path
export PATH=$PATH:$(go env GOPATH)/bin/

export PATH=$PATH:~/scripts

# bun completions
[ -s "/Users/home/.bun/_bun" ] && source "/Users/home/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/cdpr8/_cdp/_cdprogs:$PATH"
export PATH="/Users/home/.dotnet/tools:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"
export PATH
export CGO_ENABLED=1


#export LD_LIBRARY_PATH=$(find /usr/local/Cellar -type d -name "lib" | tr '\n' ':')$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=$(find /usr/local/Cellar -type d | grep -Ev "(ruby)|(node)|(python)" |  grep -Ex "/usr/local/Cellar/[a-zA-Z0-9]*/\d.(\d{1}|\d{2})\.(\d{1}|\d{2})\/(lib|include) | tr '\n' ':'")$LD_LIBRARY_PATH

# Mysql Alias
alias mysqld="mysql -h 127.0.0.1 -P 55001 -u root -proot#root"

alias ll="eza -al  --no-time"
alias ls="eza"
alias f="fzf"
alias cd="z"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias splice="~/scripts/manageSamples.sh"
alias reload="source ~/.zshrc"
alias myShortcuts='python3 /Users/home/.aEcho/main.py'
alias gitroot='cd $(git rev-parse --show-toplevel)'
alias python='python3'
alias sql='mysql -h 127.0.0.1 -P 3306 -u root -proot#root'
alias showhosts='sudo nvim /private/etc/hosts'
alias showzsh='nvim ~/.zshrc'
alias start='watchexec -Nri "./bin/**" ./run.sh'
alias newc='~/source/scripts/newc.sh'
alias twin='tmux rename-window'

. "$HOME/.cargo/env"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

