#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/amass" ]]; then
    command rm -rfv "${GMOPT}/amass"
fi

if [[ -x "${GMBIN}/amass" ]]; then
    command rm -fv "${GMBIN}/amass"
fi

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