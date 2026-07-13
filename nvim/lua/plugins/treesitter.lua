return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"bash",
			"json",
			"lua",
			"markdown",
			"vim",
			"python",
			"vimdoc"
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"bash",
				"json",
				"markdown",
				"lua",
				"vim",
				"python",
				"help"
			},
			callback = function() vim.treesitter.start() end,
		})
	end,
}
