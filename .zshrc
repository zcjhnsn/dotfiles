# Cobalt2
. /opt/homebrew/opt/asdf/libexec/asdf.sh # set up asdf
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH" # set up mysql

# aliases

# Locus/Patient App
alias builddev='swift run devtools device'
alias buildsim='swift run devtools simulator'

# Interact with `.dotfiles` bare repo from any directory on disk
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

alias ls='ls -GFh'
alias ll='ls -FGalh'

alias dc='docker-compose'

alias ddd='rm -rf /Users/zac.johnson/Library/Developer/Xcode/DerivedData'

alias ga='git add'
alias gb='git branch'
alias gcm='git commit -m'
alias gfa='git fetch --all'
alias gl='git log'
alias gpoh='git push -u origin HEAD'
alias gpom='git push origin master'
alias gs='git status'

alias portal='ssh pi@174.52.242.10'

alias reload='source ~/.zshrc'
alias resetAudio='sudo killall coreaudiod'
alias resetBluetooth='sudo pkill bluetoothd'

alias vim='nvim'

# ZSH 
# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
# Activate auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
