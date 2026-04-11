#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/nuclei" ]]; then
    command rm -rfv "${GMOPT}/nuclei"
fi

if [[ -x "${GMBIN}/nuclei" ]]; then
    command rm -fv "${GMBIN}/nuclei"
fi

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