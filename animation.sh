#!/usr/bin/env bash
# ring_spinner_color.sh - 10x10 ring-based spinner animation with colors

delay=0.1
rows=6
cols=53
# Frames in clockwise and counterclockwise order
cw=('*' '-' '\' '|' '/' '-')
ccw=('-' '/' '|' '\' '-' '*')

# Colors for each ring (ANSI escape codes)
colors=(
  "\033[33m"  # green
  "\033[92m"  # cyan
  "\033[94m"  # magenta
)
reset="\033[0m"

# Track frame index
t=0

trap "tput cnorm; printf '\n'; exit" INT TERM EXIT
tput civis  # hide cursor

while true; do
  printf "\033[H"  # move cursor to top-left

  for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
      # Find ring index (distance from nearest edge)
      top=$i
      left=$j
      bottom=$((rows - 1 - i))
      right=$((cols - 1 - j))
      dist=$(( top < bottom ? top : bottom ))
      dist=$(( left < dist ? left : dist ))
      dist=$(( right < dist ? right : dist ))

      # Pick color by ring index
      color="${colors[$((dist % ${#colors[@]}))]}"

      # Decide rotation direction: even rings = CCW, odd rings = CW
      if (( dist % 2 == 0 )); then
        idx=$(( t % 4 ))
        char="${ccw[$idx]}"
      else
        idx=$(( t % 4 ))
        char="${cw[$idx]}"
      fi

      printf "%b%s %b" "$color" "$char" "$reset"
    done
    printf "\n"
  done

  t=$((t + 1))
  sleep "$delay"
done
