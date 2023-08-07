# Inferencium
# ZSH - Logout

# Copyright 2023 Jake Winters
# SPDX-License-Identifier: BSD-3-Clause

# Version: 1.0.0.2


# Kill ssh-agent on logout to purge cached SSH key passphrase from memory
if [ -n "$SSH_AUTH_SOCK" ] ; then
		eval $(ssh-agent -k)
fi

# Clear shell to prevent information disclosure
clear
