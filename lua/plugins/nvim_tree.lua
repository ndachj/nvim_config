local M = {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    },
}


function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "File Explorer" },
  }
    require("nvim-tree").setup {}
end

return M
