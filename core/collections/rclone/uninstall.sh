#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/rclone" ]]; then
    command rm -rf "${GMOPT}/rclone"
fi

if [[ -x "${GMBIN}/rclone" ]]; then
    command rm -f "${GMBIN}/rclone"
fi

# Copyright (c) 2026 Zeronetsec