--  See `:help vim.keymap.set()`
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- [[[ NORMAL MODE ]]]
-- Write and Quit
keymap("n", "<leader>wq", ":wq<CR>", { desc = "Write and Quit" })
-- Quit without Saving
keymap("n", "<leader>wa", ":q!<CR>", { desc = "Quit without saving" })

-- Unhighlight on pressing <Esc> in normal mode
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- TIP: Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
--keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
--keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
--keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
--keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- [[[ VISUAL MODE ]]]
-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)


-- [[[ INSERT MODE ]]]
