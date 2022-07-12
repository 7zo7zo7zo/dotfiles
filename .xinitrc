export _JAVA_AWT_WM_NONREPARENTING=1
xrandr --auto
xautolock -time 12 -locker "systemctl suspend" -detectsleep &
picom --experimental-backends --backend glx --xrender-sync-fence --no-fading-openclose &
dwmblocks &
exec dwm
#exec dwm 2> ~/.dwm.log
