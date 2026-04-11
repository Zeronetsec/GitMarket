#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/glow" ]]; then
    command rm -rfv "${GMOPT}/glow"
fi

if [[ -x "${GMBIN}/glow" ]]; then
    command rm -fv "${GMBIN}/glow"
fi

command git clone --depth 1 \
    'https://github.com/charmbracelet/glow' \
    "${GMOPT}/glow"

cd "${GMOPT}/glow"
command go mod tidy
command go build -v -o "${GMBIN}/glow"
cd

# Copyright (c) 2026 Zeronetsec