#!/bin/bash
# In The Name of God
# ========================================
# [] File Name : neovim.sh
#
# [] Creation Date : 05-10-2018
#
# [] Created By : Parham Alvani <parham.alvani@gmail.com>
# =======================================

usage() {
        echo "usage: neovim"
}

main() {
        # Reset optind between calls to getopts
        OPTIND=1

	upinstall-neovim
}

upinstall-neovim() {
        message "neovim" "Upstall neovim"

        neovim_vr=$(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep 'tag_name' | cut -d\" -f4)
        if hash nvim 2>/dev/null; then # check local version of nvim if it exists
                neovim_vl=$(nvim --version | cut -d$'\n' -f1 | cut -d' ' -f2)
        fi

        message "neovim" "Local version ${neovim_vl%%-*}, Remote version ${neovim_vr}"

        if [ "${neovim_vl%%-*}" != "${neovim_vr}" ]; then
                message "env" "Installing neovim"
                sudo curl -L "https://github.com/neovim/neovim/releases/download/${neovim_vr}/nvim.appimage" -o /usr/local/bin/nvim
                sudo chmod +x /usr/local/bin/nvim
        fi
        message "neovim" "$(nvim --version)"


        sudo apt-get install python3-dev python3-pip python3-setuptools
        pip3 install --upgrade neovim
}
