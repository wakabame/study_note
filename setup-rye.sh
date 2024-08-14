#/bin/bash
# Ryeのバージョン固定
RYE_VERSION=0.34.0
curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash
source "$HOME/.rye/env"
rye config --set-bool behavior.use-uv=true
