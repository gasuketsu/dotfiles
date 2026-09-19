# dotfiles

Manages dotfiles and devbox global packages with chezmoi.

## Prerequisites

Install several required packages into your host as below.

### Debian/Ubuntu

```sh
sudo apt install git zsh build-essential wl-clipboard curl zip unzip ncurses-term gettext-base
```

### openSUSE

```sh
sudo zypper install --no-recommends -t pattern devel_basis devel_C_C++
sudo zypper install --no-recommends git zsh dirmngr wl-clipboard curl zip unzip terminfo
```

### archlinux

```sh
sudo pacman -S base-devel git zsh zlib-ng wl-clipboard curl zip unzip
```

Also, install [chezmoi](https://www.chezmoi.io/) into your host.

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin
```

## Steps to apply

```sh
chezmoi init gasuketsu
chezmoi apply
```

> [!NOTE]
>
> - Depending on your distro/environment, you may need to add `$HOME/.local/bin` to your PATH to run chezmoi.
> - [Determinate Nix](https://determinate.systems/nix/) and [Devbox](https://www.jetify.com/devbox) will be
>   installed during initial `chezmoi apply` if not found.

> [!TIP]
> `.bashrc` is currently not managed, so make sure to source `~/.config/bash/config.bash`
> in your `.bashrc` to activate devbox tools and enable other configurations in bash.
