source ~/.zsh/aliases.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/history.zsh
source ~/.zsh/pretty.zsh

# ZPLUG
source ~/.zplug/init.zsh

zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/history-substring-search", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/sublime", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
# zplug "zsh-users/zsh-syntax-highlighting", defer:2

# zplug 'halfo/lambda-mod-zsh-theme', as:theme
zplug 'denysdovhan/spaceship-zsh-theme', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# fix Ctrl+U
bindkey \^U backward-kill-line

# fix Ctrl + Arrow Left/Right
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word
