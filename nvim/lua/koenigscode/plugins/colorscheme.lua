return {
    { "catppuccin/nvim" },
    lazy = false,
    name = "catppuccin",
    config = function()
        vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
    end,
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-mocha",
        },
    },
}
