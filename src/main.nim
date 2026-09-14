# ============================================== #
# VorxEngine - Official VorxLabs Project         #
# Copyright (c) 2026-2026 VorxLabs (CodCatDev)   #
# Licensed under the Apache License, Version 2.0 #
# https://github.com/VorxLabs/VorxEngine         #
# Currently file: src/main.nim                   #
# ============================================== #

# Imports
import ./core/window
import ./sdl2/src/sdl2

# Main
proc main() =
    let window: Window = newWindow("VorxEngine", 800, 600)
    var running: bool = true

    echo("VorxEngine Test Build v0.0.2")
    echo("Пустое окно в создании движков, как hello world в кодинге...")

    while running:

        setDrawColor(window.sdlRenderer, 30, 30, 40, 255)
        clear(window.sdlRenderer)
        present(window.sdlRenderer)

main()