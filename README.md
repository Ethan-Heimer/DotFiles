# The Crooked Config!

This is the config I use for my personal desktop, which looks like this when configured right:

![Example Desktop](desktop_ex.png)

## About

### Alacritty

The Alacritty terminal emulator works the best for this setup. Theres is a Wezterm config
included, however there seems to be a bug with Wezterm and Picom that causes XOrg to 
use 100% CPU. So Alacritty it is. 

The Config is super simple as all it does is set the font and style the terminal window.

### i3

i3 is a tiling windows manager. The config here is a lot, but here are the important bits:

- Desktop wallpaper is set in the `$wallpaper` variable. you must use the the absolute path of the wallpaper
- `$terminal` defines what terminal command is ran when `$mod+Return` is pressed. By Default its Alacritty.
- By default, window focus and movement keys are 'j', 'k', 'h', 'l' to resemble VIM
- The terminal and firefox are opened on startup.
- 'feh', 'picom', and 'polybar' are all executed at startup.
