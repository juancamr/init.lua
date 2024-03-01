return {
    "rose-pine/neovim",
    lazy = false,
    dependencies = {
        "projekt0n/github-nvim-theme",
        "ellisonleao/gruvbox.nvim",
    },
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("github-theme").setup({ options = { transparent = true } })
        require("rose-pine").setup({ disable_background = true, styles = { italic = false } })
        require("gruvbox").setup({ transparent_mode = true })

        vim.cmd.colorscheme("rose-pine")
    end,
}
