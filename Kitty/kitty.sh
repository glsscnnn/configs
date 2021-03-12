#/bin/sh

if [ -d "~/.config/kitty" ]; then
	cp ./kitty.conf ~/.config/kitty/
else
	# I'm so lazy
	echo "~/.config/kitty/ doesn't exist consider making this directory"
fi
