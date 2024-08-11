#!/usr/bin/env bash

while true; do
    name=$(dialog --keep-tite --title 'Important information' --backtitle 'Course signup' --inputbox 'Please enter the name: ' 10 40 2>&1 >/dev/tty)
    if (( $? != 0 )); then
        break
    elif [[ -n "${name}" ]]; then
        echo "${name}" >> names.txt
    fi
    if ! dialog --keep-tite --yesno 'Do you wish to continue?' 0 0; then
        break
    fi
done