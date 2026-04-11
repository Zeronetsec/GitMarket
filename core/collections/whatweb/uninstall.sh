#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/whatweb" ]]; then
    command rm -rfv "${GMOPT}/whatweb"
fi

if [[ -x "${GMBIN}/whatweb" ]]; then
    command rm -fv "${GMBIN}/whatweb"
fi

# Copyright (c) 2026 Zeronetsec