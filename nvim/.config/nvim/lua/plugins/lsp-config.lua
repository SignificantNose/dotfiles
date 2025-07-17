return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"jsonls",
					"superhtml",
					"angularls",
					"pylsp",
					-- "rust_analyzer",  -- use system installation of rust
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- local lspconfig = require("lspconfig")
			vim.lsp.enable("lua_ls")
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("ts_ls")
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("jsonls")
			vim.lsp.config("jsonls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("superhtml")
			vim.lsp.config("superhtml", {
				capabilities = capabilities,
				filetypes = { "superhtml" },
			})

			vim.lsp.enable("pylsp")
			vim.lsp.config("pylsp", {
				capabilities = capabilities,
			})

			vim.lsp.enable("rust_analyzer")
			vim.lsp.config("rust_analyzer", {
				capabilities = capabilities,
				-- settings = {
				-- 	["rust-analyzer"] = {
				-- 		assist = {
				-- 			importEnforceGranularity = true,
				-- 			importPrefix = "crate",
				-- 		},
				-- 		cargo = {
				-- 			allFeatures = true,
				-- 		},
				-- 		checkOnSave = {
				-- 			command = "clippy",
				-- 		},
				-- 		inlayHints = { locationLinks = false },
				-- 		diagnostics = {
				-- 			enable = true,
				-- 			experimental = {
				-- 				enable = true,
				-- 			},
				-- 		},
				-- 	},
				-- },
			})

			vim.lsp.enable("angularls")
			vim.lsp.config("angularls", {
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.diagnostic.config({ virtual_text = true })
			vim.keymap.set("n", "<leader>td", function()
				local new_config = not vim.diagnostic.config().virtual_text
				vim.diagnostic.config({ virtual_text = new_config })
			end, { desc = "Toggle diagnostic virtual_text" })
		end,
	},
}
