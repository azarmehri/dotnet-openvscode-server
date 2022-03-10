FROM gitpod/openvscode-server:latest

USER root
RUN apt-get update && apt-get install -y curl

# Install .NET SDK (Current channel)
# Source: https://docs.microsoft.com/dotnet/core/install/linux-scripted-manual#scripted-install
RUN mkdir -p /home/.dotnet && curl -fsSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --install-dir /home/.dotnet
ENV PATH=/home/.dotnet:$PATH
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

RUN apt-get install -y libicu60

# https://github.com/nodesource/distributions/blob/master/README.md
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs

USER openvscode-server
