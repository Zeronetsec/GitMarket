#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -p "${GMTMP}"
fi

if [[ -d "${GMTMP}/gitmarket" ]]; then
    command rm -rf "${GMTMP}/gitmarket"
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/gitmarket" ]]; then
    command rm -rf "${GMOPT}/gitmarket"
fi

if [[ -x "${GMBIN}/gitmarket" ]]; then
    command rm -f "${GMBIN}/gitmarket"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/GitMarket' \
    "${GMTMP}/gitmarket"

cd "${GMTMP}/gitmarket" || exit 1
command chmod +x "install.sh"
command bash "install.sh"
cd

# Copyright (c) 2026 Zeronetsec