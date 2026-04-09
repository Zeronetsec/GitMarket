#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/ffuf" ]]; then
    command rm -rf "${GMOPT}/ffuf"
fi

if [[ -x "${GMBIN}/ffuf" ]]; then
    command rm -f "${GMBIN}/ffuf"
fi

command git clone --depth 1 \
    'https://github.com/ffuf/ffuf' \
    "${GMOPT}/ffuf"

cd "${GMOPT}/ffuf" || exit 1
command go mod tidy
command go build -v -o "${GMBIN}/ffuf"
cd

# Copyright (c) 2026 Zeronetsec