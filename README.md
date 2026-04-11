# dotfiles

Manages dotfiles and devbox global packages with chezmoi.

## Prerequisites

[chezmoi](https://www.chezmoi.io/) must be installed into your host.

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin
```

Also, several 'must-have' packages should be installed into your host as below.

### Debian/Ubuntu

```sh
sudo apt install git zsh build-essential wl-clipboard curl zip unzip ncurses-term gettext-base
```

### openSUSE

```sh
sudo zypper install -t pattern devel_basis
sudo zypper install git zsh dirmngr gcc-c++ wl-clipboard curl zip unzip terminfo
```

### archlinux

```sh
sudo pacman -S base-devel git zsh zlib-ng wl-clipboard curl zip unzip
```

## Steps to deploy

```sh
chezmoi init gasuketsu
chezmoi apply
```

> [!NOTE]
> [devbox](https://www.jetify.com/devbox) install script should be run when performing
> `chezmoi apply` if not available.

> [!TIP]
> `.bashrc` is currently not managed, so make sure to source `~/.config/bash/config.bash`
> in your `.bashrc` to activate devbox tools and enable other configurations in bash.
