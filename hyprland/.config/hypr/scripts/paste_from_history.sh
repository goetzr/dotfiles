#! /bin/bash

# This script allows the user to choose what they'd like to paste from the clipboard history
# instead of pasting the last copied text.

# Pipe the current cliphist history to a wofi chooser dialog allowing the user to select which text to paste.
# The selected text is copied to the system clipboard.
cliphist list | wofi --dmenu | cliphist decode | wl-copy
# Send CTRL+SHIFT+v to the active window, which pastes the text just copied into this window.
hyprctl dispatch sendshortcut CTRL+SHIFT, v, activewindow
