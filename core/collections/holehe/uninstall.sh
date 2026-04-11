#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/holehe" ]]; then
    command rm -rfv "${GMOPT}/holehe"
fi

if [[ -x "${GMBIN}/holehe" ]]; then
    command rm -fv "${GMBIN}/holehe"
fi

# Copyright (c) 2026 Zeronetsec