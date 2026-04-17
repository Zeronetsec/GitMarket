#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Gospel' \
    "${GMOPT}/gospel"

cd "${GMOPT}/gospel"
command go mod tidy
command go build -v -o "${GMBIN}/gospel"
cd

# Copyright (c) 2026 Zeronetsec