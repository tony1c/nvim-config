vim.opt.relativenumber = true

-- Creation of a 'keymap' variable to avoid repeating 'vim.keymap'
local keymap = vim.keymap

-- Use jj as a shortcut for Esc in Insert mode 
keymap.set('i', 'jj', '<Esc>')

-- Key mappings for editing text
keymap.set('n', 'x', '"_x') -- delete character without yanking

-- Greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Key mappings for moving selected text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Scrolling and keeping cursor at center
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Fast substitute 
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
