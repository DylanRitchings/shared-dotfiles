## Installation
```bash
cd $HOME/.dotfiles/

folder_name=${PWD##*/}
git --git-dir="$HOME/.dotfiles/${folder_name}" --work-tree="$HOME" init
export GIT_DIR="$HOME/.dotfiles/${folder_name}"


git config status.showUntrackedFiles no

git remote add origin "https://github.com/DylanRitchings/${folder_name}-dotfiles.git"
git fetch

# WARNING: Overwrites files
git reset --hard origin/main
```
