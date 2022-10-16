# ZSH - rc

# Copyright 2022 Inference
# License: BSD 3-Clause Clear


# Prompt.
PROMPT=%n@%M:%#" "

# Options.
setopt extendedglob KSH_ARRAYS nomatch
unsetopt autocd AUTO_REMOVE_SLASH beep

# Keybinds.
bindkey -e

# zstyle.
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit

# History.
HISTFILE=~/.zsh-history
HISTSIZE=1024
SAVEHIST=1024

# Aliases.
if [[ -f ~/.zsh-aliases ]]; then
    . ~/.zsh-aliases
fi
