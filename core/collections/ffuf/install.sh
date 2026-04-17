#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/ffuf/ffuf' \
    "${GMOPT}/ffuf"

cd "${GMOPT}/ffuf"
command go mod tidy
command go build -v -o "${GMBIN}/ffuf"
cd

# Copyright (c) 2026 Zeronetsec