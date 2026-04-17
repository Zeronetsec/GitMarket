#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/projectdiscovery/nuclei' \
    "${GMOPT}/nuclei"

cd "${GMOPT}/nuclei"
command go mod tidy
command go build -v -o \
    "${GMBIN}/nuclei" \
    "cmd/nuclei/main.go"
cd

# Copyright (c) 2026 Zeronetsec