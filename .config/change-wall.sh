curr=$(xrdb -query | grep "*theme" | cut -f 2)
dir=~/.config/themes/"$curr"/.wall/

selected=$(for a in "$dir"/*; 
  do 
    echo -en "$(basename "$a")\0icon\x1f$a\n"
  done | rofi -dmenu -p "Wall")

feh --bg-fill "$dir"/"$selected"
