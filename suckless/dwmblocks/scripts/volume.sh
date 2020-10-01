#!/bin/sh

dwm_volume () {
  MUTE=$(pamixer --get-mute)
  LEVEL=$(pamixer --get-volume)

  if $MUTE; then
    printf "ﱝ %s%%\n" "$LEVEL"
  else
    printf " %s%%\n" "$LEVEL"
  fi
}

dwm_volume
