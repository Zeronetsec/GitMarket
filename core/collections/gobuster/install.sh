#!/usr/bin/env bash
# GitMarkwt Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/gobuster" ]]; then
    command rm -rfv "${GMOPT}/gobuster"
fi

if [[ -x "${GMBIN}/gobuster" ]]; then
    command rm -fv "${GMBIN}/gobuster"
fi

command git clone --depth 1 \
    'https://github.com/Oj/gobuster' \
    "${GMOPT}/gobuster"

cd "${GMOPT}/gobuster"
command go mod tidy
command go build -v -o "${GMBIN}/gobuster"
cd

# Copyright (c) 2026 Zeronetsec