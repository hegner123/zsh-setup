# `.zshrc` Configuration

This `.zshrc` file customizes your Zsh shell with various tools, aliases, paths, and plugins for productivity. Below is a breakdown of each configuration and how it’s used.

## General Configurations

- **Oh My Zsh Path**  
  `export ZSH="/Users/home/.oh-my-zsh"`  
  Sets the path for [Oh My Zsh](https://ohmyz.sh/), a framework for managing Zsh configuration.
  
- **Theme**  
  `ZSH_THEME="robbyrussell"`  
  Specifies the `robbyrussell` theme for Oh My Zsh.

- **Plugins**  
  `plugins=(git)`  
  Enables the `git` plugin, which adds useful Git shortcuts.

## Paths

- **WebAssembly Decompiler (WABT)**  
  Adds WebAssembly Toolkit (`wabt`) binaries to the path:
  ```bash
  export PATH="$HOME/Documents/repos/wabt/bin:$PATH"
  ```

- **Go Path**  
  Adds the Go workspace binaries to the path:
  ```bash
  export PATH=$PATH:$(go env GOPATH)/bin/
  ```

- **Bun**  
  Includes the Bun JavaScript runtime in the path and enables Bun autocompletions:
  ```bash
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
  [ -s "/Users/home/.bun/_bun" ] && source "/Users/home/.bun/_bun"
  ```

- **Custom Directories**  
  Adds other custom directories, such as:
  ```bash
  export PATH="$HOME/cdpr8/_cdp/_cdprogs:$PATH"
  export PATH="/Users/home/.dotnet/tools:$PATH"
  ```

- **Dotnet and CGO**  
  Sets paths and configurations for .NET and CGo compatibility:
  ```bash
  export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
  export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"
  export CGO_ENABLED=1
  ```

- **Rust Environment**  
  Sources the Rust environment:
  ```bash
  . "$HOME/.cargo/env"
  ```

## Aliases

- **Database Shortcuts**  
  - `mysqld`: Connects to MySQL on a specified port:
    ```bash
    alias mysqld="mysql -h 127.0.0.1 -P 55001 -u root -proot#root"
    ```
  - `sql`: Alternative MySQL connection command:
    ```bash
    alias sql='mysql -h 127.0.0.1 -P 3306 -u root -proot#root'
    ```

- **Directory Navigation**  
  - `ll`: Lists all files with `eza`, an alternative to `ls`:
    ```bash
    alias ll="eza -al --no-time"
    ```
  - `ls`: Basic `eza` command:
    ```bash
    alias ls="eza"
    ```
  - `gitroot`: Changes directory to the Git project root:
    ```bash
    alias gitroot='cd $(git rev-parse --show-toplevel)'
    ```

- **Editor Shortcuts**  
  - `showhosts`: Opens the hosts file with elevated permissions in `nvim`.
  ```bash
  alias showhosts=`sudo nvim <path to host>`
  ```
  - `showzsh`: Opens the `.zshrc` file in `nvim`.
  ```bash
  alias showzsh='nvim ~/.zshrc'
  ```
  - `reload`: Reloads `.zshrc`:
    ```bash
    alias reload="source ~/.zshrc"
    ```

- **Project-Specific Aliases**  
  - `splice`: Manages sample files:
    ```bash
    alias splice="~/scripts/manageSamples.sh"
    ```
  - `newc`: Create all the files and folders neccessary for a new C project:
    ```bash
    alias newc='~/source/scripts/newc.sh'
    ```

- **Command Shortcuts**  
  - `f`: Fuzzy file finder:
    ```bash
    alias f="fzf"
    ```
  - `cd`: Uses `zoxide` to enhance `cd`:
    ```bash
    alias cd="z"
    eval "$(zoxide init zsh)"
    ```
  - `myShortcuts`: Prints all .zsh aliases to the terminal:
    ```bash
    alias myShortcuts='python3 /Users/home/.aEcho/main.py'
    ```
  - `python`: Points `python` to `python3`:
    ```bash
    alias python='python3'
    ```
  - `twin`: Renames the current `tmux` window:
    ```bash
    alias twin='tmux rename-window'
    ```

- **Automation and Development Tools**  
  - `start`: Watches and runs scripts in real-time, customized for C development:
    ```bash
    alias start='watchexec -Nri "./bin/**" ./run.sh'
    ```

## Additional Tools and Integrations

- **fzf**: Fuzzy finder sourced from `.fzf.zsh` if available.
- **iTerm2 Shell Integration**: Enables iTerm2 features if installed:
  ```bash
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
  ```

