#!/bin/sh

# A dwm_bar function to read the battery level and status
# Joe Standring <git@joestandring.com>
# GNU GPLv3
export IDENTIFIER="unicode"
dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)
	TIME=$(acpi -b | awk '{print $5}' | cut -d":" -f1,2 | head -n1)
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$STATUS" = "Charging" ]; then
            printf "🔌 %s%% %s" "$CHARGE" "$STATUS"
        elif [ "$STATUS" = "Unknown" ]; then
            printf "🔌 %s%% %s" "$CHARGE" "$STATUS"
		elif [ "$STATUS" = "Full" ]; then
            printf "🔋 %s%% %s" "$CHARGE" "$STATUS"
        else
            printf "🔋 %s%% %s : %s" "$CHARGE" "$STATUS" "$TIME"
        fi
    else
        printf "BAT %s%% %s" "$CHARGE" "$STATUS"
    fi
    printf "%s\n" "$SEP2"
}

dwm_battery
