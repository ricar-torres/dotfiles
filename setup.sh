#!/bin/bash

# Define the environment variable dynamically for each user
ENV_VARIABLE="export MassTransit__HostUri=\"sb://biobusdev-00rtg1.servicebus.windows.net\""

# Check if the environment variable is already in ~/.bashrc or ~/.zshrc (depending on the shell used)
if ! grep -qF "$ENV_VARIABLE" ~/.bashrc; then
    # Append the environment variable to ~/.bashrc
    echo "$ENV_VARIABLE" >> ~/.bashrc
fi

# If you're using zsh, you can do the same for ~/.zshrc
if [ -f ~/.zshrc ] && ! grep -qF "$ENV_VARIABLE" ~/.zshrc; then
    echo "$ENV_VARIABLE" >> ~/.zshrc
fi

# Optionally, you can source the appropriate file to make the variable available immediately
if [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc
elif [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
fi
