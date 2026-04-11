#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/patator" ]]; then
    command rm -rfv "${GMOPT}/patator"
fi

if [[ -x "${GMBIN}/patator" ]]; then
    command rm -fv "${GMBIN}/patator"
fi

# Copyright (c) 2026 Zeronetsec