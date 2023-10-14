<h1 align="center">Elahe Dastan's dotfiles</h1>

<p align="center">
    <img alt="GitHub" src="https://img.shields.io/github/license/elahe-dastan/dotfiles?logo=gnu&style=for-the-badge">
    <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/elahe-dastan/dotfiles/install.yaml?logo=github&style=for-the-badge&label=install">
    <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/elahe-dastan/dotfiles/sh-lint.yaml?label=lint&logo=github&style=for-the-badge">
    <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/elahe-dastan/dotfiles?style=for-the-badge">
</p>

## Introduction

This repository contains Elehe Dastan's personal `dotfiles` for configuring various tools in his development environment.
These `dotfiles` are intended to be used on macOS and Linux systems.

A `dotfiles` repository is a personal repository, and with it, you can manage your configuration between your systems.

- [`tantive-iv`](https://en.wikipedia.org/wiki/Tantive_IV): MacBookPro (17,1) given by Snapp, and it should
  return to them when I decide to leave. Last OSx installation happened on 14 Oct 2023. ✅

  |   Type    |                     Value                     |
  | :-------: | :-------------------------------------------: |
  |  System   |       `MacBookPro17,1 (Z11B000E3LL/A)`        |
  | Processor | `Apple M1 8 (4 performance and 4 efficiency)` |
  |  Memory   |           `LPDDR4 - Hynix - 16 GB`            |

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
