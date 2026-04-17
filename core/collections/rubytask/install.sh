#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Rubytask' \
    "${GMOPT}/rubytask"

command chmod +x -Rv "${GMOPT}/rubytask"
command ln -sfv \
    "${GMOPT}/rubytask/rubytask.rb" \
    "${GMBIN}/rubytask"

# Copyright (c) 2026 Zeronetsec