
#!/bin/bash

selected=$(echo "Macchiato
Rose Pine" | rofi -dmenu -p "Theme:")

echo You Picked: " $selected"

if [ "$selected" == "Macchiato" ]; then
  output=$(~/.config/change-theme.sh catppuccin-macchiato)
  echo "$output"
elif [ "$selected" == "Rose Pine" ]; then
  output=$(~/.config/change-theme.sh rose-pine)
  echo "$output"
else
  echo "there's been an error selecting the theme"
fi

