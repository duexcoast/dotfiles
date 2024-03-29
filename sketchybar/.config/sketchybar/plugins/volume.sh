#!/bin/bash

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

VOLUME=$INFO

case $VOLUME in
[6-9][0-9] | 100)
	ICON=${ICONS_VOLUME[3]}
	# COLOR=$MAGENTA_BRIGHT
	COLOR=$MAGENTA
	;;
[3-5][0-9])
	ICON=${ICONS_VOLUME[2]}
	# COLOR=$MAGENTA_BRIGHT
	COLOR=$MAGENTA
	;;
[1-9] | [1-2][0-9])
	ICON=${ICONS_VOLUME[1]}
	COLOR=$MAGENTA
	;;
*)
	ICON=${ICONS_VOLUME[0]}
	COLOR=$MAGENTA
	;;
esac

sketchybar --set $NAME icon="$ICON" \
	icon.color=$COLOR \
	label="$VOLUME%" \
	label.color=$COLOR
