# config

Various environment config files

## Setup

1. Copy or symbolic link tmux config file. Probably something like this:

```
mv ~/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf.orig
ln -s ~/.config/tmux/tmux.conf <path-to-config-repo>/tmux/tmux.conf
```

The tmux config file may also be global and found in `/etc/tmux.conf`

## Contents

### tmux

Contains tmux config settings and package manager includes. Changes things like enabling the mouse, fixing terminal colors, rebinding the prefix to C-a, and adding sensible vim like pane navigation.
