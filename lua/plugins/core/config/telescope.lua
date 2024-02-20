local builtin = require("telescope.builtin")
local keymap = vim.keymap

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "build" },
		mappings = { i = { ["<C-u>"] = false } },
	},
})

keymap.set("n", "<C-p>", "<cmd>Telescope find_files disable_devicons=true<CR>", {})
keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
