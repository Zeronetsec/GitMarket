#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/dylanaraps/neofetch' \
    "${GMOPT}/neofetch"

command chmod +x -Rv "${GMOPT}/neofetch"
command ln -sfv \
    "${GMOPT}/neofetch/neofetch" \
    "${GMBIN}/neofetch"

# Copyright (c) 2026 Zeronetsec