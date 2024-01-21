local M = {}

M.lsp_servers = {
	"lua_ls",
	"pyright",
	"tsserver",
	"clangd",
	"astro",
}

M.formatters = {
	stylua = "stylua",
	black = "black",
	isort = "isort",
	prettier = "prettier",
	prettierd = "prettierd",
}

M.treesitter_languages = {
	"javascript",
	"typescript",
	"tsx",
	"astro",
	"python",
	"lua",
	"cpp",
}

return M
