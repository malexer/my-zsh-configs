# How many lines of history to keep in memory
HISTSIZE=2000
# Number of history entries to save to disk
SAVEHIST=2000
# Where to save history to disk
HISTFILE=~/.zsh_history

setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store

# Append history to the history file (no overwriting)
setopt    append_history
# Off: Share history across terminals
setopt    no_share_history
# Immediately append to the history file, not just when a term is killed
setopt    inc_append_history
