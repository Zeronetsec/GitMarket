#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/charmbracelet/glow' \
    "${GMOPT}/glow"

cd "${GMOPT}/glow"
command go mod tidy
command go build -v -o "${GMBIN}/glow"
cd

# Copyright (c) 2026 Zeronetsec