#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${HOME}/.config/muxly" ]]; then
    command mkdir -pv "${HOME}/.config/muxly"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${GMOPT}/muxly"

if [[ ! -f "${HOME}/.config/muxly/config.conf" ]]; then
    command cp -fv \
        "${GMOPT}/muxly/config/config.xonf" \
        "${HOME}/.config/muxly/config.conf"
fi

command chmod +x -Rv "${GMOPT}/muxly"
command ln -sfv \
    "${GMOPT}/muxly/muxly.sh" \
    "${GMBIN}/muxly"

# Copyright (c) 2026 Zeronetsec