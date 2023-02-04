# Bash Plus Oh My Zsh Theme

![ZSH](https://shields.io/badge/Oh_My-Zsh-4EAA25?logo=gnubash&logoColor=white&style=for-the-badge)
![Theme](https://shields.io/badge/Theme-blue?logo=addthis&logoColor=white&style=for-the-badge)


This theme is made to look like the default `bash` prompt, but colored. It also supports displaying virtual environments and `git` status.

# Installation

1. Install [oh-my-zsh](https://ohmyz.sh)
1. Download or clone this repository.
1. Copy the `bashplus.zsh-theme` file into `~/.oh-my-zsh/themes/`. 
    * Alternatively you can skip 2nd and 3rd steps and run the command below:
    ```bash
    curl -sfSL "https://raw.githubusercontent.com/Elagoht/BashPlusZshTheme/main/bashplus.zsh-theme" -o ~/.oh-my-zsh/themes/bashplus.zsh-theme
    ```
1. Edit `~/.zshrc` file
    1. Change the `ZSH_THEME` line to `ZSH_THEME="bashplus"`
    1. Add `virtualenv` into `plugins=()' list (separate with space).
1. Save the file.
1. Open a new `zsh`.

# Screenshot

![Demo](https://raw.githubusercontent.com/Elagoht/BashPlusZshTheme/main/screenshot.png)
