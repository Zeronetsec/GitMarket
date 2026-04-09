#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/sqlmap" ]]; then
    command rm -rf "${GMOPT}/sqlmap"
fi

if [[ -x "${GMBIN}/sqlmap" ]]; then
    command rm -f "${GMBIN}/sqlmap"
fi

command git clone --depth 1 \
    'https://github.com/sqlmapproject/sqlmap' \
    "${GMOPT}/sqlmap"

command chmod +x -R "${GMOPT}/sqlmap"
command ln -sf \
    "${GMOPT}/sqlmap/sqlmap.py" \
    "${GMBIN}/sqlmap"

# Copyright (c) 2026 Zeronetsec