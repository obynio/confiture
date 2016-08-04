#!/bin/sh

path=~/.sybiload/wallpaper/wall.jpg

xrandr=$(which xrandr)
monitors=( $( ${xrandr} | awk '( $2 == "connected" ){ print $1 }' ) )
num_monitors=${#monitors[@]}

titles=()
commands=()

function gen_xrandr_only()
{
	selected=$1

	cmd="xrandr --output ${monitors[$selected]} --auto "

	for entry in $(seq 0 $((${num_monitors}-1)))
	do
		if [ $selected != $entry ]
		then
			cmd="$cmd --output ${monitors[$entry]} --off"
		fi
	done

	echo $cmd
}

declare -i index=0
titles[$index]="cancel"
commands[$index]="true"
index+=1

for entry in $(seq 0 $((${num_monitors}-1)))
do
	titles[$index]="only ${monitors[$entry]}"
	commands[$index]=$(gen_xrandr_only $entry)
	index+=1
done

# extend monitors
for entry_a in $(seq 0 $((${num_monitors}-1)))
do
	for entry_b in $(seq 0 $((${num_monitors}-1)))
	do
		if [ $entry_a != $entry_b ]
		then
			titles[$index]="extend ${monitors[$entry_a]} -> ${monitors[$entry_b]}"
			commands[$index]="xrandr --output ${monitors[$entry_a]} --auto \
				--output ${monitors[$entry_b]} --auto --above ${monitors[$entry_a]}"

			index+=1
		fi
	done
done


# clone monitors
for entry_a in $(seq 0 $((${num_monitors}-1)))
do
	for entry_b in $(seq 0 $((${num_monitors}-1)))
	do
		if [ $entry_a != $entry_b ]
		then
			titles[$index]="clone ${monitors[$entry_a]} -> ${monitors[$entry_b]}"
			commands[$index]="xrandr --output ${monitors[$entry_a]} --auto \
				--output ${monitors[$entry_b]} --auto --same-as ${monitors[$entry_a]}"

			index+=1
		fi
	done
done


# generate entries, where the first char is the key
function gen_entries()
{
	for a in $(seq 0 $(( ${#titles[@]} -1 )))
	do
		echo -n $a ${titles[a]}\\n
	done
}

if [ -z  $@ ]
then
	echo -e $(gen_entries);
else
	SEL=$@

	# call xrandr
	$( ${commands[${SEL::1}]} )

	# apply background
	feh --bg-scale "$path"
fi
