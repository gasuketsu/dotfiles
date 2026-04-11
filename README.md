# dotfiles

Manages dotfiles with chezmoi

## Prerequisites

Following tools must be available to apply/install dotfiles and dev tools.

- [chezmoi](https://www.chezmoi.io/)
- [devbox](https://www.jetify.com/devbox)

```sh
# install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"

# install devbox
curl -fsSL https://get.jetify.com/devbox | bash
```

Also, several 'must-have' packages should be installed into your host as below.

### Debian/Ubuntu

```
sudo apt install git zsh build-essential wl-clipboard curl zip unzip ncurses-term gettext-base
```

### openSUSE

```
sudo zypper install -t pattern devel_basis
sudo zypper install git zsh dirmngr gcc-c++ wl-clipboard curl zip unzip terminfo
```

### archlinux

```
sudo pacman -S base-devel git zsh zlib-ng wl-clipboard curl zip unzip
```

## Steps to deploy

### deploy dotfiles

```sh
chezmoi init gasuketsu
chezmoi apply
```

Note that `.bashrc` is currently not managed, so make sure to source `~/.config/bash/config.bash`
in your `.bashrc` to activate devbox tools and enable other configurations in bash.

### deploy tools managed by devbox

```sh
devbox global install
```
