#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/httpx" ]]; then
    command rm -rfv "${GMOPT}/httpx"
fi

if [[ -x "${GMBIN}/httpx" ]]; then
    command rm -fv "${GMBIN}/httpx"
fi

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