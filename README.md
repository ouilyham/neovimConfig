# documentation 
Simple config for [Neovim](https://neovim.io/) using [NvChad](https://nvchad.com/).

# What is different?
- simply added a LSP for [elixir](https://elixir-lang.org/)
- added [nvim-lint](https://github.com/mfussenegger/nvim-lint). For nvim-lint to format my elixir files on save. i added a custom event for autocmd. "LazyFile"
- Added a plugin for markdown preview. [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)

Don't forget to install a [Nerd Fonts](https://www.nerdfonts.com/) and change your terminal to use it.
`Ctrl+,` in the terminal with Windows 11 or right click this header of the terminal with Windows 10.
Change the fonts for the Nerd fonts of your choice. Without the nerd fonts you won't have the icons in the NvimTree. 
# Installation
## For windows
1. Copy this repo with this commands : 
```bash
git clone https://github.com/ouilyham/neovimConfig.git %LOCALAPPDATA%/nvim/
```
## Linux (Not tested)
```bash
git clone https://github.com/ouilyham/neovimConfig.git ~/configs/nvim/
```
## macOS
Well you are to rich for me. Figure it out yourself :).

# KeyMaps reminder for starter
- `<leader>+ch` Open NvChad cheatsheet for some default keymaps.
- `<leader>+ff` **F**ind **F**iles with Telescope plugin.
