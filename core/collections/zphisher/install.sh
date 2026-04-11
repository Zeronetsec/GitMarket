#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/zphisher" ]]; then
    command rm -rfv "${GMOPT}/zphisher"
fi

if [[ -x "${GMBIN}/zphisher" ]]; then
    command rm -fv "${GMBIN}/zphisher"
fi

command git clone --depth 1 \
    'https://github.com/htr-tech/zphisher' \
    "${GMOPT}/zphisher"

command chmod +x -Rv "${GMOPT}/zphisher"
command ln -sfv \
    "${GMOPT}/zphisher/zphisher.sh" \
    "${GMBIN}/zphisher"

# Copyright (c) 2026 Zeronetsec