THEME=$1

if cp ./themes/catppuccin-macchiato/.resources/.Xresources ~/.Xresources
then
  echo '  [+] .Xresources file set up successfully'
else
  echo '  [-] Failed to apply .Xresources configuration file'
fi

if cp ./themes/catppuccin-macchiato/.i3/config ./i3/config 
then
  echo '[+] .i3/config configuration set up successfully'
else
  echo '[-] Failed to apply .i3/config configuration'
fi

if cp ./themes/catppuccin-macchiato/.polybar/config.ini ./polybar/config.ini
then
  echo '[+] polybar config set up successfully'
else
  echo '[-] failed to set up polybar'
fi

if cp ./themes/catppuccin-macchiato/.alacritty/alacritty.toml ./alacritty/alacritty.toml
then
  echo '[+] alacritty config set up successfully'
else
  echo "[-] failed to set up alacritty"
fi

if cp ./themes/catppuccin-macchiato/.rofi/config.rasi ~/.config/rofi/config.rasi
then
  echo '[+] rofi config set up successfully'
else
  echo '[-] failed to set up rofi'
fi

feh --bg-fill ~/.config/themes/catppuccin-macchiato/.wall/w1.jpg

i3-msg restart
