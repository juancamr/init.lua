return {
    'akinsho/bufferline.nvim',
    lazy = false,
    version = "*",
    config = function()
        local bufferline = require("bufferline")
        local commands = require("bufferline.commands")
        local keymap = vim.keymap

        bufferline.setup({
            options = {
                show_buffer_icons = false,
                show_buffer_close_icons = false,
                show_tab_indicators = false,
                modified_icon = "",
                separator_style = {},
                persist_buffer_sort = false,
                indicator = { style = "none" },
                sort_by = "insert_at_end"
            },
            highlights = { buffer_selected = { italic = false } }
        })

        -- move tabs
        keymap.set("n", "<A-h>", "<cmd>BufferLineMovePrev<CR>")
        keymap.set("n", "<A-l>", "<cmd>BufferLineMoveNext<CR>")

        keymap.set("n", "<A-p>", "<cmd>BufferLineCyclePrev<CR>")
        keymap.set("n", "<A-n>", "<cmd>BufferLineCycleNext<CR>")

        -- close tabs
        keymap.set("n", "<A-w>", function()
            commands.unpin_and_close()
            commands.go_to(10)
        end)
        keymap.set("n", "<A-S-l>", "<cmd>BufferLineCloseRight<CR>")
        keymap.set("n", "<A-S-t>", "<cmd>BufferLineCloseOthers<CR>")

        -- navigation
        keymap.set("n", "<C-h>", "<cmd>BufferLineGoToBuffer 1<CR>")
        keymap.set("n", "<C-t>", "<cmd>BufferLineGoToBuffer 2<CR>")
        keymap.set("n", "<C-n>", "<cmd>BufferLineGoToBuffer 3<CR>")
        keymap.set("n", "<C-m>", "<cmd>BufferLineGoToBuffer 4<CR>")
    end
}
