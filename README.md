# dotfiles
## Introduction
My Personal Linux, OSx configurations files since 2013 :)
## Installation
For using this configuration files you can install them with
```shell
python3 install.py
```
or you can do it with our newer bash version
```shell
./install.sh
```
## VIM is your IDE
If you are using this dotfiles vim configuration
you can use following scripts to have better vim :D
### C
If your c file is big and you want a function in it
do not install jetbrains stuff :D just use CLint in
your vim with following command:
CTags: ctrl + , F5
```sh
sudo apt install ctags
```
### JavaScript
Personally I use ESLint as linter for my JS projects
and you can setup it with following command and use it
simply in all of your project.
```sh
# setup eslint globally
sudo npm install -g eslint
sudo npm install -g eslint-plugin-standard
sudo npm install -g eslint-config-standard
# setup project folder
npm init
eslint init
```
### PHP
Personally I use PHP_CodeSniffer as code style checker
for my php files.
```sh
# setup phpcs globally
composer global require "squizlabs/php_codesniffer=*"
phpcs config-set default_standard PSR2
```
## VIM Plugins
| #  | Plugin     | #  | Plugin                 |
|:--:|:-----------|:--:|:-----------------------|
| 1  | [easy-align](http://github.com/junegunn/vim-easy-align) | 2  | [cpp-enhanced-highlight](http://github.com/octol/vim-cpp-enhanced-highlight) |
| 3  | [vimtex](http://github.com/lervag/vimtex)     | 4  | [textutil](http://github.com/vim-scripts/textutil.vim)               |
| 5  | [node](http://github.com/moll/vim-node)       | 6  | [jade](http://github.com/digitaltoad/vim-jade)                   |
| 7  | [wakatime](http://github.com/wakatime/vim-wakatime)   | 8  | [zimpl](http://github.com/1995parham/vim-zimpl)                  |
| 9  | [gas](http://github.com/1995parham/vim-gas)        | 10 | [tcpdump](http://github.com/1995parham/vim-tcpdump)                |
| 11 | [spice](http://github.com/1995parham/vim-spice)      | 12 | [tomorrow-night](http://github.com/1995parham/tomorrow-night-vim)         |
| 13 | [avro](http://github.com/aolab/vim-avro)       | 14 | [python-mode](http://github.com/klen/python-mode)            |
| 15 | [syntastic](http://github.com/scrooloose/syntastic)  | 16 | [javascript-syntax](http://github.com/jelera/vim-javascript-syntax)      |
| 17 | [js-indent](http://github.com/gavocanov/vim-js-indent)  | 18 | [gitgutter](http://github.com/airblade/vim-gitgutter)              |
| 19 | [airline](http://github.com/vim-airline/vim-airline)    | 20 | [airline-themes](http://github.com/vim-airline/vim-airline-themes)         |
| 21 | [vim2hs](http://github.com/dag/vim2hs)     | 22 | [go](http://github.com/fatih/vim-go)                     |
| 23 | [tagbar](http://github.com/majutsushi/tagbar)     | 24 | [tshark](http://github.com/bps/vim-tshark)                 |
| 25 | [tabular](http://github.com/godlygeek/tabular)    | 26 | [markdown](http://github.com/plasticboy/vim-markdown)               |
| 27 | [bookmarks](http://github.com/MattesGroeger/vim-bookmarks)  | 28 | [html5](http://github.com/othree/html5.vim)                  |
| 29 | [docker](http://github.com/docker/docker)     | 30 | [css-color](http://github.com/ap/vim-css-color)              |
| 31 | [webapi](http://github.com/mattn/webapi-vim)     | 32 | [tmux](http://github.com/tmux-plugins/vim-tmux)                   |
| 33 | [emmet](http://github.com/mattn/emmet-vim)      | 34 | [supertab](http://github.com/ervandew/supertab)               |
| 35 | [targets](http://github.com/wellle/targets.vim)    | 36 | [rainbow_parentheses](http://github.com/kien/rainbow_parentheses.vim)    |
| 37 | [endwise](http://github.com/tpope/vim-endwise)    | 38 | [fugitive](http://github.com/tpope/vim-fugitive)               |
| 39 | [surround](http://github.com/tpope/vim-surround)   | 40 | [polyglot](http://github.com/sheerun/vim-polyglot)               |
| 41 | [tbone](http://github.com/tpope/vim-tbone)      | 42 | [wildfire](http://github.com/gcmt/wildfire.vim)               |
| 43 | [nerdtree](http://github.com/scrooloose/nerdtree)   | 44 | [js-libraries-syntax](http://github.com/othree/javascript-libraries-syntax.vim)    |

## Correct the style :)
| Languages           |       Tool      | Installation                                            |
|:--------------------|:----------------:|:-------------------------------------------------------|
| C, C++, Objective C | `clang-format`  |                                                         |
| PHP                 |    `phpcbf`     | `composer global require "squizlabs/php_codesniffer=*"` |
| JavaScript          |  `js-beautify`  | `npm install -g js-beautify`                            |
| HTML                | `html-beautify` | `npm install -g js-beautify`                            |
| Python              |     `yapf`      | `pip install yapf`                                      |
| Go                  |    `gofmt`      |                                                         |

## How to ....
### Build Router and NAT with your ubuntu
1. First edit `/etc/sysctl.conf` and uncomment:

```
# net.ipv4.ip_forward=1
```
so that it reads:
```
net.ipv4.ip_forward=1
```

2. To enable IP masquerading, enter following set of commands in terminal:
```sh
# eth1: LAN - private
# eth0: WAN - public

sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

sudo iptables -A FORWARD -i eth1 -o eth0 -m state -–state RELATED,ESTABLISHED -j ACCEPT

sudo iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT
```
> IP Masquerade is a form of Network Address Translation or NAT which NAT allows internally connected computers that do not have one or more registered Internet IP addresses to communicate to the Internet via the Linux server's Internet IP address.

### Better bash on CentOS
For having better bash completion use following package:
```sh
yum install bash-completion
```
### Dircolors on OSx
Try installing the GNU coreutils from this if you really want dircolors to work.
I also had to set an alias for dircolors to gdircolors as this is the command that FreeBSD ports installed the fun as.

### Font
Personally I used *Meslo LG S Powerline* as my default font and you can
install it with
```shell
./fonts/install.sh
```
### Airspeed [Automated ...]
For installing *airspeed* on OSx use pip3 command as follows
```shell
pip3 install airspeed
```
For installing it on Ubuntu you must compile it from source code:
```shell
git clone https://github.com/purcell/airspeed.git
cd airspeed
sudo python3 setup.py install
cd ..
sudo rm -Rf airspeed
```
### Ubuntu Bug
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/887793
```shell
sudo -s
echo "disable" > /sys/firmware/acpi/interrupts/gpe13
```

### ONOS Configuration
For using [ONOS SDN platform](http://onosproject.org/) based on this dotfiles
set following configuration in `zshrc.local`:

```shell
export ONOS_ROOT="$HOME/Documents/Git/others/onos"
autoload bashcompinit
bashcompinit
source $ONOS_ROOT/tools/dev/bash_profile
```

and comment out following line in `$ONOS_ROOT/tools/dev/bash_profile`:

```shell
export ONOS_CELL=${ONOS_CELL:-local}
```
### GTK Theme Settings
Inorder to use gtk configuration
copy the settings files from `gtk` into `~/.config/gtk-3.0/gtk.css`.
