-- set my colorscheme
local mycolorscheme = "vscode"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. mycolorscheme)
if not status_ok then
    -- fallback colorscheme
    vim.cmd.colorscheme "desert "
end
