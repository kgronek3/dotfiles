monitors="$(xrandr -d :0 -q | grep ' connected' | wc -l)"

if (($monitors > 1))
then
    polybar --config=~/.config/polybar/config secondary&
fi

