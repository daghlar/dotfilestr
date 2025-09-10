# ===========================================
# PROFESSIONAL ZSH CONFIGURATION
# ===========================================

# ===========================================
# OH-MY-ZSH CONFIGURATION
# ===========================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
    archlinux
    systemd
    docker
    docker-compose
    kubectl
    npm
    node
    python
    pip
    virtualenv
    conda-zsh-completion
    zsh-interactive-cd
    colored-man-pages
    command-not-found
    copyfile
    copypath
    dirhistory
    history-substring-search
    sudo
    web-search
    extract
    jsontools
    urltools
    zsh-navigation-tools
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ===========================================
# ENVIRONMENT VARIABLES
# ===========================================
export EDITOR='nvim'
export VISUAL='nvim'
export BROWSER='firefox'
export TERMINAL='kitty'

# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"

# ===========================================
# ALIASES
# ===========================================
# System
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'

# Hyprland
alias hypr='hyprctl'
alias hypr-reload='hyprctl reload'

# ===========================================
# FUNCTIONS
# ===========================================
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# ===========================================
# POWERLEVEL10K CONFIGURATION
# ===========================================
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
