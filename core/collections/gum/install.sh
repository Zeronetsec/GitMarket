#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/charmbracelet/gum' \
    "${GMOPT}/gum"

cd "${GMOPT}/gum"
command go mod tidy
command go build -v -o "${GMBIN}/gum"
cd

# Copyright (c) 2026 Zeronetsec