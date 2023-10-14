```
     _       _    __ _ _
  __| | ___ | |_ / _(_) | ___  ___
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/
      _       _                    _           _
  ___| | __ _| |__   ___        __| | __ _ ___| |_ __ _ _ __
 / _ \ |/ _` | '_ \ / _ \_____ / _` |/ _` / __| __/ _` | '_ \
|  __/ | (_| | | | |  __/_____| (_| | (_| \__ \ || (_| | | | |
 \___|_|\__,_|_| |_|\___|      \__,_|\__,_|___/\__\__,_|_| |_|

```

![GitHub](https://img.shields.io/github/license/elahe-dastan/dotfiles?logo=gnu&style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/elahe-dastan/dotfiles/install.yaml?label=install&logo=github&style=flat-square&branch=main)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/elahe-dastan/dotfiles/sh-lint.yaml?label=lint&logo=github&style=flat-square&branch=main)
[![Ansible](https://img.shields.io/badge/ansible-ready-black?logo=ansible&style=flat-square)](https://github.com/elahe-dastan-me/ansible-role)
![GitHub repo size](https://img.shields.io/github/repo-size/elahe-dastan/dotfiles?style=flat-square)

## Introduction

This repository contains Elehe Dastan's personal `dotfiles` for configuring various tools in his development environment.
These `dotfiles` are intended to be used on macOS and Linux systems.

A `dotfiles` repository is a personal repository, and with it, you can manage your configuration between your systems.

## Installation

<p align="center">
     <img alt="Compatibility" src="https://img.shields.io/badge/works%20on-macos-white?logo=macos&style=for-the-badge">
     <img alt="Compatibility" src="https://img.shields.io/badge/works%20on-ubuntu-orange?logo=ubuntu&style=for-the-badge">
     <img alt="Compatibility" src="https://img.shields.io/badge/works%20on-arch-blue?logo=archlinux&style=for-the-badge">
</p>

To install these `dotfiles` on a new system, run the following command:

```bash
git clone https://github.com/elahe-dastan/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./start.sh env && ./install.sh
```

This will clone the repository into your home directory (`~/.dotfiles`), and run the `start.sh env`
script to install required tools and then run `install.sh` script to create symbolic links between
the `dotfiles` and their expected locations in your home directory.

After that, you set `zsh` as your default terminal:

```bash
sudo chsh $USER -s /bin/zsh
```

Run `start.sh font` script to install useful fonts:

```bash
./start.sh font
```

**Don't** forget changing the git username and email:

```bash
touch $HOME/.config/git/config
```

or you can use mine (it's crystal clear these values is useful only for me):

```bash
./start.sh git
```

Run `start.sh neovim` script to install neovim with [ElieVIM](https://github.com/1995parham/elievim) configurations:

```bash
./start.sh neovim
```

[**Read more...**](https://github.com/1995parham/dotfiles)
