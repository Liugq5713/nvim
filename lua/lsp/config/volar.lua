local opts = {
	cmd = { "volar-server", "--stdio" },
	filetypes = { "vue" },
	init_options = {
		typescript = {
			serverPath = "/usr/lib/node_modules/typescript/lib/tsserverlibrary.js",
		},
		languageFeatures = {
			references = true,
			definition = true,
			typeDefinition = true,
			callHierarchy = true,
			hover = true,
			rename = true,
			signatureHelp = true,
			codeAction = true,
			completion = {
				defaultTagNameCase = "both",
				defaultAttrNameCase = "kebabCase",
				getDocumentNameCasesRequest = true,
				getDocumentSelectionRequest = true,
			},
			documentLink = true,
			codeLens = true,
			diagnostics = true,
		},
		documentFeatures = {
			selectionRange = true,
			foldingRange = true,
			documentSymbol = true,
			documentColor = true,
			documentFormatting = {
				defaultPrintWidth = 100,
				getDocumentPrintWidthRequest = true,
			},
		},
	},
}

return {
	on_ready = function(server)
		server:setup(opts)
	end,
}
