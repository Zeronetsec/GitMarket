#!/usr/bin/env bash
# GitMarkwt Project

command git clone --depth 1 \
    'https://github.com/Oj/gobuster' \
    "${GMOPT}/gobuster"

cd "${GMOPT}/gobuster"
command go mod tidy
command go build -v -o "${GMBIN}/gobuster"
cd

# Copyright (c) 2026 Zeronetsec