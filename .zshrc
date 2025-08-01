export ZSH="/Users/home/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git wp-cli)

# Sources
. $ZSH/oh-my-zsh.sh
. "$HOME/.cargo/env"

# Dotnet
export DOTNET_ROOT=/usr/local/share/dotnet
export PATH=$DOTNET_ROOT:$PATH
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Homebrew
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Luarocks
export PATH="/Users/home/.luarocks/bin:$PATH"

# CrossCompiler
export PATH="/usr/local/Cellar/x86_64-linux-gnu-binutils/2.44/bin:$PATH"
export PATH="/usr/local/Cellar/x86_64-unknown-linux-gnu/13.3.0/bin:$PATH"
export PATH="/usr/local/Cellar/x86_64-unknown-linux-gnu/13.3.0/toolchain/bin:$PATH"

# WABT path
export PATH="$HOME/Documents/repos/wabt/bin:$PATH"

# NVIM path
export MYVIMRC="/Users/home/.config/nvim/init.lua"

# Git editors
export GIT_EDITOR="nvim -u /Users/home/.config/nvim/init.lua"
export GIT_SEQUENCE_EDITOR="nvim -u /Users/home/.config/nvim/init.lua"

# Go Path
export PATH="$(go env GOPATH)/bin:$PATH"
export CGO_ENABLED=1
export GOPRIVATE=github.com/hegner123/*

# MSSQL SERVER PATH
export PATH="~/source/packages/sqlpackage:$PATH"

# ModulaCMS DEV
export PATH="/Users/home/Documents/Code/Go_dev/modulacms:$PATH"

# Ghostty
export XDG_CONFIG_HOME="~/.config"

# KRD
export PATH="/Users/home/Documents/Code/bonsai/krd/src/Seed.Web/ai/:$PATH"

# Bun completions
[ -s "/Users/home/.bun/_bun" ] && source "/Users/home/.bun/_bun"

# Bun path
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Audio Editing CDP
export PATH="$HOME/cdpr8/_cdp/_cdprogs:$PATH"

# Dotnet plugins
export PATH="/Users/home/.dotnet/tools:$PATH"
export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"

#pkgconfig
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# local Mysql Alias
alias mysqld="mysql -h 127.0.0.1 -P 55001 -u root -proot#root"

eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Alias
alias vim='nvim -u /Users/home/.config/nvim/init.lua'
alias ll='eza -al  --no-time'
alias ls='eza'
alias f='fzf'
alias reload='source ~/.zshrc'
alias myShortcuts='python3 /Users/home/.aEcho/main.py'
alias gitroot='cd $(git rev-parse --show-toplevel)'
alias python='python3'
alias sql='mysql -h 127.0.0.1 -P 3306 -u root -proot#root'
alias showhosts='sudo nvim -u /Users/home/.config/nvim/init.lua /private/etc/hosts'
alias showzsh='nvim -u /Users/home/.config/nvim/init.lua ~/.zshrc'
alias showcaddy='nvim -u /Users/home/.config/nvim/init.lua /usr/local/etc/Caddyfile'
alias scaddy='brew services start caddy'
alias rcaddy='brew services restart caddy'
alias scaddy='brew services stop caddy'
alias shownginx='sudo vim /usr/local/etc/nginx'
alias tnginx='sudo nginx -t'
alias snginx='brew services start nginx'
alias rnginx='brew services restart nginx'
alias stnginx='brew services stop nginx'
alias sphp='brew services start php@8.2'
alias rphp='brew services restart php@8.2'
alias stphp='brew services stop php@8.2'
alias sdb='brew services start mariadb'
alias rdb='brew services restart mariadb'
alias stdb='brew services stop mariadb'
alias showlogs='cd /usr/local/var/log'
alias showvim='nvim -u /Users/home/.config/nvim/init.lua /Users/home/.config/mhNvim'
alias brews='brew services'
alias start='watchexec -Nri "./bin/**" ./run.sh'
alias twin='tmux rename-window'
alias serve='npx http-server .'
alias gitclear='git rm -r --cached .'
alias slocal='snginx && sphp && sdb'
alias rlocal='rnginx && rphp && rdb'
alias stlocal='stnginx && stphp && sudo stdb'
alias var='/usr/local/var'
alias showssh="nvim -u /Users/home/.config/nvim/init.lua ~/.ssh/config"
alias llama='ollama run llama2-uncensored:latest'
alias newc='~/source/scripts/newc.sh'
alias convert='~/source/scripts/convert-parallel.sh'
alias splice='~/source/scripts/manageSamples.sh'
alias img='~/source/packages/pdfmaker'
alias newssh='~/source/scripts/newssh.sh'
alias makegraph='~/source/scripts/makegraph.sh'
alias git='~/source/scripts/git-wrapper.sh'
alias tstart='~/source/scripts/tmux-startup.sh'
alias detach='~/source/scripts/tmux-detach.sh'
alias resume='~/source/scripts/tmux-resume.sh'
alias gen='gen.sh'


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/home/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

