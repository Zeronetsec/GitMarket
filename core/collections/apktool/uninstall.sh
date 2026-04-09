#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/apktool" ]]; then
    command rm -rf "${GMOPT}/apktool"
fi

if [[ -x "${GMBIN}/apktool" ]]; then
    command rm -f "${GMBIN}/apktool"
fi

# Copyright (c) 2026 Zeronetsec