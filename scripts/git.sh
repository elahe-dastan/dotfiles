#!/bin/bash

usage() {
	echo -n 'git configuration useful on systems with ssh keys and are used by me'
	echo '
       _ _
  __ _(_) |_
 / _` | | __|
| (_| | | |_
 \__, |_|\__|
 |___/
  '
}

main_pacman() {
	return 0
}

main_brew() {
	return 0
}

main_apt() {
	return 0
}

main() {
	configfile "git" "" "git"
}
