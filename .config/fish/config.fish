# Command line alias to start the browser-sync server
alias serve="browser-sync start --server --files ."

## Aliases 
# Launch FISH config file
alias ef="nvim $HOME/.config/fish/config.fish"

# Launch ZSH config file
alias ec="nvim $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"

# Launch Nvim config file
alias en="nvim $HOME/.config/nvim/init.vim"

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first' # preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.="exa -a | egrep '^\.'"

## Arch
# Pacman
alias pacs="sudo pacman -Syu"

## Fedora
# Dnf
alias up="sudo dnf upgrade"
alias in="sudo dnf install"
alias upgrade="sudo dnf upgrade && sudo snap refresh && flatpak upgrade"
