#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/muxly" ]]; then
    command rm -rfv "${GMOPT}/muxly"
fi

if [[ -x "${GMBIN}/muxly" ]]; then
    command rm -fv "${GMBIN}/muxly"
fi

# Copyright (c) 2026 Zeronetsec