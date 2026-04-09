// GitMarket Project

package core

import (
    "os"
)

func isTermux() bool {
    _, err := os.Stat(
        "/data/data/com.termux/files/usr",
    )
    return err == nil
}

// Copyright (c) 2026 Zeronetsec