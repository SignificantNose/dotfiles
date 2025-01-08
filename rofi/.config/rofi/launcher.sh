#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x


styles_dir="$HOME/.config/rofi/styles"
theme='main'

## Run
rofi \
    -show drun \
    -theme ${styles_dir}/${theme}.rasi
