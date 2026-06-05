!#/bin/bash

# install ollama for hosting model
curl -fsSL https://ollama.com/install.sh | sh
ollama pull lfm2.5

# install Pi agent
curl -fsSL https://omp.sh/install | sh
export EDITOR="nvim"


