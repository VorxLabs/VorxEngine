# ============================================== #
# VorxEngine - Official VorxLabs Project         #
# Copyright (c) 2026-2026 VorxLabs (CodCatDev)   #
# Licensed under the Apache License, Version 2.0 #
# https://github.com/VorxLabs/VorxEngine         #
# ============================================== #

type ColorRGBA* = object
    r*, g*, b*, a*: uint8

proc unpackRGBA*(self: ColorRGBA): tuple[r, g, b, a: uint8] =
    (self.r, self.g, self.b, self.a)