#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${GMOPT}/muxly"

command chmod +x -Rv "${GMOPT}/muxly"
command ln -sfv \
    "${GMOPT}/muxly/muxly.sh" \
    "${GMBIN}/muxly"

# Copyright (c) 2026 Zeronetsec