vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Source current buffer" })
vim.keymap.set('n', '<leader>wq', '<cmd>wqa<CR>', { noremap = true, silent = true, desc = 'Save all and quit' })

vim.keymap.set("n", "<leader>ba", "gg0vG$", { desc = "[B]uffer select [A]ll" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[Y]ank selection to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["+dd]], { desc = "Cut selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank line to system clipboard" })
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to black hole register" })


vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, { desc = "[B]uffer [F]ormat" })
vim.keymap.set("n", "<leader>bnh", ":nohl<CR>", { desc = "[B]uffer [N]o [Highlight] - Clear search highlights" })

vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>zz", { desc = "Next Quickfix" })
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>zz", { desc = "Previous Quickfix" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next Location" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous Location" })

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
-- { desc = "Replace word under cursor" })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Switch to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Switch to below window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Switch to above window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Switch to right window' })
