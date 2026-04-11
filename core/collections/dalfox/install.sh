#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/dalfox" ]]; then
    command rm -rfv "${GMOPT}/dalfox"
fi

if [[ -x "${GMBIN}/dalfox" ]]; then
    command rm -fv "${GMBIN}/dalfox"
fi

command git clone --depth 1 \
    'https://github.com/hahwul/dalfox' \
    "${GMOPT}/dalfox"

cd "${GMOPT}/dalfox"
command go mod tidy
command go build -v -o "${GMBIN}/dalfox"
cd

# Copyright (c) 2026 Zeronetsec