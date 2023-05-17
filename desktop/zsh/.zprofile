# Inferencium
# ZSH - Profile

# Copyright 2023 Jake Winters
# SPDX-License-Identifier: BSD-3-Clause-Clear

# Version: 1.1.0.3


# Start ssh-agent on login
if [ -z "$SSH_AUTH_SOCK" ] ; then
		eval $(ssh-agent -s)
fi

# Environmental variables
## User
if [[ -f ~/.zshenv-user ]]; then
    . ~/.zshenv-user
fi
