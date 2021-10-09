xrandr --output eDP --off --output HDMI-A-0 --auto 
picom -CGb
fcitx5 &

# keyboard layout
setxkbmap us colemak
setxkbmap -option caps:swapescape

# vmware
export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr &


# wallpaper
while habak -ms -hi ~/wallpapers   	
	do
	sleep 30m   
done &

# wm
exec bspwm


