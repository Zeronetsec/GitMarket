#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/assetfinder" ]]; then
    command rm -rfv "${GMOPT}/assetfinder"
fi

if [[ -x "${GMBIN}/assetfinder" ]]; then
    command rm -fv "${GMBIN}/assetfinder"
fi

command git clone --depth 1 \
    'https://github.com/tomnomnom/assetfinder' \
    "${GMOPT}/assetfinder"

cd "${GMOPT}/assetfinder"
command go mod init assetfinder
command go mod tidy
command go build -v -o "${GMBIN}/assetfinder"
cd

# Copyright (c) 2026 Zeronetsec