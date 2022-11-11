#!/bin/sh

choices="Blender\nCura\nFreeCAD\nGimp\nInkscape\nVirtualbox"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    Blender) blender;;
    Cura)~/Applications/CuraSlicer.AppImage;;
    FreeCAD)~/Applications/FreeCAD.AppImage;;
    Gimp)~/Applications/Gimp.AppImage;;
    Inkscape)~/Applications/Inkscape.AppImage;;
    Virtualbox) virtualbox;;
esac
