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

			-- local cwd = vim.fn.getcwd()
			-- local project_library_path = cwd .. "/node_modules"
			--
			-- local node_modules_path = "/home/significantnose/.npm-global/lib/node_modules/"
			-- local cmd = {
			-- 	node_modules_path .. "/@angular/language-server/bin/ngserver",
			-- 	"--ngProbeLocations",
			-- 	node_modules_path .. "/@angular/language-server/bin",
			-- 	"--tsProbeLocations",
			-- 	node_modules_path .. "/typescript/lib",
			-- 	"--stdio",
			-- }
			vim.lsp.enable("angularls")
      vim.lsp.config("angularls",{
				capabilities = capabilities,
				-- cmd = cmd,
      })


			-- lspconfig.rust_analyzer.setup({
			-- 	capabilities = capabilities,
			-- })

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
	{
		"simrat39/rust-tools.nvim",
		config = function()
			local rt = require("rust-tools")

			-- rt.setup({
			-- 	server = {
			-- 		on_attach = function(_, bufnr)
			-- 			-- Hover actions
			-- 			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- 			-- Code action groups
			-- 			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
			-- 		end,
			-- 	},
			-- })
		end,
	},
}
