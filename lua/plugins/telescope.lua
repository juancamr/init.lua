return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
	config = function()
		local builtin = require("telescope.builtin")
		local keymap = vim.keymap

		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules" },
				mappings = {
					i = {
						["<C-u>"] = false,
					},
				},
			},
		})

		require("nvim-web-devicons").setup({
			override_by_extension = {
				["astro"] = {
					icon = "󰬈",
					color = "#FF0000",
					name = "astro",
				},
			},
		})

		keymap.set("n", "<C-p>", builtin.find_files, {})
		keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		keymap.set("n", "<leader>vh", builtin.help_tags, {})
	end,
}
