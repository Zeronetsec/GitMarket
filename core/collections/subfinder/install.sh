#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/subfinder" ]]; then
    command rm -rf "${GMOPT}/subfinder"
fi

if [[ -x "${GMBIN}/subfinder" ]]; then
    command rm -f "${GMBIN}/subfinder"
fi

command git clone --depth 1 \
    'https://github.com/projectdiscovery/subfinder' \
    "${GMOPT}/subfinder"

cd "${GMOPT}/subfinder" || exit 1
command go mod tidy
command go build -v -o \
    "${GMBIN}/subfinder" \
    "cmd/subfinder/main.go"
cd

# Copyright (c) 2026 Zeronetsec