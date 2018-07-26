# dotfiles

Based on the wonderful dotfiles from [Mathias Byens](https://github.com/mathiasbynens/dotfiles)

## Installation

**Note:** These dotfiles are specific to my setup. They should not be used blindly without reviewing the code first.

```bash
git clone https://github.com/markmur/dotfiles.git && cd dotfiles && source bootstrap.sh
```

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Install Node + Mac Apps

```bash
./apps.sh
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](https://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```
