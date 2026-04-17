#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/htr-tech/zphisher' \
    "${GMOPT}/zphisher"

command chmod +x -Rv "${GMOPT}/zphisher"
command ln -sfv \
    "${GMOPT}/zphisher/zphisher.sh" \
    "${GMBIN}/zphisher"

# Copyright (c) 2026 Zeronetsec