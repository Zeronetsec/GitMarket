#!/usr/bin/env bash
# GitMarkwt Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/gobuster" ]]; then
    command rm -rf "${GMOPT}/gobuster"
fi

if [[ -x "${GMBIN}/gobuster" ]]; then
    command rm -f "${GMBIN}/gobuster"
fi

command git clone --depth 1 \
    'https://github.com/Oj/gobuster' \
    "${GMOPT}/gobuster"

cd "${GMOPT}/gobuster" || exit 1
command go mod tidy
command go build -v -o "${GMBIN}/gobuster"
cd

# Copyright (c) 2026 Zeronetsec