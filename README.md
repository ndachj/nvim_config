# Neovim config

```
╭─────────────────────────────────╮
│  ___ ___   ___ | | | _(_) __| | │
│ / __/ _ \ / _ \| | |/ / |/ _` | │
│| (_| (_) | (_) | |   <| | (_| | │
│ \___\___/ \___/|_|_|\_\_|\__,_| │
╰─────────────────────────────────╯
```

My simple and modern Neovim configuration.

## 📷 Screenshot

Coming soon ...99%

## 🛠 Quick Guide

### 📦 Prerequisites

1. Neovim
2. git
3. nodejs
4. fd-find (required by Telescope)
5. ripgrep (required by Telescope)
6. gcc or clang for compiling Treesitter parser

On Ubuntu or Debian

```bash
sudo apt install neovim git nodejs fd-find ripgrep clang
```

On other OS

```bash
...
```

### ✨ Optional

Nerd font (Font that supports icons)
[get Nerd font]()

Clipboard integration

```bash
# On Ubuntu or Debian
sudo apt install xsel # for X11
sudo apt install wl-clipboard # for wayland
```

Neovim Python 3 support

```bash
python3 -m pip install pynvim
```

Neovim Node.js support

```bash
npm install -g neovim
```

### ⚡ Setup

Backup your current `nvim` config

```bash
mv -v ~/.config/nvim ~/.config/nvim.bak
```

Remove the old plugins

```bash
rm -rf ~/.local/share/nvim
```

Clone the repo

```bash
git clone https://github.com/ndachj/nvim_config ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed.

### ✅ Check Health

Open `nvim` and enter the following:

```vim
:checkhealth
```

## 📂 File Structure

<pre>
~/.config/nvim
    ├── lua
    │   ├── configs
    │   │   ├── coc_nvim.lua
    │   │   └── set_colorscheme.lua
    │   ├── core
    │   │   ├── keymaps.lua
    │   │   ├── lazy_nvim.lua
    │   │   └── options.lua
    │   ├── extra
    │   │   └── icons.lua
    │   └── plugins
    │       ├── bufferline_nvim.lua
    │       ├── ...
    │       └── whichkey_nvim.lua
    │
    ├── coc-settings.json
    └── init.lua
</pre>

## 🎨 Theme

[vscode](https://github.com/Mofiqul/vscode.nvim) - Lua port of vim-code-dark colorscheme for neovim with VScode's light and dark theme.

## 🆒 Enjoy

See:

[Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch) - Neovim config designed from scratch to be understandable.

[awesome-neovim](https://github.com/rockerBOO/awesome-neovim) - Collections of awesome Neovim plugins. Mostly targeting Neovim specific features.
