#! /bin/bash
set -euo pipefail
IFS=$'\n\t'

sudo apt install --yes scrot imagemagick i3lock

if [[ ! -d "$HOME/.i3" ]]; then
  mkdir "$HOME/.i3"
fi

if [[ ! -d "$HOME/.i3/i3lock-fancy" ]]; then
  git clone --depth 1 --branch master https://github.com/Jeremie-Chauvel/i3lock-fancy.git "$HOME/.i3/i3lock-fancy"
else
  git pull
fi
chmod +x "$HOME/.i3/i3lock-fancy/lock"
