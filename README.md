# Neovim settings
## Requirements
- [Neovim](https://neovim.io/)
- [git](https://git-scm.com/) for vim-plug
- [vim-plug](https://github.com/junegunn/vim-plug) for installing plugins
- [vim-airline](https://github.com/vim-airline/vim-airline) for the status line
- [Powerline fonts](https://github.com/powerline/fonts) for the status line
- [NerdTree](https://github.com/preservim/nerdtree) for browsing files & folders in Neovim
- [Python 3.6+](https://www.python.org/downloads/) for Vimspector
- [Vimspector](https://github.com/puremourning/vimspector) for debugging[^1]

![Vim with DejaVu Sans Mono for Powerline font](https://github.com/duythecoder/nvim-settings/blob/main/screenshots/Vim%20with%20DejaVu%20Sans%20Mono%20for%20Powerline%20font.png)
[^1]: On my machine, I have great difficulty in debugging because the debugger continuously jump into libraries, I still haven't found a solution for this.

## Properties
This copy of Neovim is shipped with:
- [Everforest](https://github.com/sainnhe/everforest) theme:
```
set background=dark
let g:everforest_background = 'soft'
```
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [NerdTree](https://github.com/preservim/nerdtree)
- [Vimspector](https://github.com/puremourning/vimspector)

## Installation
- Add Python and `pip` to `%PATH%`, install Python 3 in Neovim using `pip3 install --user neovim`.
- Add Neovim to `%PATH%`, start Windows Terminal, type `nvim` to start Neovim. Type `echo stdpath('config')` to get the settings path for Neovim.
- Copy `init.vim` into that folder, `:w`, `:so %`, `:PlugInstall` to install all plugins.
- Restart Neovim.

## Usage
- Leader key is the **space** key.
### Keymap
#### Neovim settings
##### Switching between panes
+ `Ctrl + H` for **left** pane.
+ `Ctrl + L` for **right** pane.
+ `Ctrl + J` for **bottom** pane.
+ `Ctrl + K` for **top** pane.
###### Navigation
+ `Ctrl + J` for moving 10 lines down.
+ `Ctrl + K` for moving 10 lines up.
###### C++ compilation
+ Press `r` to compile and run.
#### Plugin settings
##### NerdTree
+ `Leader + F` for viewing file.
+ `Leader + T` for toggling.
##### vim-airline#tabline
+ `Tab` for switching to next tab.
+ `Shift + Tab` for switching to previous tab.
##### vim-spector
- Mapping: **HUMAN** mode

| Key      | Function |
| :---    |    :----  |
| `F3` | Stop debugging |
| `F6`  | Pause debugger |
| `F9` | Toggle breakpoint for current line |
| `Leader + F9`  | 	Toggle conditional line breakpoint or logpoint on the current line |
| `F8` | Add a function breakpoint for the expression under cursor |
| `Leader + F8`  | 	Run to cursor |
| `F10`  | 	Step over |
| `F11` | Step into |
| `F12`  | 	Step out of current function scope |

- Custom keymaps:
  - `Leader + dd` to start debugging.
  - `Leader + dx` to reset the debugger.
  - `Leader + de` to evaluate an expression.
  - `Leader + dw` to set a watch on a variable.
  - `Leader + do` to show the output.

## CP Usage
For ease in working with Vim in CP, I created some Powershell scripts which you can run from the command line to automatically create files for you.
- [cp.ps1](https://github.com/duythecoder/nvim-settings/blob/main/cp-scripts/cp.ps1) for creating `.vimspector.json` and `main.cpp`
