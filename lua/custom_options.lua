local keymap = vim.keymap.set
local standart_options = { noremap = true, silent = true }

-- Define Tab As 2 Spaces "  "
vim.cmd([[
  autocmd FileType * setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
]])

-- Don't Have To Work At Bottom Of Screen
vim.opt.scrolloff = 8

keymap("n", "i", "i<C-o>zz", standart_options)
keymap("n", "A", "A<C-o>zz", standart_options)
keymap("n", "j", "jzz", standart_options)
keymap("n", "k", "kzz", standart_options)
keymap("n", "<UP>", "<UP>zz", standart_options)
keymap("n", "<DOWN>", "<DOWN>zz", standart_options)
keymap("n", "G", "Gzz", standart_options)
keymap("i", "<DOWN>", "<DOWN><C-o>zz", standart_options)
keymap("i", "<Up>", "<UP><C-o>zz", standart_options)
vim.api.nvim_set_keymap("i", "<CR>", "<CR><C-o>zz", standart_options)
vim.cmd([[
autocmd InsertEnter * norm zz
]])
-- Display Relative Numbers On The Left Side
vim.o.number = true
vim.o.relativenumber = true

-- Yank Now Stays In Clipboard
vim.o.clipboard = "unnamedplus"

-- Define "<leader>" As Space " "
vim.g.mapleader = " "

--mg979/vim-visual-multi "<leader>dir" Opens Current Filestructure
vim.api.nvim_set_keymap("n", "<leader>dir", ":Explore<CR>", standart_options)
-- "<leader>y" Yank And Cut
keymap("v", "<leader>y", '"+ygv"+d', standart_options)
-- "<leader>a" To Select The Whole Text Of The Page Like "CMD + a"
keymap("n", "<leader>a", "gg_VG$", standart_options)
-- Remove NeoVim Background
vim.o.termguicolors = true
-- Autocomplete
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.cmd("set complete+=kspell")
vim.cmd("set completeopt=menuone,longest")
-- Add Cursors
vim.cmd([[
    let g:VM_maps = {}
    let g:VM_maps['Add Cursor Down'] = '<S-DOWN>'
    let g:VM_maps['Add Cursor Up'] = '<S-UP>'
]])
