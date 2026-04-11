#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/gum" ]]; then
    command rm -rfv "${GMOPT}/gum"
fi

if [[ -x "${GMBIN}/gum" ]]; then
    command rm -fv "${GMBIN}/gum"
fi

command git clone --depth 1 \
    'https://github.com/charmbracelet/gum' \
    "${GMOPT}/gum"

cd "${GMOPT}/gum"
command go mod tidy
command go build -v -o "${GMBIN}/gum"
cd

# Copyright (c) 2026 Zeronetsec