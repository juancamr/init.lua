return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			local vim = vim
			-- disable netrw
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup({
				view = {
					width = 50,
				},
				actions = {
					open_file = {
						quit_on_open = true,
					},
				},
				git = {
					enable = false,
				},
			})

			vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeFindFileToggle<CR>")
		end,
	},
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
}
