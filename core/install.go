// GitMarket Project

package core

import (
    "embed"
    "fmt"
    "os"
    "os/exec"
    "path/filepath"
    "encoding/json"
    "gitmarket/utils/color"
)

//go:embed collections/*/*
var installScripts embed.FS

func Install(name string) {
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

    if IsInstalled(name) {
        fmt.Printf(
            "%s[!] %sTool: %s%s %salready installed!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    pkgManager := detectPkgManager()
    if pkgManager == "" {
        fmt.Printf(
            "%s[!] %sNo supported package manager found!\n",
            color.R, color.N,
        )
        return
    }

    metaPath := filepath.Join(
        "collections", name, "metadata.json",
    )

    metaBytes, err := installScripts.ReadFile(metaPath)
    if err != nil {
        fmt.Printf(
            "%s[!] %sMissing: %smetadata.json %snot for %s%s%s\n",
            color.R, color.N, color.GG, color.N, color.GG, name, color.N,
        )
        return
    }

    var meta Metadata
    err = json.Unmarshal(metaBytes, &meta)
    if err != nil {
        fmt.Printf(
            "%s[!] %sInvalid: %smetadata.json%s\n",
            color.R, color.N, color.GG, color.N,
        )
        return
    }

    for _, dep := range meta.Dependencies {
        fmt.Printf(
            "%s[*] %sInstalling dependency: %s%s%s\n",
            color.B, color.N, color.GG, dep, color.N,
        )

        err := installDependency(pkgManager, dep)
        if err != nil {
            fmt.Printf(
                "%s[!] %sFailed dependency: %s%s%s\n",
                color.R, color.N, color.GG, dep, color.N,
            )
        }
    }

    scriptPath := filepath.Join(
        "collections", name, "install.sh",
    )

    data, err := installScripts.ReadFile(scriptPath)
    if err != nil {
        fmt.Printf(
            "%s[!] %sMissing: %sinstall.sh %sfor %s%s%s\n",
            color.R, color.N, color.GG, color.N, color.GG, name, color.N,
        )
        return
    }

    tmpFile, err := os.CreateTemp(
        "", name+"-install-*.sh",
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
            "%s[!] %sFailed write script!\n",
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
        "%s[*] %sRunning install script: %s%s/install.sh%s\n",
        color.B, color.N, color.GG, name, color.N,
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
            "%s[!] %sInstall script failed!\n",
            color.R, color.N,
        )
        return
    }

    fmt.Printf(
        "%s[+] %sSuccessfully installed: %s%s%s\n",
        color.GG, color.N, color.GG, name, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec