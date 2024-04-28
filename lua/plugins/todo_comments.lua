local M = {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
    }
}

vim.keymap.set("n", "<leader>ft", "<cmd>:TodoTelescope<CR>", { desc = "TODO comment" })

return M
