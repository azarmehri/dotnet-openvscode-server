FROM gitpod/openvscode-server:latest

USER root
RUN apt-get update && apt-get install -y curl

# Install .NET SDK (Current channel)
# Source: https://docs.microsoft.com/dotnet/core/install/linux-scripted-manual#scripted-install
RUN curl -fsSL https://dot.net/v1/dotnet-install.sh | bash

USER openvscode-server
