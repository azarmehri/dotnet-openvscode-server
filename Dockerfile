FROM gitpod/openvscode-server:latest

USER root
RUN apt-get update && apt-get install -y curl

# Install .NET SDK (Current channel)
# Source: https://docs.microsoft.com/dotnet/core/install/linux-scripted-manual#scripted-install
RUN curl -fsSL https://dot.net/v1/dotnet-install.sh | bash

# https://github.com/nodesource/distributions/blob/master/README.md
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

USER openvscode-server
