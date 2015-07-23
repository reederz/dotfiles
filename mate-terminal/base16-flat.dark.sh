#!/bin/bash

# Do not use theme color
dconf write /org/mate/terminal/profiles/default/use-theme-colors false
dconf write /org/mate/terminal/profiles/default/use-theme-background false

# set palette
dconf write /org/mate/terminal/profiles/default/palette "'#2C3E50:#E74C3C:#2ECC71:#F1C40F:#3498DB:#9B59B6:#1ABC9C:#e0e0e0:#95A5A6:#E74C3C:#2ECC71:#F1C40F:#3498DB:#9B59B6:#1ABC9C:#ECF0F1'"

# set highlighted color to be different from foreground-color
dconf write /org/mate/terminal/profiles/default/bold-color-same-as-fg false
dconf write /org/mate/terminal/profiles/default/background-color "'#2C3E50'"
dconf write /org/mate/terminal/profiles/default/foreground-color "'#e0e0e0'"
dconf write /org/mate/terminal/profiles/default/bold-color "'#e0e0e0'"

echo -e "\e[37;41mTerminal must be restarted\e[0m"
