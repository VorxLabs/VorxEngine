# ============================================== #
# VorxEngine - Official VorxLabs Project         #
# Copyright (c) 2026-2026 VorxLabs (CodCatDev)   #
# Licensed under the Apache License, Version 2.0 #
# https://github.com/VorxLabs/VorxEngine         #
# Currently file: src/math/vertex.nim            #
# ============================================== #

# Imports
import ./colors

# Vertex
type 
    Vertex* {.packed.} = object
        x*, y*: float32
        color*: ColorRGBA