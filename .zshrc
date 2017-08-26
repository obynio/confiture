# loads every needed configuration file for zsh

for file in ~/.shepard/config/zsh/*; do
    source $file;
done

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
    exec startx
fi

true
