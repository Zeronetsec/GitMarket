#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/projectdiscovery/httpx' \
    "${GMOPT}/httpx"

cd "${GMOPT}/httpx"
command go mod tidy
command go build -v -o \
    "${GMBIN}/httpx" \
    "cmd/httpx/httpx.go"
cd

# Copyright (c) 2026 Zeronetsec