#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/Zeronetsec/GitMarket' \
    "${GMOPT}/gitmarket"

cd "${GMOPT}/gitmarket"
command go mod tidy
command go build -v -o "${GMBIN}/gitmarket"
cd

# Copyright (c) 2026 Zeronetsec