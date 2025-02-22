-- tab remake (it now makes 2 spaces instead of infinity)
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- leader key
vim.g.mapleader = " "


-- nvim PM
require("config.lazy")



-- colorscheme
vim.g.nord_italic = false
vim.cmd[[colorscheme nord]]

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- treesitter
local ts_config = require("nvim-treesitter.configs")
ts_config.setup({
  ensure_installed = {"lua", "python", "c_sharp"},
  highlight = { enable = true },
  indent = { enable = true },
})
