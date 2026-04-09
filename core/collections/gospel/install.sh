#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -p "${GMTMP}"
fi

if [[ -d "${GMTMP}/gospel" ]]; then
    command rm -rf "${GMTMP}/gospel"
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/gospel" ]]; then
    command rm -rf "${GMOPT}/gospel"
fi

if [[ -x "${GMBIN}/gospel" ]]; then
    command rm -f "${GMBIN}/gospel"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Gospel' \
    "${GMTMP}/gospel"

cd "${GMTMP}/gospel" || exit 1
command chmod +x "install.sh"
command bash "install.sh"
cd

# Copyright (c) 2026 Zeronetsec