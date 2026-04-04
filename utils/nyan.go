// GitMarket Project

package utils

import (
    "fmt"
    "time"
)

func Nyan(duration time.Duration) {
    faces := []string{
        "(｡◕‿◕｡)",
        "(≧◡≦)",
        "ʕ•ᴥ•ʔ",
        "(・ω・)",
        "(๑˃ᴗ˂)ﻭ",
        "(ง'̀-'́)ง",
        "(=^･ω･^=)",
    }

    delay := 200 * time.Millisecond
    end := time.After(duration)
    nyaa := 0

    for {
        select {
            case <-end:
                fmt.Print("\r\033[K")
                return
            default:
                fmt.Printf(
                    "\r%s\033[K",
                    faces[nyaa%len(faces)],
                )

            time.Sleep(delay)
            nyaa++
        }
    }
}

// Copyright (c) 2026 Zeronetsec