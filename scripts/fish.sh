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
	if [ ! -f ~/.config/fish/conf.d/omf.fish ]; then
		curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
	fi

	grep "fish" /etc/shells || which fish | sudo tee -a /etc/shells

	configfile "fish" "config.fish"

	current_dir=${current_dir:?"current_dir must be set"}

	#for script in $(ls "$current_dir/fish/*.fish"); do
	#	msg "install $script into fish configuration"
	#	ln $(basename "$script") "$current_dir/$script" "$HOME/.config/fish/conf.d/"
	#done
}
