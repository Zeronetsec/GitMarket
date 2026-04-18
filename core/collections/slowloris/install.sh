#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/gkbrk/slowloris' \
    "${GMOPT}/slowloris"

command chmod +x -Rv "${GMOPT}/slowloris"
command ln -sfv \
    "${GMOPT}/slowloris.py" \
    "${GMBIN}/slowloris"

# Copyright (c) 2026 Zeronetsec