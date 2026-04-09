#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/neofetch" ]]; then
    command rm -rf "${GMOPT}/neofetch"
fi

if [[ -x "${GMBIN}/neofetch" ]]; then
    command rm -f "${GMBIN}/neofetch"
fi

command git clone --depth 1 \
    'https://github.com/dylanaraps/neofetch' \
    "${GMOPT}/neofetch"

command chmod +x -R "${GMOPT}/neofetch"
command ln -sf \
    "${GMOPT}/neofetch/neofetch" \
    "${GMBIN}/neofetch"

# Copyright (c) 2026 Zeronetsec