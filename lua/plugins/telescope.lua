return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
	config = function()
		local builtin = require("telescope.builtin")
		local keymap = vim.keymap
		local utils = require("juancamr.utils")

		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules" },
				mappings = { i = { ["<C-u>"] = false } },
			},
		})

		-- set icons to telescope
		require("nvim-web-devicons").setup({
			override_by_extension = utils.extra_devicon_extensions,
		})

		keymap.set("n", "<C-p>", builtin.find_files, {})
		keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		keymap.set("n", "<leader>vh", builtin.help_tags, {})
	end,
}
