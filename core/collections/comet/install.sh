#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Comet' \
    "${GMOPT}/comet"

cd "${GMOPT}/comet"
command cp -fv \
    "${GMOPT}/comet/utils/listcmd/metadata"/*.json \
    "${GMOPT}/comet/utils/searchcmd/metadata"/
command rm -fv "${GMOPT}/comet/utils/searchcmd/placeholder.txt"
command go mod tidy
command go build -v -o "${GMBIN}/comet"
cd

# Copyright (c) 2026 Zeronetsec