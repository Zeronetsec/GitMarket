#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/naabu" ]]; then
    command rm -rf "${GMOPT}/naabu"
fi

if [[ -x "${GMBIN}/naabu" ]]; then
    command rm -f "${GMBIN}/naabu"
fi

command git clone --depth 1 \
    'https://github.com/projectdiscovery/naabu' \
    "${GMOPT}/naabu"

cd "${GMOPT}/naabu" || exit 1
command go mod tidy
command go build -v -o \
    "${GMBIN}/naabu" \
    "cmd/naabu/main.go"
cd

# Copyright (c) 2026 Zeronetsec