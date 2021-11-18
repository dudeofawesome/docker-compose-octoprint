#!/usr/bin/env bash
set -e

# Unprepares a GPIO pin for use
# @param {number} 1 - The pin number
function unprep_gpio {
  echo "Disable pin $1"

  echo "$1" > "/sys/class/gpio/unexport"
}

unprep_gpio 17
