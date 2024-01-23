return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    },
    config = function()
        vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, {desc = "Toggle trouble"})
        vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, {desc = "Toggle workspace diagnostics"})
        vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end, {desc = "Toggle document diagnostics"})
        vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
        vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
        vim.keymap.set("n", "<leader>xR", function() require("trouble").toggle("lsp_references") end)
    end
}
