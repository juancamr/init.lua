return {
	"rose-pine/neovim",
	dependencies = {
		"ellisonleao/gruvbox.nvim",
	},
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		local rose_pine_opts = {
			disable_background = true,
			styles = { italic = false },
		}
		require("rose-pine").setup(rose_pine_opts)
		require("gruvbox").setup({ transparent_mode = true })
		vim.cmd.colorscheme("rose-pine")
	end,
}
