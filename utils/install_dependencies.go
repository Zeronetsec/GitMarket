// GitMarket Project

package utils

import (
    "fmt"
    "strings"
    "gitmarket/color"
)

func InstallDependencies(deps []string) {
    manager := Detector()
    if manager == "" {
        fmt.Printf(
            "%s[!] %sNo package manager found!\n",
            color.R, color.N,
        )
        return
    }

    fmt.Printf(
        "%s[*] %sUsing package manager: %s%s%s\n",
        color.B, color.N, color.GG, manager, color.N,
    )

    for _, dep := range deps {
        options := strings.Split(dep, "::")
        success := false

        for _, opt := range options {
            fmt.Printf(
                "%s[*] %sTrying: %s%s%s\n",
                color.B, color.N, color.GG, opt, color.N,
            )

            err := InstallPackage(manager, opt)
            if err == nil {
                fmt.Printf(
                    "%s[+] %sInstalled: %s%s%s\n",
                    color.GG, color.N, color.GG, opt, color.N,
                )

                success = true
                break
            } else {
                fmt.Printf(
                    "%s[!] %sFailed: %s%s%s\n",
                    color.R, color.N, color.GG, opt, color.N,
                )
            }
        }

        if !success {
            fmt.Printf(
                "%s[!] %sAll options failed for: %s%s%s\n",
                color.R, color.N, color.GG, dep, color.N,
            )
        }
    }
}

// Copyright (c) 2026 Zeronetsec