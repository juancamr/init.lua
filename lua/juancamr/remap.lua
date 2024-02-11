local vim = vim
local keymap = vim.keymap
local cmd = vim.cmd

vim.g.mapleader = " "

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("x", "p", [["_dP]])
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

keymap.set({ "n", "v" }, "<leader>d", [["_d]])
keymap.set("i", "<C-c>", "<Esc>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>")

keymap.set("n", "q", "<nop>")
keymap.set("n", "<C-z>", "u")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>u", cmd.UndotreeToggle)

keymap.set("n", "<C-S>", "<cmd>wa<CR>")
keymap.set("i", "<C-S>", "<cmd>wa<CR>")

keymap.set("i", "<C-BS>", "<C-w>")
keymap.set("i", "<C-h>", "<C-w>")

keymap.set("n", "<leader>q", "<cmd>q<CR>")
keymap.set("n", "<Tab>", ";")
keymap.set("n", "<leader>l", "aconsole.log()<C-c>i")
