#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/tomnomnom/assetfinder' \
    "${GMOPT}/assetfinder"

cd "${GMOPT}/assetfinder"
command go mod init assetfinder
command go mod tidy
command go build -v -o "${GMBIN}/assetfinder"
cd

# Copyright (c) 2026 Zeronetsec