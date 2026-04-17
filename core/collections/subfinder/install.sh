#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/projectdiscovery/subfinder' \
    "${GMOPT}/subfinder"

cd "${GMOPT}/subfinder"
command go mod tidy
command go build -v -o \
    "${GMBIN}/subfinder" \
    "cmd/subfinder/main.go"
cd

# Copyright (c) 2026 Zeronetsec