// GitMarket Project

package utils

import (
    "fmt"
    "time"
    "gitmarket/utils/color"
)

func BirthDay() {
    birthDate := "04-05"
    now := time.Now().Format("01-02")
    if now == birthDate {
        fmt.Printf(
            "%s› %sHappy birthday for %sgitmarket %s🎉\n",
            color.R, color.N, color.GG, color.N,
        )
        fmt.Println()
    }
}

// Copyright (c) 2026 Zeronetsec