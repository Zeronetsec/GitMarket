// GitMarket Project

package utils

import (
    "fmt"
    "os"
    "os/exec"
    "gitmarket/color"
)

func Install(name string) {
    if PreCheck(name) {
        fmt.Printf(
            "%s[!] %sPackage: %s%s %salready installed!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    packages, err := loadPackages()
    if err != nil {
        fmt.Printf(
            "%s[!] %sError: %s%v%s\n",
            color.R, color.N, color.GG, err, color.N,
        )
        return
    }

    for _, pkg := range packages {
        if pkg.Name == name {
            fmt.Printf(
                "%s[*] %sInstalling: %s%s%s\n",
                color.B, color.N, color.GG, pkg.Name, color.N,
            )

            if HasDependency(pkg.Dependency) {
                fmt.Printf(
                    "%s[*] %sInstalling dependencies...\n",
                    color.B, color.N,
                )
                InstallDependencies(pkg.Dependency)
            }

            for _, cmdStr := range pkg.Install {
                cmdStr = os.ExpandEnv(cmdStr)
                fmt.Printf(
                    "%s>> %s%s\n",
                    color.YY, color.N, cmdStr,
                )

                cmd := exec.Command("bash", "-c", cmdStr)
                cmd.Stdout = os.Stdout
                cmd.Stderr = os.Stderr

                if err := cmd.Run(); err != nil {
                    fmt.Printf(
                        "%s[!] %sError: %s%v%s\n",
                        color.R, color.N, color.GG, err, color.N,
                    )
                    return
                }
            }
            return
        }
    }

    fmt.Printf(
        "%s[!] %sPackage: %s%s %snot found!\n",
        color.R, color.N, color.GG, name, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec