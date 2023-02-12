export _JAVA_AWT_WM_NONREPARENTING=1
xrandr --auto
xautolock -time 10 -locker "systemctl suspend" -detectsleep &
picom --backend glx --xrender-sync-fence --no-fading-openclose &
dwmblocks &
exec dwm
#exec dwm 2> ~/.dwm.log
#while type dwm >/dev/null ; do dwm && continue || break ; done
