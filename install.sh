#!/usr/bin/env bash

pip2 install --user powerline-status --editable ./powerline
ln -s ~/dotfiles/powerline/scripts/powerline/powerline ~/dotfiles/bin/
ln -s ~/dotfiles/powerline/scripts/powerline/powerline-daemon ~/dotfiles/bin/

echo ". ~/dotfiles/bash_profile_continued.sh" >> ~/.bash_profile
