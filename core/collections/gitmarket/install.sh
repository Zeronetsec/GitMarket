#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/gitmarket" ]]; then
    command rm -rfv "${GMOPT}/gitmarket"
fi

if [[ -x "${GMBIN}/gitmarket" ]]; then
    command rm -fv "${GMBIN}/gitmarket"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/GitMarket' \
    "${GMOPT}/gitmarket"

cd "${GMOPT}/gitmarket"
command go mod tidy
command go build -v -o "${GMBIN}/gitmarket"
cd

# Copyright (c) 2026 Zeronetsec