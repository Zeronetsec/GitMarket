#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/zphisher" ]]; then
    command rm -rf "${GMOPT}/zphisher"
fi

if [[ -x "${GMBIN}/zphisher" ]]; then
    command rm -f "${GMBIN}/zphisher"
fi

command git clone --depth 1 \
    'https://github.com/htr-tech/zphisher' \
    "${GMOPT}/zphisher"

command chmod +x -R "${GMOPT}/zphisher"
command ln -sf \
    "${GMOPT}/zphisher/zphisher.sh" \
    "${GMBIN}/zphisher"

# Copyright (c) 2026 Zeronetsec