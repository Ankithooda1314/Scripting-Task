#!/bin/bash


FILE="input.txt"


if [[ -f "$FILE" ]]; then
    # Replace "give" with "learning" from the 5th line onward, only in lines containing "welcome"
    sed -i '5,$ {/welcome/s/give/learning/g}' "$FILE"
    echo "Replacement completed in $FILE."
else
    echo "Error: File '$FILE' not found."
fi
