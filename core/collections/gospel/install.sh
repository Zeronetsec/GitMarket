#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/gospel" ]]; then
    command rm -rfv "${GMOPT}/gospel"
fi

if [[ -x "${GMBIN}/gospel" ]]; then
    command rm -fv "${GMBIN}/gospel"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Gospel' \
    "${GMOPT}/gospel"

cd "${GMOPT}/gospel"
command go mod tidy
command go build -v -o "${GMBIN}/gospel"
cd

# Copyright (c) 2026 Zeronetsec