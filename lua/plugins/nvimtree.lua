return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		local vim = vim
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

			view = { width = 45 },
			actions = { open_file = { quit_on_open = true } },
			git = { enable = false },
			renderer = {
				-- root_folder_label = false,
				highlight_git = false,
				highlight_opened_files = "none",

				indent_markers = { enable = false },

				icons = {
					show = { git = false },

					glyphs = {
						default = "󰈚",
						symlink = "",
						folder = {
							default = "",
							empty = "",
							empty_open = "",
							open = "",
							symlink = "",
							symlink_open = "",
							arrow_open = "",
							arrow_closed = "",
						},
					},
				},
			},
		})

		vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeFindFileToggle<CR>")
	end,
}
