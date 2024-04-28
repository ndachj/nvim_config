-- plugins/telescope.lua:
local M = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    }
}

function M.config()
    -- To get fzf loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup functio
    require('telescope').load_extension('fzf')
    local wk = require "which-key"
    wk.register {
        ["<leader>f"] = { name = "Find" },
        ["<leader>fc"] = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
        ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Find Text by Grep" },
        ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Help" },
        ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
    }
end

return M
