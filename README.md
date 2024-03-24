# Bluedragon1221's dotfiles
This time with stow

## Terminal Environment
there are two ways you can use these, but either way, you need to install `stow` first.
It should be available in your distro's package manager

The first way to use it is to install everything to your base system.
```sh
for i in ./*/; do
  stow $i
done
```
But this is kind of clunky because it will bloat up your main system.

### Distrobox
But you might have noticed that `distrobox.ini` file.
You can use it to spin up a terminal environment with only the terminal dotfiles installed.
pretty neat!

First, install distrobox. Refer to ![the project's installation gude](https://github.com/89luca89/distrobox/tree/main?tab=readme-ov-file#installation) for how to do that.
Then, just use `distrobox assemble` in this directory to create the distrobox:
```sh
distrobox assemble create
```

## Graphical Environment
For the graphical dotfiles, you'll still need to install the packages first, then stow them.
```sh
pacman -S sway foot
stow sway foot
```

Preferably, install graphical applications with flatpak
```sh
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --user install org.mozilla.firefox
```

If you want a cool firefox theme, I gotchu
```sh
stow firefox
```
