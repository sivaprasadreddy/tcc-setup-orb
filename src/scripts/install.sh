#!/bin/bash

# determine the architecture of the platform
suffix=$([[ $(uname -m) == "aarch64" || $(uname -m) == "arm64" ]] && echo "arm64" || echo "x86-64")

# fetch the latest TCC agent version and make it executable
curl -L -o /tmp/agent https://app.testcontainers.cloud/download/testcontainers-cloud-agent_linux_$suffix
chmod +x /tmp/agent

# start agent as background process
#/tmp/agent &

# make sure TCC is ready before proceeding
#/tmp/agent wait
