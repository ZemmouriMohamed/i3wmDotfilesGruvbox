#!/bin/bash
# Cycle through available power profiles: balanced → performance → power-saver → balanced

current=$(powerprofilesctl get | awk '{print $NF}')

case "$current" in
  balanced)
    powerprofilesctl set performance ;;
  performance)
    powerprofilesctl set power-saver ;;
  power-saver)
    powerprofilesctl set balanced ;;
  *)
    powerprofilesctl set balanced ;;
esac

