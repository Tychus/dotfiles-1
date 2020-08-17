# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fpath=($ZDOTDIR/plugins $fpath)

# Enable colors:
autoload -U colors && colors

# Navigation:
setopt AUTO_CD 
setopt EXTENDED_GLOB

# History:
setopt EXTENDED_HISTORY		# Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY		# Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST	# Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS		# Do not record an event that was just recorded.
setopt HIST_IGNORE_ALL_DUPS	# Delete an old record even if a new event is duplicate.
setopt HIST_FIND_NO_DUPS	# Do not display a previously found event.
setopt HIST_IGNORE_SPACE	# Do not record an event starting with space.
setopt HIST_VERIFY		# Do not execute inmediately upon history expansion.

# PROMPT
fpath=($ZDOTDIR/prompt $fpath)
autoload -Uz office.zsh-theme; office.zsh-theme

# Load aliases and shortcuts if existent.
source $ZDOTDIR/aliases/aliases

# Basic auto/tab complete:
autoload -Uz compinit; compinit
_comp_options+=(globdots)
source $ZDOTDIR/plugins/completion.zsh

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for differenr vi modes.
autoload -Uz cursor_mode; cursor_mode

# Use vim keys in tab complete menu:
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char
# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

