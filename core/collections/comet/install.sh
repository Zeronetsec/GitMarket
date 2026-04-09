#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -p "${GMTMP}"
fi

if [[ -d "${GMTMP}/comet" ]]; then
    command rm -rf "${GMTMP}/comet"
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/comet" ]]; then
    command rm -rf "${GMOPT}/comet"
fi

if [[ -x "${GMBIN}/comet" ]]; then
    command rm -f "${GMBIN}/comet"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Comet' \
    "${GMTMP}/comet"

cd "${GMTMP}/comet" || exit 1
command chmod +x "install.sh"
command bash "install.sh"
cd

# Copyright (c) 2026 Zeronetsec