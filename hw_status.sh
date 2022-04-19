#!/bin/bash
while true; do
    clear

    FAN=$(cat /sys/devices/virtual/thermal/cooling_device0/cur_state)
    case $FAN in
        0)
            echo "FAN:  25%"
            ;;
        1)
            echo "FAN:  50%"
            ;;
        2)
            echo "FAN:  75%"
            ;;
        3)
            echo "FAN  100%"
            ;;
    esac
    echo
    echo "CPU: $(cat /sys/devices/virtual/thermal/thermal_zone0/temp | cut -c -2)°C"
    echo
    echo "Press ctrl+c to stop monitoring."
    sleep 5
done
