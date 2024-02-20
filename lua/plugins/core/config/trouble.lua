require("trouble").setup()

local keymap = vim.keymap
keymap.set("n", "<leader>tr", "<cmd>TroubleToggle<cr>")
keymap.set("n", "[d", function()
	require("trouble").previous({ skip_groups = true, jump = true })
end)
keymap.set("n", "]d", function()
	require("trouble").next({ skip_groups = true, jump = true })
end)
