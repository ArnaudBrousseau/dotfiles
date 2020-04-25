Dotfiles
========
This repo contains all the config files I don't want to loose.

The way I keep things in sync in between machines is
actually quite simple. I clone this repo wherever I want on a machine I want
to configure, run the setup below and voilà.

The core idea is to symlink everything to be able to update the local repo and
push changes upstream easily. `git pull` on other machines is all I need.

Steps to install:

```
# Install ohmyzsh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerline fonts (this could be a submodule here...)
$ git clone https://github.com/powerline/fonts.git --depth=1
$ cd fonts
$ ./install.sh

# Set terminal font to "Fira Mono for Powerline"
# Set terminal color to "Solarized Dark"

# Symlink dotfiles
$ ln -s /path/to/the/repo/clone/vimrc ~/.vimrc
$ rm ~/.zshrc && ln -s /path/to/the/repo/clone/zshrc ~/.zshrc
$ rm ~/.profile && ln -s /path/to/the/repo/clone/profile ~/.profile
$ ln -s /path/to/the/repo/clone/tmux.conf ~/.tmux.conf
```
