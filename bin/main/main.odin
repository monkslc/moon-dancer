package main

import "core:fmt"
import "../../c/system/linux"

main :: proc() {
    pid := linux.fork();
    if pid > 0 {
        fmt.println("Started child process with pid:", pid)
    } else if pid == 0 {
        if linux.execve("/usr/bin/ls", nil, nil) < 0 {
            fmt.println("Failed to start child process. Error val:", linux.get_errno());
        }
    } else {
        fmt.println("Error forking. Error val:", linux.get_errno());
    }
}
