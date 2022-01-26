export _JAVA_AWT_WM_NONREPARENTING=1
xrandr --auto
#export WALLPAPER=/path/to/image.file
#feh --bg-scale $WALLPAPER
#wal -i $WALLPAPER ; xrdb ~/.cache/wal/colors.Xresources
picom --experimental-backends --backend glx --xrender-sync-fence --no-fading-openclose &
dwmblocks &
exec dwm
