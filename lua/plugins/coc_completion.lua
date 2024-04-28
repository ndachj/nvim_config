--NOTE: COC requires
--1. `nodejs`
--2. `npm/yarn`
--3. `Neovim`  -> of course
--
-- {{{
-- Just some notes
-- To Install a coc-extension
--      `:CocInstall coc-pyright coc-json`
-- To Update
--      `:CocUpdate` or
--      `:CocUpdateSync`
-- To Unistall
--      `:CocUninstall coc-css`
-- To Manage
--      `:CocList extensions`
-- To add some configurations
--      `:CocConfig`
-- Open commands list
--      `:CocList commands`
--      `:CocCommand <TAB>`
-- }}}

return{
    'neoclide/coc.nvim',
    -- Use release branch (recommended)
    branch = 'release'
}
