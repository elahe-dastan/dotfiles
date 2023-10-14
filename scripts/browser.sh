#!/bin/bash

usage() {
	echo "install firefox, firefox-developer-edition and tridactyl configuration"
	echo '
 _
| |__  _ __ _____      _____  ___ _ __
| |_ \| |__/ _ \ \ /\ / / __|/ _ \ |__|
| |_) | | | (_) \ V  V /\__ \  __/ |
|_.__/|_|  \___/ \_/\_/ |___/\___|_|

	'
}

main_brew() {
	require_brew_cask google-chrome
}
