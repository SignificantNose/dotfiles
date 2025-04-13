return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				cs = { "csharpier" },
				javascript = { "deno_fmt" },
				typescript = { "deno_fmt" },
				typescriptreact = { "deno_fmt" },
				json = { "fixjson" },
				-- html = { "superhtml" },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
