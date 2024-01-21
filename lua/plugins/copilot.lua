return {
	"github/copilot.vim",
	cmd = "Copilot",
	init = function()
		require("juancamr.utils").lazy_load("copilot.vim")
	end,
}
