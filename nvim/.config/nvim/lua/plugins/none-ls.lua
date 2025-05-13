return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        null_ls.builtins.formatting.prettier, -- js, ts, and much more

        null_ls.builtins.formatting.isort, -- python
        null_ls.builtins.formatting.black, -- python
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
