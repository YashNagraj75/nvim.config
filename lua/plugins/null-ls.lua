return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim", -- Ensure you have this dependency for extended built-ins
	},
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local go_imports_group = vim.api.nvim_create_augroup("GoImports", {})

		null_ls.setup({
			sources = {
				formatting.stylua,
				diagnostics.eslint_d, -- Ensure eslint_d is correctly set up
				formatting.isort,
				formatting.prettier,
				formatting.biome,
				formatting.goimports, -- Ensures goimports runs on save
				formatting.gofmt,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})

		-- Run goimports via CLI on save for additional reliability
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.go",
			group = go_imports_group,
			callback = function()
				local file = vim.fn.expand("%:p")
				vim.fn.system("goimports -w " .. file)
				vim.cmd("edit")
			end,
		})
	end,
}
