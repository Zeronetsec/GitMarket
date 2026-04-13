#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -pv "${GMTMP}"
fi

if [[ -f "${GMOPT}/muxly/config/config.conf" ]]; then
    command cp -fv \
        "${GMOPT}/muxly/config/config.conf" \
        "${GMTMP}/muxly_config.conf"
fi

if [[ -d "${GMOPT}/muxly" ]]; then
    command rm -rfv "${GMOPT}/muxly"
fi

if [[ -x "${GMBIN}/muxly" ]]; then
    command rm -fv "${GMBIN}/muxly"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${GMOPT}/muxly"

command cp -fv \
    "${GMTMP}/muxly_config.conf" \
    "${GMOPT}/muxly/config/config.conf"
command rm -fv "${GMTMP}/muxly_config.conf"

command chmod +x -Rv "${GMOPT}/muxly"
command ln -sfv \
    "${GMOPT}/muxly/muxly.sh" \
    "${GMBIN}/muxly"

# Copyright (c) 2026 Zeronetsec