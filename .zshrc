# ZPLUG
source ~/.zplug/init.zsh

# useful parts of oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/compfix", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/correction", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/git", from:oh-my-zsh
zplug "lib/grep", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/misc", from:oh-my-zsh
zplug "lib/spectrum", from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

# plugins
zplug "plugins/common-aliases", from:oh-my-zsh
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
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# theme
zplug 'malexer/lambda-mod-zsh-theme', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load


# CUSTOM CONFIGURATIONS

# history
setopt hist_no_store
setopt no_share_history

# fix Ctrl+U
bindkey \^U backward-kill-line

# for some reason LSCOLORS is broken by zplug on macOS
export LSCOLORS=exfxcxdxbxexexabagacad

source ~/.zsh/exports.zsh
source ~/.zsh/git.zsh
