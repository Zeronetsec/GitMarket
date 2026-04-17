#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/owasp-amass/amass' \
    "${GMOPT}/amass"

cd "${GMOPT}/amass"
command go mod tidy
command go build -v -o \
    "${GMBIN}/amass" \
    ./cmd/amass
cd

# Copyright (c) 2026 Zeronetsec