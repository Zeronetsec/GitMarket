#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/chprompt" ]]; then
    command rm -rf "${GMOPT}/chprompt"
fi

command cat "${HOME}/.bashrc" | \
    command grep -v 'chprompt' > "${GMTMP}/bashrc_tmp"
command cat "${GMTMP}/bashrc_tmp" > "${HOME}/.bashrc"

# Copyright (c) 2026 Zeronetsec