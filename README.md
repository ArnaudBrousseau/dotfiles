Dotfiles
========
This repo contains all the config files I don't want to loose.

That includes:
- my `.vimrc`
- my `.bashrc`
- my `tmux.conf`
- etc

The way I keep things in sync in between in between different machines is
actually quite simple. I clone this repo wherever I want on a machine I want
to configure, and `ln -s /path/to/the/repo/clone/vimrc ~/.vimrc`. Boom.

Now when I go to the local repo and updates it, all the local dotfiles are.
