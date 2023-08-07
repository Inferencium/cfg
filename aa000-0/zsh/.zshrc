# Inferencium
# ZSH - rc

# Copyright 2022 Jake Winters
# SPDX-License-Identifier: BSD-3-Clause

# Version: 9.0.0.29


# Prompt
PROMPT="%n@%M - %~/ : %# "
RPROMPT=\$vcs_info_msg_0_

# Options
setopt extendedglob KSH_ARRAYS nomatch prompt_subst
unsetopt autocd AUTO_REMOVE_SLASH beep

# Keybinds
bindkey -e
bindkey "^[[3" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# zstyle
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' formats '%r%f (%b)'
zstyle ':vcs_info:*' enable git

autoload -Uz compinit
compinit
autoload -Uz vcs_info

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

# History
HISTFILE=$HOME/.zsh-history
HISTSIZE=1024
SAVEHIST=1024

# XDG_RUNTIME_DIR
if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

# Aliases
## Global
if [[ -f $HOME/.zsh-alias-global ]]; then
    . $HOME/.zsh-alias-global
fi
## User
if [[ -f $HOME/.zsh-alias-user ]]; then
    . $HOME/.zsh-alias-user
fi

# fzf
source /etc/fzf/completion-zsh
source /usr/share/fzf/key-bindings.zsh
