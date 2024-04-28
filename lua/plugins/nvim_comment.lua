local M = {
    'numToStr/Comment.nvim',
    lazy = false,
}

function M.config()
    -- you need to call the setup() method to create the default mappings.
    require('Comment').setup()
    -- Add a visual shortcut
    local wk = require "which-key"
    wk.register {
        ["<leader>/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
    }
    wk.register {
        ["<leader>/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment", mode = "x" },
    }
end

return M
