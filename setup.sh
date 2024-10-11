#!/bin/bash

ENV_VARIABLE='MassTransit__HostUri="sb://biobusdev-00nvc2.servicebus.windows.net"'

# Check if the environment variable is already present in /etc/environment

if ! grep -qF "$ENV_VARIABLE" /etc/environment; then

    # Append the environment variable to /etc/environment

    echo "$ENV_VARIABLE" | sudo tee -a /etc/environment > /dev/null

fi
 
