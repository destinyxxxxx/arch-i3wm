#!/usr/bin/env bash

## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)

dir="$HOME/.config/rofi/launcher"

## Run
rofi \
    -show drun \
    -theme ${dir}/launcher.rasi
