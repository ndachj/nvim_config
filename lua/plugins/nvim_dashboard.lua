local M = {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
local mytoilet = {
    [[                                  ]],
    [[  ___ ___   ___ | | | _(_) __| |  ]],
    [[ / __/ _ \ / _ \| | |/ / |/ _` |  ]],
    [[| (_| (_) | (_) | |   <| | (_| |  ]],
    [[ \___\___/ \___/|_|_|\_\_|\__,_|  ]],
    [[                                  ]],
}
local ic = require("extra.icons")

function M.config()
    require('dashboard').setup {
        theme = 'doom',        --  theme is doom and hyper default is hyper
        config = {
            header = mytoilet, --your header
            center = {
                {
                    icon = ic.ui.NewFile,
                    icon_hl = 'Title',
                    desc = 'New File',
                    desc_hl = 'String',
                    key = 'f',
                    --keymap = 'f',
                    key_format = ' %s', -- remove default surrounding `[]`
                    action = "ene | startinsert"
                },
                {
                    icon = ic.ui.History,
                    icon_hl = 'Title',
                    desc = 'Recent Files',
                    desc_hl = 'String',
                    key = 'r',
                    --keymap = 'r',
                    key_format = ' %s',
                    action = 'Telescope oldfiles'
                },
                {
                    icon = ic.misc.Key,
                    icon_hl = 'Title',
                    desc = 'Keybindings',
                    desc_hl = 'String',
                    key = 'k',
                    --keymap = 'nk',
                    key_format = ' %s',
                    action = ''
                },
                {
                    icon = ic.ui.Gear,
                    icon_hl = 'Title',
                    desc = 'Nvim Config',
                    desc_hl = 'String',
                    key = 'c',
                    --keymap = 'c',
                    key_format = ' %s',
                    action = 'e ~/.config/nvim/init.lua'
                },
                {
                    icon = ic.ui.BoldClose,
                    icon_hl = 'Title',
                    desc = 'Quit Nvim',
                    desc_hl = 'String',
                    key = 'q',
                    --keymap = 'q',
                    key_format = ' %s',
                    action = 'confirm quit'
                },
            },
            -- footer = {}  --your footer
        },
    }
end

return M
