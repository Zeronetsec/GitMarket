#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/comet" ]]; then
    command rm -rfv "${GMOPT}/comet"
fi

if [[ -x "${GMBIN}/comet" ]]; then
    command rm -fv "${GMBIN}/comet"
fi

# Copyright (c) 2026 Zeronetsec