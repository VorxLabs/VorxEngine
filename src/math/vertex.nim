# ============================================== #
# VorxEngine - Official VorxLabs Project         #
# Copyright (c) 2026-2026 VorxLabs (CodCatDev)   #
# Licensed under the Apache License, Version 2.0 #
# https://github.com/VorxLabs/VorxEngine         #
# ============================================== #

import colors

type Vertex* = object
    x*, y*: float32
    r*, g*, b*, a*: uint8

proc getVertexColor*(self: Vertex): colors.ColorRGBA =
    colors.ColorRGBA(r: self.r, g: self.g, b: self.b, a: self.a)
