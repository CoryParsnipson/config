# config

Various environment config files

## Contents

### neovim

Contains deviations from nvchad (lazy plugin system + mason) setup.

1. Install nvchad (clone the repo from the website into `~/.config/nvim`)

1. Link or copy `plugins.lua` to nvim settings. The file may be one of:

   * `~/.config/nvim/lua/custom/plugins.lua`
   * `~/.config/nvim/lua/plugins/init.lua`

   depending on the version of nvchad you have.

1. Link or copy `init.lua` to one of the following paths:

   * `~/.config/nvim/lua/custom/init.lua`
   * `~/.config/nvim/lua/init.lua`

   depending on the version of nvchad you have.

1. Link or copy `mappings.lua` to `~/.config/nvim/lua/custom/mappings.lua`.

### tmux

Contains tmux config settings and package manager includes. Changes things like enabling the mouse, fixing terminal colors, rebinding the prefix to C-a, and adding sensible vim like pane navigation.

1. Copy or symbolic link tmux config file. Probably something like this:

```
mv ~/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf.orig
ln -s ~/.config/tmux/tmux.conf <path-to-config-repo>/tmux/tmux.conf
```

The tmux config file may also be global and found in `/etc/tmux.conf`
