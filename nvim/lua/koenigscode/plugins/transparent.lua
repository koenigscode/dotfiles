return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
        local transparent = require("transparent")
        -- takes care of NvimTreeVertSplit (vert. line between buffer and NvimTree)
        transparent.clear_prefix("NvimTree")

        transparent.setup({
            extra_groups = {
                "NormalFloat",
                "NvimTreeNormal",
            },
        })
    end,
}

