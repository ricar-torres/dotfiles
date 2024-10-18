#!/bin/bash
# Define your environment variable
ENV_VARIABLE="export MassTransit__HostUri='sb://biobusdev-00rtg1.servicebus.windows.net'"
# Append the environment variable to .bashrc if it's not already present
if ! grep -qF "$ENV_VARIABLE" ~/.bashrc; then
    echo "$ENV_VARIABLE" >> ~/.bashrc
fi
