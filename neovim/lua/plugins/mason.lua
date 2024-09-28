return {

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"flake8",
				"lua_ls", -- LSP for Lua language
				"tsserver", -- LSP for Typescript and Javascript
				"emmet_ls", -- LSP for Emmet (Vue, HTML, CSS)
				"cssls", -- LSP for CSS
				"volar", -- LSP for Vue
			},
		},
	},
}
