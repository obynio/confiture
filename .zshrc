# loads every needed configuration file for zsh

for file in ~/.sybiload/config/zsh/*; do
	source $file;
done

true
