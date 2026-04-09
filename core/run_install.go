// GitMarket Project

package core

import (
    "fmt"
    "os"
    "os/exec"
)

func runInstall(pkgManager, pkg string) error {
    var cmd *exec.Cmd
	switch pkgManager {
        case "apt":
            cmd = exec.Command(
                "apt", "install", "-y", pkg,
            )
        case "apk":
            cmd = exec.Command(
                "apk", "add", pkg,
            )
        case "dnf":
            cmd = exec.Command(
                "dnf", "install", "-y", pkg,
            )
        case "pacman":
            cmd = exec.Command(
                "pacman", "-S", "--noconfirm", pkg,
            )
        case "yum":
            cmd = exec.Command(
                "yum", "install", "-y", pkg,
            )
        default:
            return fmt.Errorf(
                "Unsupported package manager!",
            )
    }

    cmd.Stdout = os.Stdout
    cmd.Stderr = os.Stderr
    return cmd.Run()
}

// Copyright (c) 2026 Zeronetsec