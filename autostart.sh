setxkbmap -layout us,ru -option grp:win_space_toggle

while true; do
	xsetroot -name "$(date +"%a, %B %d %T")"
	sleep 1
done
