#!/usr/bin/env bash

export PATH=~/dotfiles/bin:$PATH
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1 POWERLINE_BASH_SELECT=1 . ~/dotfiles/powerline/powerline/bindings/bash/powerline.sh
