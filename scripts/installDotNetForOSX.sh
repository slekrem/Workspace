#!/bin/bash

# Install pre-requisites
brew update
brew install openssl
brew link --force openssl

# Install .NET Core SDK
curl -O https://raw.githubusercontent.com/dotnet/cli/rel/1.0.0/scripts/obtain/uninstall/dotnet-uninstall-pkgs.sh
bash dotnet-uninstall-pkgs.sh

open https://go.microsoft.com/fwlink/?LinkID=798400
