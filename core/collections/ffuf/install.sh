#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/ffuf" ]]; then
    command rm -rfv "${GMOPT}/ffuf"
fi

if [[ -x "${GMBIN}/ffuf" ]]; then
    command rm -fv "${GMBIN}/ffuf"
fi

command git clone --depth 1 \
    'https://github.com/ffuf/ffuf' \
    "${GMOPT}/ffuf"

cd "${GMOPT}/ffuf"
command go mod tidy
command go build -v -o "${GMBIN}/ffuf"
cd

# Copyright (c) 2026 Zeronetsec