local servers = require("plugins.lsp.config.servers")

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lsp_signature").setup(opts)

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end

local vim = vim
local keymap = vim.keymap
local diagnostic = vim.diagnostic

keymap.set("n", "<leader>e", diagnostic.open_float)
keymap.set("n", "[d", diagnostic.goto_prev)
keymap.set("n", "]d", diagnostic.goto_next)
keymap.set("n", "<leader>vl", diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		keymap.set("n", "K", vim.lsp.buf.hover, opts)
		keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
		keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
		keymap.set("n", "<leader>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
		keymap.set("n", "<leader>re", vim.lsp.buf.rename, opts)
		keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		keymap.set("n", "gr", vim.lsp.buf.references, opts)
	end,
})
