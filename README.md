# Neovim settings
## Requirements
- Ubuntu 20.04 LTS
- [Neovim](https://neovim.io/)
- [git](https://git-scm.com/) for vim-plug
- [vim-plug](https://github.com/junegunn/vim-plug) for installing plugins
- [Powerline fonts](https://github.com/powerline/fonts) for the status line
- [Python 3.6+](https://www.python.org/downloads/) for Vimspector[^1]
- [MinGW](https://sourceforge.net/projects/mingw/) for C++ compilation

![Vim on WSL1 running on Windows Terminal with Ubuntu for Powerline font](https://github.com/duythecoder/nvim-settings/blob/main/screenshots/vim.png)
[^1]: On my PC, I have great difficulty in debugging because the debugger continuously jump into libraries, I still haven't found a solution for this.

## Properties
This copy of Neovim is shipped with:
### Themes
- [Everforest](https://github.com/sainnhe/everforest)
```
set background=dark
let g:everforest_background = 'soft'
```
- [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
### Others
- [vim-airline status bar](https://github.com/vim-airline/vim-airline)
- [NerdTree file browser](https://github.com/preservim/nerdtree)
- [vim-polyglot syntax highlighter](https://github.com/sheerun/vim-polyglot)
- [Vimspector debugger](https://github.com/puremourning/vimspector)
- [ccls](https://github.com/MaskRay/ccls) language server
- [startify](https://github.com/mhinz/vim-startify) welcome screen
- [See how](https://stackoverflow.com/questions/36341511/how-do-i-insert-text-at-the-beginning-of-a-vim-file-using-the-vimrc-file) I set my default C++ template

## Installation
### Step 1: Initial installation from `init.vim`
```
pip3 install --user neovim
nvim
:echo stdpath('config')
```
- Copy [init.vim](https://github.com/duythecoder/nvim-settings/blob/main/init.vim) into the on-screen directory.
```
:w
:so %
:PlugInstall
:VimspectorInstall --all
```
Find customizations of `:VimspectorInstall` [here](https://github.com/puremourning/vimspector#install-some-gadgets).
### Step 2: ccls installation
- Install NodeJS 12.12+:
```
sudo apt-get install nodejs
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nano ~/.zshrc
```
- Add the following content into the file and save:
```
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```
- Restart terminal.
```
nvm install 12.12.0
nvm alias default 12.12.0
sudo apt install ccls
nvim
:CocConfig
```
- Copy from [coc-settings.json](https://github.com/duythecoder/nvim-settings/blob/main/plugin-assets/coc/coc-settings.json)
- Copy example coc key bindings and other vim config from [here](https://github.com/neoclide/coc.nvim#example-vim-configuration).
- Enable C++17: copy [.ccls](https://github.com/duythecoder/nvim-settings/blob/main/plugin-assets/coc/.ccls) in root project folder.

[Full guide](https://www.youtube.com/watch?v=ViHgyApE9zM)

## Usage
- Leader key is the **space** key.
### Keymap
#### Neovim built-in settings
##### Switching between panes
+ `Ctrl + H` for **left** pane.
+ `Ctrl + L` for **right** pane.
+ `Ctrl + J` for **bottom** pane.
+ `Ctrl + K` for **top** pane.
##### Navigation
+ `m` to move down 10 lines.
+ ',' to move up 10 lines.
##### C++ compilation
+ `:wc` to compile.
##### Copy + paste between Vim and OS
+ `Leader + Y` for copying.
+ `Leader + P` for pasting.
##### Terminal
+ `Shift + T` for starting terminal.
+ `Esc` for Terminal Normal mode.
#### Plugin settings
##### NerdTree
+ `Leader + F` for viewing file.
+ `Leader + T` for toggling.
##### vim-airline#tabline
+ `Ctrl + T` for new tab.
+ `Ctrl + W` for closing current tab.
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
##### coc (Example key bindings)
- `Tab` for completion.
- `<cr>` to choose first completion item.
- `gd` to jump to definition
- `gr` for references
- `gy` for type definition
- `K` for documentation
- `Leader + rn` for renaming
- `if`, `ic` for func/class selection in visual mode
- Diagnostics:
  - `Space + a` to list diagnostics.
  - `[g` and `]g` to go prev/next in diagnostics.

# References
- [doi dev - YouTube](https://www.youtube.com/channel/UC9aq09doyUlJCUToCqWYtDA)
- [How to pip install neovim? - Reddit](https://www.reddit.com/r/neovim/comments/oczrmc/how_to_pip_install_neovim/)
- [nvm command not found :( - DEV Community](https://dev.to/duhbhavesh/nvm-command-not-found-1ho)
- [I want to install nodejs with latest version - Stack Overflow](https://stackoverflow.com/questions/58405961/i-want-to-install-nodejs-with-latest-version)
