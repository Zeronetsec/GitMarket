#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/sherlock" ]]; then
    command rm -rfv "${GMOPT}/sherlock"
fi

if [[ -x "${GMBIN}" ]]; then
    command rm -fv "${GMBIN}/sherlock"
fi

# Copyright (c) 2026 Zeronetsec