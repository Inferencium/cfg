# ZSH - rc

# Copyright 2022-2023 Inference
# SPDX-License-Identifier: BSD-3-Clause-Clear

# Version: 1.2.0.7


export LD_PRELOAD="/lib/local/libhardened_malloc.so"

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

# XDG_RUNTIME_DIR.
if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

# Aliases.
## Global.
if [[ -f ~/.zsh-alias-global ]]; then
    . ~/.zsh-alias-global
fi
## User.
if [[ -f ~/.zsh-alias-user ]]; then
    . ~/.zsh-alias-user
fi
