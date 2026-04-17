#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/sqlmapproject/sqlmap' \
    "${GMOPT}/sqlmap"

command chmod +x -Rv "${GMOPT}/sqlmap"
command ln -sfv \
    "${GMOPT}/sqlmap/sqlmap.py" \
    "${GMBIN}/sqlmap"

# Copyright (c) 2026 Zeronetsec