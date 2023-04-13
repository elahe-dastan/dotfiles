#!/bin/bash

function require_brew() {
	declare -a to_install_pkg
	to_install_pkg=()

	for pkg in "$@"; do
		running "require" " brew $pkg"
		if ! brew list --versions "$pkg" &>/dev/null; then
			to_install_pkg+=("$pkg")
		fi
	done

	if [ ${#to_install_pkg[@]} -ne 0 ]; then
		action "require" "勒brew install ${to_install_pkg[*]}"
		brew install "${to_install_pkg[@]}"
	fi
}

function require_brew_head() {
	for pkg in "$@"; do
		running "require" " brew head $pkg"
		if ! brew list --versions "$pkg" &>/dev/null; then
			action "require" "勒brew install --HEAD $pkg"
			brew install --HEAD "$pkg"
		else
			action "require" " brew upgrade --fetch-HEAD $pkg"
			brew upgrade --fetch-HEAD "$pkg"
		fi
	done
}

function require_brew_cask() {
	for pkg in "$@"; do
		running "require" " brew cask $pkg"
		if ! brew list --cask --versions "$pkg" &>/dev/null; then
			action "require" "勒brew install --cask $pkg"
			brew install --cask "$pkg"
		fi
	done
}

function require_apt() {
	declare -a to_install_pkg
	to_install_pkg=()

	for pkg in "$@"; do
		running "require" " apt $pkg"
		if ! dpkg -s "$pkg" &>/dev/null; then
			to_install_pkg+=("$pkg")
		fi
	done

	if [ ${#to_install_pkg[@]} -ne 0 ]; then
		action "require" "勒apt install ${to_install_pkg[*]}"
		sudo apt -qy install "${to_install_pkg[@]}"
	fi
}

function require_pacman() {
	declare -a to_install_pkg
	to_install_pkg=()

	for pkg in "$@"; do
		running "require" " pacman $pkg"
		if ! pacman -Qi "$pkg" &>/dev/null; then
			to_install_pkg+=("$pkg")
		fi
	done

	if [ ${#to_install_pkg[@]} -ne 0 ]; then
		action "require" "勒pacman -Sy ${to_install_pkg[*]}"
		sudo pacman -Sy --noconfirm "${to_install_pkg[@]}"
	fi
}

function require_aur() {
	for pkg in "$@"; do
		running "require" " arch users repository $pkg"
		if (! pacman -Qi "$pkg" &>/dev/null); then
			action "require" "勒yay -Sy $pkg"
			yay -Sy --sudoloop --noconfirm "$pkg"
		elif [[ "$pkg" =~ .*-git ]]; then
			action "require" " yay -Sy $pkg to upgrade -git package"
			yay -Sy --sudoloop --noconfirm "$pkg" || true
		fi
	done
}

function require_mason() {
	for pkg in "$@"; do
		action "require" " neovim + mason $pkg"
		nvim "+MasonInstall $pkg" --headless +qall 2>/dev/null
	done
}

function require_go() {
	for pkg in "$@"; do
		action "require" "ﳑ go $pkg"
		go install "$pkg@latest" 2>/dev/null
	done
}

function require_pip() {
	for pkg in "$@"; do
		action "require" " python $pkg"
		python -mpip install --user --pre -U "$pkg" 2>/dev/null
	done
}

function clone() {
	repo=${1:?"clone requires repository name"}
	url=${2:?"clone requires repository url"}
	dir=${3:-$(basename "$repo")}

	if [ ! -d "$dir" ]; then
		if git clone "$url$repo" "$dir" &>/dev/null; then
			action git "$repo ${F_GREEN}󰄲${F_RESET}"
		else
			action git "$repo ${F_RED}󱋭${F_RESET}"
		fi
	else
		cd "$dir" || return

		origin_url=$(git remote get-url origin 2>/dev/null)

		if [[ "$url$repo" == "${origin_url%.git}" ]]; then
			action git "$repo ${F_GRAY}${F_RESET}"
		else
			action git "$repo ($url$repo != $origin_url) ${F_RED}󱋭${F_RESET}"
		fi

		cd - &>/dev/null || return
	fi
}
