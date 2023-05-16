# Inferencium
# ZSH - Profile

# Copyright 2023 Jake Winters
# SPDX-License-Identifier: BSD-3-Clause-Clear

# Version: 0.0.0.0


# Cache SSH key passphrase in memory on login
if [ -z "$SSH_AUTH_SOCK" ] ; then
		eval $(ssh-agent -s)
		ssh-add
fi
