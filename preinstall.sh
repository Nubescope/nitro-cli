#!/bin/bash
set -e
artifact=$([[ "$(uname)" == "Darwin" ]] && echo "nitro-macos" || echo "nitro-linux")
curl -#fL https://github.com/nitro-build/cli/releases/download/"$(npm pkg get version | xargs echo)"/"${artifact}" > nitro
chmod +x nitro