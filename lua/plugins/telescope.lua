return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		cmd = "Telescope",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
            local builtin = require("telescope.builtin")
            local keymap = vim.keymap

            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "node_modules" },
                    mappings = { i = { ["<C-u>"] = false } },
                },
            })

            keymap.set("n", "<C-p>", builtin.find_files, {})
            keymap.set("n", "<leader>ps", function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)

		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				override_by_extension = {
					["astro"] = {
						icon = "",
						color = "#8D021F",
						name = "astro",
					},
				},
			})
		end,
	},
}
