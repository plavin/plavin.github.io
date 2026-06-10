require("config.lazy")

-- indentation
vim.opt.tabstop     = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab   = true
vim.opt.autoindent  = true
vim.opt.smartindent = true
vim.opt.cindent     = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase  = true

-- mappings
local map = vim.keymap.set
-- insert-mode: kj → <Esc>
map("i", "kj", "<Esc>", { noremap = true, silent = true })
-- cmdline-mode: kj → <C-c>
map("c", "kj", "<C-c>", { noremap = true, silent = true })
-- normal-mode
map("n", "iu", "zfa}", { noremap = true, silent = true })
map("n", "ui", "zd",   { noremap = true, silent = true })
