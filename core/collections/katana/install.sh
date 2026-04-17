#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/projectdiscovery/katana' \
    "${GMOPT}/katana"

cd "${GMOPT}/katana"
command go mod tidy
command go build -v -o \
    "${GMBIN}/katana" \
    "cmd/katana/main.go"
cd

# Copyright (c) 2026 Zeronetsec