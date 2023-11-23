vim.opt.nu = true -- show line numbers
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"

vim.opt.updatetime = 100
-- vim.opt.colorcolumn = "80"

if vim.o.termguicolors then
    vim.cmd [[let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"]]
    vim.cmd [[let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"]]
    vim.o.t_Co = "256"
    vim.o.background = "dark"
end
