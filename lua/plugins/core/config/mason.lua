local lspservers = require("juancamr.utils").lsp_servers
local formatters = require("juancamr.utils").get_formatters_list()

require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = lspservers })
require("mason-tool-installer").setup({ ensure_installed = formatters })
