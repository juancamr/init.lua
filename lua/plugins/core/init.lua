local lsp = require("plugins.core.lsp")
local theme = require("plugins.core.theme")
local fugitive = require("plugins.core.fugitive")
local mason = require("plugins.core.mason")
local telescope = require("plugins.core.telescope")
local treesitter = require("plugins.core.treesitter")
local undotree = require("plugins.core.undotree")

return { lsp, theme, fugitive, mason, telescope, treesitter, undotree }
