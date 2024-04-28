local M = {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
}

function M.config()
    local mappings = {
        --q = { "<cmd>confirm quit<CR>", "Quit" },
        a = { name = "LSP" },
        f = { name = "Find" },
        g = { name = "Git" },
        o = {
            name = "Open",
            n = { "<cmd>ene | startinsert<cr>", "New File" },
            t = { "<cmd>tabnew | terminal<CR>", "Terminal" }
        },
        S = {
            name = "Tabs & Win",
            n = { "<cmd>$tabnew<cr>", "New Empty Tab" },
            N = { "<cmd>tabnew %<cr>", "New Tab" },
            h = { "<cmd>-tabmove<cr>", "Move Left" },
            l = { "<cmd>+tabmove<cr>", "Move Right" },
            s = { "<cmd>vsplit<CR>", "Split Horizontally" },
            v = { "<cmd>vsplit<CR>", "Split Vertically" },
        },
        T = { name = "Treesitter" },
        w = { name = "Quit" },
    }
    local which_key = require "which-key"
    local opts = {
        mode = "n", -- NORMAL mode
        prefix = "<leader>",
    }
    which_key.register(mappings, opts)
end

return M
