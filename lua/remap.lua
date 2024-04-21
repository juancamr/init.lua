local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set("v", "K", "k")
keymap.set("v", "J", "j")
keymap.set("v", "R", ":m '<-2<CR>gv=gv")
keymap.set("v", "N", ":m '>+1<CR>gv=gv")
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("x", "p", [["_dP]])
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("i", "<C-c>", "<Esc>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>")
keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
keymap.set("n", "<Tab>", ";")
keymap.set("i", "<C-BS>", "<C-w>")
keymap.set("i", "<C-h>", "<C-w>")
keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap.set("n", "s", "<Esc><cmd>w<CR>")
keymap.set("n", "<leader>d", "Vd")
-- keymap.set("n", "<A-e>", function()
--     local command = "/" .. vim.fn.expand("%:t:r")
--     vim.cmd("Ex")
--     vim.cmd(command)
-- end)

keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false
})

keymap.set({ "n", "v", "i" }, "<C-s>", "<Esc><cmd>w<CR>")
keymap.set({ "n", "i" }, "<C-l>", "<nop>")
keymap.set("n", "<C-z>", "<cmd>q<CR>")
keymap.set("n", "<A-z>", "<cmd>qa!<CR>")
keymap.set("i", "<C-r>", "<Esc>O")
