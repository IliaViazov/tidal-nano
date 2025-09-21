#!/bin/bash

# basically i get here the screen resolution and save it into 4 variables as coordinates
read LEFT TOP RIGHT BOTTOM <<<$(osascript -e 'tell application "Finder" to get bounds of window of desktop' | tr -d '{}' | tr ',' ' ')

# Paths
# export TIDAL_DIR="$(pwd)"
export TIDAL_DIR=$(osascript -e 'tell application "Finder" to get POSIX path of (target of front window as alias)')
TIDAL_SCRIPT=BootTidal.hs
TIDAL_LOG=snippets.hs
SCLANG_SCRIPT=BootSC.scd

# Function to open a new terminal window with command + bounds + color profile
open_new_window() {
  local cmd="$1"
  local bounds="$2"
  local profile="$3"
  osascript <<EOF
tell application "Terminal"
    activate
    set newWindow to (do script "$cmd")
    delay 0.3
    set current settings of front window to settings set "$profile"
    set bounds of front window to $bounds
end tell
EOF
}

# SuperCollider window
open_new_window "cd $TIDAL_DIR && sclang '$SCLANG_SCRIPT'" "{0, $(((5 * BOTTOM / 7)+40)), $RIGHT, $(((7 * BOTTOM / 8)+40))}" "Basic"

# nano log window 
open_new_window "cd $TIDAL_DIR/snippets && nano snippets.hs -i --softwrap -/ -_ -Z -T 4 -E --atblanks" "{$((4 *RIGHT / 9)), 0, $((RIGHT - (2 * RIGHT / 7))), $((5 * BOTTOM / 7))}" "Basic"

# reference window 
open_new_window "cd $TIDAL_DIR/reference && glow" "{$((5 * RIGHT / 7)), 0, $RIGHT, $((5 * BOTTOM / 7))}" "Basic"

# TidalCycles REPL 
open_new_window "cd $TIDAL_DIR && ./ghci-color -ghci-script '$TIDAL_SCRIPT'" "{0, 0, $((RIGHT - (5 * RIGHT / 9))), $((5 * BOTTOM / 7))}" "Basic"
