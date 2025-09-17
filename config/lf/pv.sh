#!/bin/sh

case "$1" in
    *.tar*) tar tf "$1" | less -R;;
    *.zip) unzip -l "$1" | less -R;;
    *.rar) unrar l "$1" | less -R;;
    *.7z) 7z l "$1" | less -R;;
    *.pdf) pdftotext "$1" - | less -R;;
    *.jpg|*.jpeg|*.png) imgcat "$1" && read -n 1 -s -r;;
    *) highlight -O ansi "$1" | less -R;;
esac   
