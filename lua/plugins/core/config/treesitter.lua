local configs = require("nvim-treesitter.configs")
local languages = require("juancamr.utils").treesitter_languages

configs.setup({
	ensure_installed = languages,
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
