require("nvim-tree").setup()

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })

