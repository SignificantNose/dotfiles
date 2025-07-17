-- tab remake (it now makes 2 spaces instead of infinity)
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.o.scrolloff = 5

-- leader key
vim.g.mapleader = " "

-- copy to clipboard
vim.cmd('vnoremap  <leader>y  "+y')
vim.cmd('vnoremap <leader>d "+d')
vim.cmd('nnoremap  <leader>Y  "+yg_')
vim.cmd('nnoremap  <leader>y  "+y')
vim.cmd('nnoremap <leader>d "+d')
vim.cmd('nnoremap <leader>D "+D')

-- paste from clipboard
vim.cmd('nnoremap <leader>p "+p')
vim.cmd('nnoremap <leader>P "+P')
vim.cmd('vnoremap <leader>p "+p')
vim.cmd('vnoremap <leader>P "+P')
