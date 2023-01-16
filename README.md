## Installation
```bash
git --git-dir="$HOME/.dotfiles/shared" --work-tree="$HOME" init
export GIT_DIR="$HOME/.dotfiles/shared"

cd $HOME/.dotfiles/shared
git config status.showUntrackedFiles no

git remote add origin https://github.com/DylanRitchings/shared-dotfiles.git
git fetch

# WARNING: Overwrites files
git reset --hard origin/main
```
