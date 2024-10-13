# About

This is my nvim config.

# Install(Linux)

1. `git clone https://github.com/Clovis1444/nvim-conf.git --depth 1 `
2. `./nvim-conf/install_conf.sh`
   > [!WARNING]  
   > Your `~/.config/nvim` dir will be overwritten
3. `rm -rf ./nvim-conf`

# Source

The config was written thanks to [this playlist](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=Cd7yw67aVFjh54bH)

# Keymaps

All keymaps may be found at `lua/mapping.lua` and `lua/plugins/*plugin-name*.lua`.

## Comment

- `gcc` to comment line.
- `gc` + `down/up` to comment lines.
- `gc` + `left/right` to inline comment.
