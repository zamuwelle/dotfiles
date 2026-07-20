return {
	"neovim/nvim-lspconfig",

	config = function()
		vim.lsp.enable({
			"lua_ls",
			"html",
		})

		vim.diagnostic.config({
			virtual_text = true,
			underline = true,
			update_in_insert = true,
			severity_sort = true,

			float = {
				border = "rounded",
				source = "if_many",
			},

			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅚 ",
					[vim.diagnostic.severity.WARN] = "󰀪 ",
					[vim.diagnostic.severity.INFO] = "󰋽 ",
					[vim.diagnostic.severity.HINT] = "󰌶 ",
				},
			},
		})

		vim.lsp.inlay_hint.enable(true)

		local keymap = vim.keymap

		-- Navigation
		keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
		keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
		keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
		keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
		keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

		-- Documentation
		keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
		keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })

		-- Actions
		keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
		keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

		-- Diagnostics
		keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
		keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
		keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
		keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics list" })
	end,
}
