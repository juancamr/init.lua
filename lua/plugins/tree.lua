return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			local vim = vim
			-- disable netrw
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			local function on_attach(bufnr)
				local api = require("nvim-tree.api")
				api.config.mappings.default_on_attach(bufnr)

				vim.keymap.del("n", "<C-e>", { buffer = bufnr })
				vim.keymap.del("n", "<C-t>", { buffer = bufnr })
			end

			require("nvim-tree").setup({
				on_attach = on_attach,

				view = { width = 50 },
				actions = { open_file = { quit_on_open = true } },
				git = { enable = false },
			})

			vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeFindFileToggle<CR>")
		end,
	},
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
}
