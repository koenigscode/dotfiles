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
            ["h"] = "which_key_ignore",
            ["j"] = "which_key_ignore",
            ["k"] = "which_key_ignore",
            ["l"] = "which_key_ignore",
            ["b"] = "which_key_ignore",
            ["w"] = "which_key_ignore",
            ["e"] = "which_key_ignore",
            ["c"] = "which_key_ignore",
            ["f"] = "which_key_ignore",
            ["F"] = "which_key_ignore",
            ["G"] = "which_key_ignore",
            ["d"] = "which_key_ignore",
            ["y"] = "which_key_ignore",
            ["0"] = "which_key_ignore",
            ["$"] = "which_key_ignore",
            ["<leader>"] = {
                s = {
                    name = "[S]earch",
                },
                e = {
                    name = "[E]xplorer"
                },
                b = {
                    name = "Current [B]uffer"
                },
                g = {
                    name = "[G]it"
                },
                w = {
                    name = "Save"
                },
                x = {
                    name = "Trouble"
                },
                z = {
                    name = "Folding"
                },
            }
        })
    end
}
