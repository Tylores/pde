!#/bin/bash

# install ollama for hosting model
curl -fsSL https://ollama.com/install.sh | sh
ollama pull gemma4:12b

# install Pi agent
curl -fsSL https://pi.dev/install.sh | sh
export EDITOR="nvim"


