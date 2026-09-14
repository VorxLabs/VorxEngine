# ============================================== #
# VorxEngine - Official VorxLabs Project         #
# Copyright (c) 2026-2026 VorxLabs (CodCatDev)   #
# Licensed under the Apache License, Version 2.0 #
# https://github.com/VorxLabs/VorxEngine         #
# Currently file: src/math/colors.nim            #
# ============================================== #


# Colors
type 
    ColorRGBA* {.packed.} = object
        r*, g*, b*, a*: uint8

# Unpack RGBA color to tuple
func unpackRGBA*(self: ColorRGBA): tuple[r, g, b, a: uint8] {.inline.} =
    (self.r, self.g, self.b, self.a)

# Pack tuple to RGBA color
func packRGBA*(r, g, b, a: uint8): ColorRGBA {.inline.} =
    ColorRGBA(r: r, g: g, b: b, a: a)