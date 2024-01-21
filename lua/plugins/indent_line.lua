return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
    init = function()
        require("juancamr.utils").lazy_load "indent-blankline.nvim"
    end,
	config = function()
		require("ibl").setup({ scope = { show_start = false, enabled = false } })
	end,
}
