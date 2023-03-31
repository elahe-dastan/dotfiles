<h1 align="center">1995parham's dotfiles</h1>

<p align="center">
     <img alt="GitHub" src="https://img.shields.io/github/license/1995parham/dotfiles?logo=gnu&style=for-the-badge">
     <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/1995parham/dotfiles/install.yaml?logo=github&style=for-the-badge&label=install">
     <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/1995parham/dotfiles/sh-lint.yaml?label=lint&logo=github&style=for-the-badge">
     <a href="https://github.com/1995parham-me/ansible-role">
          <img alt="Ansible" src="https://img.shields.io/badge/ansible-ready-black?logo=ansible&style=for-the-badge">
     </a>
     <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/1995parham/dotfiles?style=for-the-badge">
</p>

## Introduction

This repository contains my personal configurations for Ubuntu, Arch Linux (with sway window manager) and apple OSX,
which was created in Fall 2013 when I was a lonely B.Sc.' student at the Amirkabir University of Technology.
First, thank you for your visiting. A dotfiles repository is a personal repository, with it,
you can manage your configuration between your systems, so I make this repository, a template repository, so you can easily start your personal one from it.
Special thanks to [@elahe-dastan](https://github.com/elahe-dastan) for using this project and reporting its issues. Her unique contribution to this repository and my life is unforgettable.

## Installation

![Compatibility](https://img.shields.io/badge/works%20on-macos-white?logo=macos&style=for-the-badge)
![Compatibility](https://img.shields.io/badge/works%20on-ubuntu-orange?logo=ubuntu&style=for-the-badge)
![Compatibility](https://img.shields.io/badge/works%20on-arch-blue?logo=archlinux&style=for-the-badge)

The following command creates a basic directory structure and clones the _dotfiles_ repository:

```bash
curl -sL https://raw.githubusercontent.com/1995parham/dotfiles/main/over-the-air-installation.sh | bash
```

Install required tools with `pacman`, `brew` or `apt`.

```bash
./start.sh env
```

Install configuration files with soft-links and installs plugins on vim.
This script don't set the `zsh` as a default shell, so you need to set it manually.

```bash
./install.sh
```

Install useful fonts.

```bash
./start.sh font
```

**Don't** forget changing the git username and email:

```bash
touch $HOME/.config/git/config
```

**Also** don't forget to install neovim plugins:

```vim
:PlugInstall
```

Then you can install other tools with `start.sh`, here are some examples:

```bash
# install docker with proxy
./start.sh docker
# install golang
./start.sh go
# install python
./start.sh python
# and many many more...
```

Configuration of mentioned applications also is a part of this repository.

## Window Managers

I am using `sway` and `hyprland` as my primary window managers. This repository
structured around creating soft-links and because of that the duplicate configurations
between these window managers are gathered in `sway/`.

## Emacs

I am using Emacs for the followings:

- latex documents (specially in Persian)
- org-mode

### Searching

Ivy is a plugin for searching in buffers, notes, etc.
Almost everything in doom Emacs works with ivy. It is simple and will show you a popup for everything.

### Configuration (based on doom)

I use Emacs based on doom, and I found following configurations are useful to update my configurations based on them.

1. [psamim dotfiles](https://github.com/github/psamim/dotfiles)
   - [My org-mode agenda, much better now with category icons!](https://www.reddit.com/r/emacs/comments/hnf3cw/my_orgmode_agenda_much_better_now_with_category/?utm_source=share&utm_medium=web2x&context=3)
2. [acdemic doom](https://github.com/sunnyhasija/Academic-Doom-Emacs-Config)
3. [elenapan dotfiles](https://github.com/elenapan/dotfiles)

### Workspace

Never close emacs, just use workspace to manage your work.
To work with workspace just start with _SPACE-TAB_.

## More

- [scripts](./docs/scripts.md)
