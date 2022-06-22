#!/bin/bash
# In The Name of God
# ========================================
# [] File Name : starship.sh
#
# [] Creation Date : 02-04-2021
#
# [] Created By : Parham Alvani <parham.alvani@gmail.com>
# =======================================

usage() {
	echo "you prompt but in rust"
}

main_apt() {
	msg "there is nothing that we can do"
}

main_brew() {
	brew install starship
}

main_pacman() {
	sudo pacman -Syu --noconfirm --needed starship
}

main() {
	configrootfile starship starship.toml ""
}
