#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/commixproject/commix' \
    "${GMOPT}/commix"

command chmod +x -Rv "${GMOPT}/commix"
command ln -sfv \
    "${GMOPT}/commix/commix.py" \
    "${GMBIN}/commix"

# Copyright (c) 2026 Zeronetsec