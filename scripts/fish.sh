#!/bin/bash

usage() {
	echo -n -e "The user-friendly command line shell"

	# shellcheck disable=1004,2016
	echo '
  __ _     _
 / _(_)___| |__
| |_| / __| |_ \
|  _| \__ \ | | |
|_| |_|___/_| |_|

  '
}

main_apt() {
	msg "there is nothing that we can do"
	return 1
}

main_pacman() {
	sudo pacman -Syu --neeeded --noconfirm fish
}

main_brew() {
	brew install fish
}

main() {
	return 0
}
