local null_ls = require("null-ls")

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		formatting.stylua,
		formatting.stylelint,
		formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--vue-indent-script-and-style", "--jsx-bracket-same-line" },
		}),
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.codespell,
		null_ls.builtins.completion.spell,
		null_ls.builtins.code_actions.eslint,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
		end
	end,
})
