#!/bin/bash

status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')


toggle_bluetooth() {
  if [[ $status == "yes" ]]; then
    bluetoothctl power off
    echo "Bluetooth apagado."
  else
    bluetoothctl power on
    echo "Bluetooth encendido."
  fi
}

toggle_bluetooth

