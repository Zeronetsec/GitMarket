#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/projectdiscovery/naabu' \
    "${GMOPT}/naabu"

cd "${GMOPT}/naabu"
command go mod tidy
command go build -v -o \
    "${GMBIN}/naabu" \
    "cmd/naabu/main.go"
cd

# Copyright (c) 2026 Zeronetsec