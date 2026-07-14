return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				-- Programming languages
				blade = { "blade-formatter" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				lua = { "stylua" },
				php = { "pint" },
				ps1 = { "pwshfmt" },
				python = { "black" },
				sh = { "shfmt" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },

				-- Markup languages
				html = { "prettierd" },
				markdown = { "prettierd" },

				-- Style Sheet languages
				css = { "prettierd" },
				["*"] = { "trim_newlines", "trim_whitespace" },
			},
		})

		vim.keymap.set("n", "<leader>mp", function()
			require("conform").format()
		end, { desc = "Format file" })
	end,
}
