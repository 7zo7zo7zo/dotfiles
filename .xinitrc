export _JAVA_AWT_WM_NONREPARENTING=1
xrandr --auto
picom --experimental-backends --backend glx --xrender-sync-fence --vsync --no-fading-openclose &
slstatus &
exec dwm
