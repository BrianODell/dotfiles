execute pathogen#infect()
set ts=4 sw=4 et hidden
syn on
set number
set clipboard=unnamed

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
