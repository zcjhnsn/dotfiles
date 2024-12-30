# My dotfiles

This directory contains the dotfiles for my system. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Requirements

### Git
```
brew install git
````

### Stow
```
brew install stow
```
## Installation

1. Clone the repository in your $HOME directory

```
git clone git@github.com:zcjhnsn/dotfiles.git
cd dotfiles
```

then use GNU Stow to create symlinks

```
stow .
```

## Info

Inspired by [this youtube video](https://youtu.be/y6XCebnB9gs?si=LyeKJ49s7Kj-K8YQ) and [this repo](https://github.com/protiumx/.dotfiles)
