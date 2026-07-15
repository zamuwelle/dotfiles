return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
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
		})
	end,
}
