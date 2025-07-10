##!/bin/bash
alias ai_desc="ollama run commander2 && ollama stop commander2"
alias ai_run="ollama run commander_short && ollama stop commander_short"

CMD=$(echo "$@" | ai_run | grep -v '^$') 
echo "Executing: ${CMD}"
echo ${CMD} | xargs -0 bash -c 
