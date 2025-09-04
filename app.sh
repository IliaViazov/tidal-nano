#!/bin/bash

# basically i get here the screen resolution and save it into 4 variables as coordinates
read LEFT TOP RIGHT BOTTOM <<<$(osascript -e 'tell application "Finder" to get bounds of window of desktop' | tr -d '{}' | tr ',' ' ')


# Paths
TIDAL_DIR=/Applications/tidal-nano
TIDAL_SCRIPT=BootTidal.hs
TIDAL_LOG=snippets.txt
REFERENCE_FILE=reference.txt
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
open_new_window "cd $TIDAL_DIR && sclang '$SCLANG_SCRIPT'" "{0, $(((5 * BOTTOM / 7)+40)), $RIGHT, $(((7 * BOTTOM / 8)+40))}" "Tidal"

# # animation window
# open_new_window "cd $TIDAL_DIR && ./animation.sh" "{$((1*RIGHT/2)), $(((5 * BOTTOM / 7)+40)), $RIGHT, $(((7 * BOTTOM / 8)+40))}" "Tidal"

# nano log window 
open_new_window "cd $TIDAL_DIR && nano $TIDAL_LOG" "{$((1 *RIGHT / 2)), 0, $((RIGHT - (1 * RIGHT / 5))), $((5 * BOTTOM / 7))}" "Tidal"

# reference window 
open_new_window "cd $TIDAL_DIR && nano -v $REFERENCE_FILE" "{$((4 * RIGHT / 5)), 0, $RIGHT, $((5 * BOTTOM / 7))}" "Tidal"

# TidalCycles REPL 
open_new_window "cd $TIDAL_DIR && ghci -ghci-script '$TIDAL_SCRIPT'" "{0, 0, $((RIGHT - (1 * RIGHT / 2))), $((5 * BOTTOM / 7))}" "Tidal"
