<h1 align="center">1995parham's dotfiles library</h1>

<p align="center">
     <img alt="GitHub" src="https://img.shields.io/github/license/1995parham/dotfiles.lib?logo=gnu&style=for-the-badge">
     <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/1995parham/dotfiles.lib/sh-lint.yaml?logo=github&style=for-the-badge&label=lint">
     <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/1995parham/dotfiles.lib?style=for-the-badge">
</p>

## Introduction

These are scripts that help you maintain your dotfiles easier with having more fun.
The library contains bash scripts for installing requirements, printing colorful messages, set-up proxy, etc.

- [`tantive-iv`](https://en.wikipedia.org/wiki/Tantive_IV): MacBookPro (17,1) given by Snapp, and it should
  return to them when I decide to leave. Last OSx installation happened on 14 Oct 2023. ✅

  |   Type    |                     Value                     |
  | :-------: | :-------------------------------------------: |
  |  System   |       `MacBookPro17,1 (Z11B000E3LL/A)`        |
  | Processor | `Apple M1 8 (4 performance and 4 efficiency)` |
  |  Memory   |           `LPDDR4 - Hynix - 16 GB`            |

## How to use it?

Clone this repository into your dotfiles's folder under `./scripts/lib`
(here we are using [git-subtree](https://www.atlassian.com/git/tutorials/git-subtree)):

```bash
mkdir scripts
git subtree add --prefix scripts/lib https://github.com/1995parham/dotfiles.lib.git main --squash
```

Then link the `start.sh` into your root's dotfiles as follows:

```bash
ln -s scripts/lib/start.sh start.sh
```

Then you can start creating your setup scripts using:

```bash
./start.sh new
```

```text
├── start.sh -> scripts/lib/start.sh
├── 📂 scripts
│   ├── 📂 lib              dotfiles.lib
│   │   ├── start.sh
│   │   ├── require.sh
│   │   ├── message.sh
│   │   └── ...
│   │
│   ├── neovim.sh           user defined scripts for configuring and setup applications
│   ├── git.sh
│   │
│
```
