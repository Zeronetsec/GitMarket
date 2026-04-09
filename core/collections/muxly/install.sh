#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -p "${GMTMP}"
fi

if [[ -d "${GMTMP}/muxly" ]]; then
    command rm -rf "${GMTMP}/muxly"
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/muxly" ]]; then
    command rm -rf "${GMOPT}/muxly"
fi

if [[ -x "${GMBIN}/muxly" ]]; then
    command rm -f "${GMBIN}/muxly"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${GMTMP}/muxly"

cd "${GMTMP}/muxly" || exit 1
command chmod +x "install.sh"
command bash "install.sh"
cd

# Copyright (c) 2026 Zeronetsec