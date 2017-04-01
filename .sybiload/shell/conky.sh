#!/bin/sh

# Send the header so that i3bar knows we want to use JSON:
echo '{"version":1}'

# Begin the endless array.
echo '['

# We send an empty first array of blocks to make the loop 
simpler:
echo '[],'

# Now send blocks with information forever:
if [[ $HOSTNAME == "trinity" ]]; then
	exec conky -c ~/.sybiload/config/conky/desktop.conf
fi

if [[ $HOSTNAME == "morpheus" ]]; then
	exec conky -c ~/.sybiload/config/conky/laptop.conf
fi
