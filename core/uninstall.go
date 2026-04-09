// GitMarket Project

package core

import (
    "embed"
    "fmt"
    "os"
    "os/exec"
    "path/filepath"
    "gitmarket/utils/color"
)

//go:embed collections/*/uninstall.sh
var uninstallScripts embed.FS

func Uninstall(name string) {
    if name == "" {
        fmt.Printf(
            "%s[!] %sInvalid tool name!\n",
            color.R, color.N,
        )
        return
    }

    if !IsValidPackage(name) {
        fmt.Printf(
            "%s[!] %sTool: %s%s %snot found!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    if !IsInstalled(name) {
        fmt.Printf(
            "%s[!] %sTool: %s%s %sis not installed!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    scriptPath := filepath.Join(
        "collections", name, "uninstall.sh",
    )

    data, err := uninstallScripts.ReadFile(scriptPath)
    if err != nil {
        fmt.Printf(
            "%s[!] %sUninstaller for: %s%s %snot found!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    tmpFile, err := os.CreateTemp(
        "", name+"-uninstall-*.sh",
    )

    if err != nil {
        fmt.Printf(
            "%s[!] %sFailed create temporary file!\n",
            color.R, color.N,
        )
        return
    }
    defer os.Remove(tmpFile.Name())

    _, err = tmpFile.Write(data)
    if err != nil {
        fmt.Printf(
            "%s[!] %sFailed write script\n",
            color.R, color.N,
        )
        return
    }
    tmpFile.Close()

    err = os.Chmod(tmpFile.Name(), 0755)
    if err != nil {
        fmt.Printf(
            "%s[!] %sFailed set permission!\n",
            color.R, color.N,
        )
        return
    }

    fmt.Printf(
        "%s[-] %sUninstalling: %s%s%s\n",
        color.YY, color.N, color.GG, name, color.N,
    )

    SetupEnv(name)
    cmd := exec.Command("bash", tmpFile.Name())

    cmd.Env = os.Environ()
    cmd.Stdout = os.Stdout
    cmd.Stderr = os.Stderr
    cmd.Stdin = os.Stdin

    err = cmd.Run()
    if err != nil {
        fmt.Printf(
            "%s[!] %sUninstall failed: %s%v%s\n",
            color.R, color.N, color.GG, err, color.N,
        )
        return
    }

    fmt.Printf(
        "%s[+] %sSuccessfully uninstalled: %s%s%s\n",
        color.GG, color.N, color.GG, name, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec