# My dotfiles
Dotfiles for my Manjaro i3 setup. Old dotfiles for XFCE can be found [here](https://github.com/zoj613/dotfiles/tree/manjaro).

## Script details
- `symlink.sh`: Sets up the symbolic links of the relevant dotfiles in the home directory.
- `install_packages.sh`: Installs basic packages for the system, development, audio and others.
- `install_packages_extras.sh`: Extra non-core packages not installed in the main setup script.
- `install_powerline.sh`: Installs powerline fonts and powerline-go for the shell.
- `install_pyenv.sh`: Installs pyenv and pyenv-virtualenv to aid my python dev workflow.
- `install_vundle.sh`: Installs Vundle and sets up all my vim plugins.
- `theming.sh`: Installs themes and fonts plus automates some window manager & desktop settings to my preference.
- `setup.sh`: Runs the other scripts except for `theming.sh` and `install_packages_extras.sh`. Those are ran manually
- `configure_music_player.sh`: Configure mpd+ncmcpp music player
- `configure_file_manager.sh`: configure vifm file manager to my liking.
- `configure_i3blocks.sh`: Download and configure i3status blocklets via i3-blocks.
- `configure_fzf.sh`: download and source bash keybindings for fuzzy finder.

## Screenshots
<details>
<summary>As of 19-09-2021</summary>
<br>

![](scripts/img/tileview.png)

![](scripts/img/ncmpcpp.png)

![](scripts/img/pdf.png)

</details>

## Installation
On a fresh install of Manjaro-i3, run the following shell commands.
```bash
git clone https://github.com/zoj613/dotfiles.git
cd dotfiles/scripts
source setup.sh
```

Optionally, extras can be installed including theming the desktop using:

```bash
source install_packages_extras.sh
source theming.sh

```
