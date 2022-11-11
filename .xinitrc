#!/bin/sh

# Asegúrese de que esto se encuentra antes del comando 'exec' o no se cargará.
[ -f ~/.Xprofile ] && . ~/.Xprofile
