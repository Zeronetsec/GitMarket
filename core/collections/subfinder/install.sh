#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/subfinder" ]]; then
    command rm -rfv "${GMOPT}/subfinder"
fi

if [[ -x "${GMBIN}/subfinder" ]]; then
    command rm -fv "${GMBIN}/subfinder"
fi

command git clone --depth 1 \
    'https://github.com/projectdiscovery/subfinder' \
    "${GMOPT}/subfinder"

cd "${GMOPT}/subfinder"
command go mod tidy
command go build -v -o \
    "${GMBIN}/subfinder" \
    "cmd/subfinder/main.go"
cd

# Copyright (c) 2026 Zeronetsec