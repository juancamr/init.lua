return {
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	lazy = true,
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
