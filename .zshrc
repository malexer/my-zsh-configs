# disable zsh substitution/autocomplete with URL and backslashes
# https://stackoverflow.com/questions/25614613/how-to-disable-zsh-substitution-autocomplete-with-url-and-backslashes
DISABLE_MAGIC_FUNCTIONS=true

# Plugin Manager
source ~/.zinit/bin/zinit.zsh

# Load pure theme
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

# OMZ libs
zinit wait lucid for \
    OMZL::functions.zsh \
    OMZL::clipboard.zsh \
    OMZL::compfix.zsh \
    OMZL::completion.zsh \
    OMZL::correction.zsh \
    OMZL::directories.zsh \
    OMZL::git.zsh \
    OMZL::grep.zsh \
    OMZL::history.zsh \
    OMZL::key-bindings.zsh \
    OMZL::misc.zsh \
    OMZL::spectrum.zsh \
    OMZL::termsupport.zsh \
    OMZL::theme-and-appearance.zsh

# OMZ plugins
zinit wait lucid for \
    OMZP::colored-man-pages \
    OMZP::colorize \
    OMZP::git \
    OMZP::pip \
    OMZP::python \
    OMZP::sublime \
    OMZP::sudo

# Plugins
zinit wait lucid for \
    agkozak/zsh-z

zinit wait lucid as"completion" for \
    OMZP::docker/_docker \
    OMZP::docker-compose/_docker-compose

zinit wait lucid atinit"zicompinit; zicdreplay" for \
    zdharma/fast-syntax-highlighting


# CUSTOM CONFIGURATIONS

# history
setopt hist_no_store
setopt no_share_history

# fix Ctrl+U
bindkey \^U backward-kill-line

zinit wait lucid atload'source ~/.zsh/aliases.zsh' for \
    OMZP::common-aliases

source ~/.zsh/exports.zsh

if [[ $OSTYPE == darwin* ]]; then
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

if [[ -e ~/.profile ]]; then
    source ~/.profile
fi
