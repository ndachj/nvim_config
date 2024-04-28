-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--[[
├── init.lua
└── lua
    ├── configs
    │   ├── coc_nvim.lua
    │   └── set_colorscheme.lua
    ├── core
    │   ├── keymaps.lua
    │   └── options.lua
    ├── extra
    │   └── icons.lua
    ├── plugins
    │   ├── bufferline_nvim.lua
    │   ├── coc_completion.lua
    │   ├── colorschemes.lua
    │   ├── nvim_dashboard.lua
    │   ├── nvim_lualine.lua
    │   ├── nvim_tree.lua
    │   ├── nvim_treesitter.lua
    │   ├── telescope_nvim.lua
    │   └── whichkey_nvim.lua
    └── pmanager
        └── lazy_nvim.lua
]]
--

-- core modules
require("core.keymaps")
require("core.options")

-- plugin manager
require("pmanager.lazy_nvim")

-- colorscheme
require("configs.set_colorscheme")

-- other config
require("configs.coc_nvim")
