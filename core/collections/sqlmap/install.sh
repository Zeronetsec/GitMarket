#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/sqlmap" ]]; then
    command rm -rfv "${GMOPT}/sqlmap"
fi

if [[ -x "${GMBIN}/sqlmap" ]]; then
    command rm -fv "${GMBIN}/sqlmap"
fi

command git clone --depth 1 \
    'https://github.com/sqlmapproject/sqlmap' \
    "${GMOPT}/sqlmap"

command chmod +x -Rv "${GMOPT}/sqlmap"
command ln -sfv \
    "${GMOPT}/sqlmap/sqlmap.py" \
    "${GMBIN}/sqlmap"

# Copyright (c) 2026 Zeronetsec