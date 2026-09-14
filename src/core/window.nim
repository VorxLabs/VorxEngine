# ============================================== #
# VorxEngine - Official VorxLabs Project         #
# Copyright (c) 2026-2026 VorxLabs (CodCatDev)   #
# Licensed under the Apache License, Version 2.0 #
# https://github.com/VorxLabs/VorxEngine         #
# Currently file: src/core/window.nim            #
# ============================================== #

# Imports
#import ../math/colors
#import ../math/vertex
import ../sdl2/src/sdl2

# Window
type 
    Window* = ref object
        title*: string
        width*, height*: int
        sdlWindow*: WindowPtr
        sdlRenderer*: RendererPtr

# Initialize SDL
proc initSDL*() =
    if sdl2.init(INIT_VIDEO) != SdlSuccess:
        raise newException(IOError, "SDL_Init failed: " & $getError())

# Window
proc newWindow*(title: string, width, height: int): Window =
    let sdlWin = createWindow(
        title, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
        width.cint, height.cint, SDL_WINDOW_SHOWN
    )
    if sdlWin == nil:
        raise newException(IOError, "SDL_CreateWindow failed: " & $getError())

    let renderer = createRenderer(sdlWin, -1, Renderer_Accelerated)

    result = Window(
        title: title, width: width, height: height,
        sdlWindow: sdlWin, sdlRenderer: renderer
    )