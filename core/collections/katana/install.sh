#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/katana" ]]; then
    command rm -rf "${GMOPT}/katana"
fi

if [[ -x "${GMBIN}/katana" ]]; then
    command rm -f "${GMBIN}/katana"
fi

command git clone --depth 1 \
    'https://github.com/projectdiscovery/katana' \
    "${GMOPT}/katana"

cd "${GMOPT}/katana" || exit 1
command go mod tidy
command go build -v -o \
    "${GMBIN}/katana" \
    "cmd/katana/main.go"
cd

# Copyright (c) 2026 Zeronetsec