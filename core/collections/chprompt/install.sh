#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -p "${GMTMP}"
fi

if [[ -d "${GMTMP}/chprompt" ]]; then
    command rm -rf "${GMTMP}/chprompt"
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/chprompt" ]]; then
    command rm -rf "${GMOPT}/chprompt"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Chprompt' \
    "${GMTMP}/chprompt"

cd "${GMTMP}/chprompt" || exit 1
command chmod +x "install.sh"
command bash "install.sh"
cd

# Copyright (c) 2026 Zeronetsec