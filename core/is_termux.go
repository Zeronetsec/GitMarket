// GitMarket Project

package core

import (
    "os"
)

func isTermux() bool {
    prefix := os.Getenv("PREFIX")
    isPrefix := (prefix == "/data/data/com.termux/files/usr")
    _, isTermuxVer := os.LookupEnv("TERMUX_VERSION")
    return isPrefix && isTermuxVer
}

// Copyright (c) 2026 Zeronetsec