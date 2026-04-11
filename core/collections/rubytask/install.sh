#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/rubytask" ]]; then
    command rm -rfv "${GMOPT}/rubytask"
fi

if [[ -x "${GMBIN}/rubytask" ]]; then
    command rm -fv "${GMBIN}/rubytask"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Rubytask' \
    "${GMOPT}/rubytask"

command chmod +x -Rv "${GMOPT}/rubytask"
command ln -sfv \
    "${GMOPT}/rubytask/rubytask.rb" \
    "${GMBIN}/rubytask"

# Copyright (c) 2026 Zeronetsec