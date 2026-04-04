// GitMarket Project

package utils

import (
    "fmt"
    "os"
    "os/exec"
)

func InstallPackage(manager, pkg string) error {
    var cmd *exec.Cmd

    switch manager {
        case "apt":
            cmd = exec.Command(
                "bash", "-c", fmt.Sprintf(
                    "apt install -y %s", pkg,
                ),
            )
        case "apk":
            cmd = exec.Command(
                "bash", "-c", fmt.Sprintf(
                    "apk add %s", pkg,
                ),
            )
        case "dnf", "yum":
            cmd = exec.Command(
                "bash", "-c", fmt.Sprintf(
                    "%s install -y %s", manager, pkg,
                ),
            )
        case "pacman":
            cmd = exec.Command(
                "bash", "-c", fmt.Sprintf(
                    "pacman -S --noconfirm %s", pkg,
                ),
            )
        default:
            return nil
    }

    cmd.Stdout = os.Stdout
    cmd.Stderr = os.Stderr

    return cmd.Run()
}

// Copyright (c) 2026 Zeronetsec