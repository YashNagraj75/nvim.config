vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.keymap.set("n", "<leader>sh", ":split<CR>:enew<CR>", { noremap = true, silent = true })
vim.cmd("set clipboard=unnamedplus")
