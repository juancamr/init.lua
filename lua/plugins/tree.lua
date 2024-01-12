return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<CR>")

			require("nvim-tree").setup({
				view = {
					width = 50,
				},
				actions = {
					open_file = {
						quit_on_open = true,
					},
				},
			})
		end,
	},
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
}
