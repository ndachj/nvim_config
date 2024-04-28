-- VIM OPTIONS
-- See `:help option-list``
-- and `:help vim.opt`


-- [[ Appearance
vim.opt.number = true
vim.opt.relativenumber = true -- add numbers to each line on the left side
vim.opt.cursorline = true     -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true     -- open new vertical split bottom
vim.opt.splitright = true     -- open new horizontal splits right
vim.opt.termguicolors = true  -- enabl 24-bit RGB color in the TUI
vim.opt.showmode = true
vim.opt.background = "dark"
-- ]]

-- [[ Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = 'split' -- preview substitutions live, as you type!
-- ]]

-- [[ Highlight
vim.opt.hlsearch = true  -- highlight on search
vim.opt.incsearch = true -- highlight match while typing search pattern
-- ]]

-- [[ Tab and Indentation
vim.opt.expandtab = true  -- convert tab to spaces
vim.opt.tabstop = 4       -- 4 spaces == 1 Tab
vim.opt.softtabstop = 4   -- 4 spaces == 1 Tab while editing
vim.opt.shiftwidth = 4    -- number of spaces to use for (auto)indent step
vim.opt.smarttab = true   -- use 'shiftwidth' when inserting <Tab>>
vim.opt.autoindent = true --take indent for new line from previous linee
-- ]]

-- [[ LSP related
vim.opt.updatetime = 300   -- have shorter updatetime (default = 4000 ms)
vim.opt.backup = false     -- no backup files
vim.opt.writebackup = false
vim.opt.signcolumn = "yes" -- always show the signcolumn
-- ]]

-- Enable mouse mode
vim.opt.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- options for Insert mode
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Consider - as part of a word
vim.opt.iskeyword:append("-")


-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { eol = '', tab = '» ', trail = '·', nbsp = '␣' }
