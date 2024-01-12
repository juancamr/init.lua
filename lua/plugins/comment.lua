return {
	"numToStr/Comment.nvim",
	event = "BufReadPre",
	lazy = true,
	config = function()
		require("Comment").setup()
	end,
}
