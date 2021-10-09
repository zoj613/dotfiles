# My dotfiles
Dotfiles for archlinux + i3wm. Old dotfiles for Manjaro-i3 and Manjaro-XFCE can be found [here](https://github.com/zoj613/dotfiles/tree/manjaro-i3) and [there](https://github.com/zoj613/dotfiles/tree/manjaro).


## Script details
- `symlink.sh`: Sets up the symbolic links of the relevant dotfiles in the home directory.
- `install_packages.sh`: Installs basic packages for the system, development, audio and others.
- `install_packages_extras.sh`: Extra non-core packages not installed in the main setup script.
- `install_powerline.sh`: Installs powerline fonts and powerline-go for the shell.
- `install_pyenv.sh`: Installs pyenv and pyenv-virtualenv to aid my python dev workflow.
- `install_vimplug.sh`: Installs vimplug and sets up all my vim plugins.
- `theming.sh`: customizes the look of the gtk apps I use. 
- `setup.sh`: Runs the other scripts except for `install_packages_extras.sh`.
- `configure_music_player.sh`: Configure mpd+ncmcpp music player
- `configure_file_manager.sh`: configure vifm file manager to my liking.
- `configure_i3blocks.sh`: Download and configure i3status blocklets via i3-blocks.
- `configure_fzf.sh`: download and source bash keybindings for fuzzy finder.


## Installation
On a fresh install of archlinux that has base packages and `yay` installed, run the following shell commands:
```bash
git clone https://github.com/zoj613/dotfiles.git
cd dotfiles/scripts
source setup.sh
```
