# open-with-cmd.yazi

This is a Yazi plugin for opening files with a prompted command.

## Installation

Install the plugin:

```
ya pack -a Ape/open-with-cmd
```

Create `~/.config/yazi/keymap.toml` and add:

```
[[manager.prepend_keymap]]
on   = "o"
run  = "plugin open-with-cmd --args=block"
desc = "Open with command in the terminal"

[[manager.prepend_keymap]]
on   = "O"
run  = "plugin open-with-cmd"
desc = "Open with command"
```
