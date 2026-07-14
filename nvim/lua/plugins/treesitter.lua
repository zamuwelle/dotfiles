return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			-- Programming languages
			"bash",
			"blade",
			"javascript",
			"lua",
			"php",
			"php_only",
			"powershell",
			"python",
			"tsx",
			"typescript",

			-- Markup languages
			"html",
			"markdown",
			"markdown_inline",

			-- Style Sheet languages
			"css",

			-- Vim
			"vim",
			"vimdoc",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				-- Programming languages
				"blade",
				"javascript",
				"javascriptreact",
				"lua",
				"php",
				"ps1",
				"python",
				"sh",
				"typescript",
				"typescriptreact",

				-- Markup languages
				"html",
				"markdown",

				-- Style Sheet languages
				"css",

				-- Vim
				"help",
				"vim",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
