# My own dotfiles

## Todo
- Add script for installing the required packages (the configs for which are provided)
- Add stow-ignore (presumably in order to avoid stow reading the installation script)
- Clone p10k for zsh to work properly

## Requirements

A symlink farm manager called `stow` is used in order to convenientely set up the dotfiles. You might want to install it using your package manager, or manage the symlinks yourself.

`git` VCS can be used as a mean of copying the repository onto your machine.

## Installation

1. Copy the repository into your home directory (either by cloning the repository, or by downloading the `.zip` and unpacking it in the homedir).
2. 
```
cd ~/dotfiles
```
3. 
```
stow .
```
