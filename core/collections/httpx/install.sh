#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/httpx" ]]; then
    command rm -rf "${GMOPT}/httpx"
fi

if [[ -x "${GMBIN}/httpx" ]]; then
    command rm -f "${GMBIN}/httpx"
fi

command git clone --depth 1 \
    'https://github.com/projectdiscovery/httpx' \
    "${GMOPT}/httpx"

cd "${GMOPT}/httpx" || exit 1
command go mod tidy
command go build -v -o \
    "${GMBIN}/httpx" \
    "cmd/httpx/main.go"
cd

# Copyright (c) 2026 Zeronetsec