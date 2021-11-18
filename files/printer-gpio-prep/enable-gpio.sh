#!/usr/bin/env bash
set -e

# Prepares a GPIO pin for use
# @param {number} 1 - The pin number
# @param {'in'|'out'} 2 - The IO direction. Either 'in' or 'out'
function prep_gpio {
  echo "Enable pin $1 $2"

  if [ ! -d "/sys/class/gpio/gpio$1" ]; then
    echo "$1" > "/sys/class/gpio/export"
  fi
  # wait for udev rules to be applied
  sleep 1
  echo "$2" > "/sys/class/gpio/gpio$1/direction"
}

prep_gpio 17 'out'
