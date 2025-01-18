THEME=$1

if cp ~/.config/themes/$THEME/.resources/.Xresources ~/.Xresources
then
  echo '  [+] .Xresources file set up successfully'
else
  echo '  [-] Failed to apply .Xresources configuration file'
fi

if cp ~/.config/themes/$THEME/.i3/config ~/.config/i3/config 
then
  echo '[+] .i3/config configuration set up successfully'
else
  echo '[-] Failed to apply .i3/config configuration'
fi

if cp ~/.config/themes/$THEME/.polybar/config.ini ~/.config/polybar/config.ini
then
  echo '[+] polybar config set up successfully'
else
  echo '[-] failed to set up polybar'
fi

if cp ~/.config/themes/$THEME/.alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
then
  echo '[+] alacritty config set up successfully'
else
  echo "[-] failed to set up alacritty"
fi

if cp ~/.config/themes/$THEME/.rofi/config.rasi ~/.config/rofi/config.rasi
then
  echo '[+] rofi config set up successfully'
else
  echo '[-] failed to set up rofi'
fi

xrdb ~/.Xresources
feh --bg-fill ~/.config/themes/$THEME/.wall/w1.jpg
i3-msg restart
