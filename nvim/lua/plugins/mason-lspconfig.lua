return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			ensure_installed = {
				-- Programming languages
				"basedpyright",
				"bashls",
				"laravel_ls",
				"lua_ls",
				"phpactor",
				"powershell_es",
				"ts_ls",

				-- Markup languages
				"html",
				"marksman",

				-- Style Sheet languages
				"cssls",
				"tailwindcss",
			},
		},
	},
}
