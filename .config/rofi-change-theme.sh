
#!/bin/bash

selected=$(echo "Macchiato
Gruvbox" | rofi -dmenu -p "Theme:")

echo You Picked: " $selected"

if [ "$selected" == "Macchiato" ]; then
  output=$(~/.config/change-theme.sh catppuccin-macchiato)
  echo "$output"
elif [ "$selected" == "Gruvbox" ]; then
    exit
else
  echo "there's been an error selecting the theme"
fi

