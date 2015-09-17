# Loads every needed configuration file for zsh

for file in ~/.zsh/*; do
	source $file;
done

true
