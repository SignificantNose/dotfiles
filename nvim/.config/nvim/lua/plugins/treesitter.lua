local M = {
  "nvim-treesitter/nvim-treesitter",
  build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    local ts_config = require("nvim-treesitter.configs")
    ts_config.setup({
      ensure_installed = {"lua", "python", "c_sharp"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

return { M }
