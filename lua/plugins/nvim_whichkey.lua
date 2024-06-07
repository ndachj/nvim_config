-- which-key.nvim - displays a popup with possible key bindings of the command you started typing.
-- NOTE: it uses the desc attributes of your mappings as the default label.
-- run `:checkhealth which-key` to see if there’s any conflicting keymaps.


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
        a = { name = "coolkid" },
        b = { name = "Buffers" },
        c = { name = "CoC" },
        d = { name = "Debug" },
        f = { name = "Find" },
        g = { name = "Git" },
        l = { name = "LSP" },
        n = {
            name = "New",
            e = { "<cmd>split | terminal<cr>", "Terminal" },
            f = { "<cmd>ene | startinsert<cr>", "New File" },
            t = { "<cmd>$tabnew<cr>", "New Empty Tab" },
            T = { "<cmd>tabnew %<cr>", "New Tab" },
        },
        p = {
            name = "Plugins", -- Lazy.nvim
            c = { "<cmd>Lazy clean<cr>", "Clean" },
            d = { "<cmd>Lazy debug<cr>", "Debug" },
            h = { "<cmd>Lazy home<cr>", "Home" },
            i = { "<cmd>Lazy install<cr>", "Install" },
            l = { "<cmd>Lazy log<cr>", "Log" },
            p = { "<cmd>Lazy profile<cr>", "Profile" },
            s = { "<cmd>Lazy sync<cr>", "Sync" },
            u = { "<cmd>Lazy update<cr>", "Update" },
        },
        T = { name = "Treesitter" },
        w = { name = "Quit" },
        -- W = { "<cmd>WhichKey<cr>", "WhichKey all keymaps" },
    }

    -- disable operator `v` for visual mode
    -- make sure to run this code before calling setup()
    -- local presets = require("which-key.plugins.presets")
    -- presets.operators["v"] = nil

    local wk = require "which-key"
    local opts = {
        mode = "n", -- NORMAL mode
        prefix = "<leader>",
        buffer = nil,
        silent = true,  -- use `silent` when creating keymaps
        noremap = true, -- use `noremap` when creating keymaps
        nowait = false, -- use `nowait` when creating keymaps
        expr = false,   -- use `expr` when creating keymaps
    }
    wk.register(mappings, opts)
end

return M
