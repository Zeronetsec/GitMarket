#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/apktool" ]]; then
    command rm -rfv "${GMOPT}/apktool"
fi

if [[ -x "${GMBIN}/apktool" ]]; then
    command rm -fv "${GMBIN}/apktool"
fi

# Copyright (c) 2026 Zeronetsec