// GitMarket Project

package core

import (
    "os"
)

func GMRoot() string {
    if prefix := os.Getenv("PREFIX"); prefix != "" {
        return prefix
    }

    if isTermux() {
        return "/data/data/com.termux/files/usr"
    }

    return "/usr"
}

// Copyright (c) 2026 Zeronetsec