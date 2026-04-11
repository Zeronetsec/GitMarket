#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/neofetch" ]]; then
    command rm -rfv "${GMOPT}/neofetch"
fi

if [[ -x "${GMBIN}/neofetch" ]]; then
    command rm -fv "${GMBIN}/neofetch"
fi

command git clone --depth 1 \
    'https://github.com/dylanaraps/neofetch' \
    "${GMOPT}/neofetch"

command chmod +x -Rv "${GMOPT}/neofetch"
command ln -sfv \
    "${GMOPT}/neofetch/neofetch" \
    "${GMBIN}/neofetch"

# Copyright (c) 2026 Zeronetsec