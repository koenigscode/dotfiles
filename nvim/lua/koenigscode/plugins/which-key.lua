return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        plugins = {
            marks = false,
            registers = false,
            presets = false,
            spelling = true
        },
        -- dont show keys for unlabelled mapping
        ignore_missing = true
    },
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>"] = {
                s = {
                    name = "Search",
                },
                e = {
                    name = "Explorer"
                },
                b = {
                    name = "Buffer"
                },
                g = {
                    name = "Git"
                },
                x = {
                    name = "Trouble"
                },
            }
        })
    end
}
