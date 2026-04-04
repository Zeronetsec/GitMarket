// GitMarket Project

package utils

import (
    "strings"
)

func HasDependency(deps []string) bool {
    for _, d := range deps {
        if strings.TrimSpace(d) != "" {
            return true
        }
    }
    return false
}

// Copyright (c) 2026 Zeronetsec