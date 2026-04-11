#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/muxly" ]]; then
    command rm -rfv "${GMOPT}/muxly"
fi

if [[ -x "${GMBIN}/muxly" ]]; then
    command rm -fv "${GMBIN}/muxly"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${GMOPT}/muxly"

command chmod +x -Rv "${GMOPT}/muxly"
command ln -sfv \
    "${GMOPT}/muxly/muxly.sh" \
    "${GMBIN}/muxly"

# Copyright (c) 2026 Zeronetsec