#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/nuclei" ]]; then
    command rm -rf "${GMOPT}/nuclei"
fi

if [[ -x "${GMBIN}/nuclei" ]]; then
    command rm -f "${GMBIN}/nuclei"
fi

command git clone --depth 1 \
    'https://github.com/projectdiscovery/nuclei' \
    "${GMOPT}/nuclei"

cd "${GMOPT}/nuclei" || exit 1
command go mod tidy
command go build -v -o \
    "${GMBIN}/nuclei" \
    "cmd/nuclei/main.go"
cd

# Copyright (c) 2026 Zeronetsec