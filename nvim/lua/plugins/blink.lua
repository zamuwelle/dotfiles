return {
	"saghen/blink.cmp",

	dependencies = {
		"saghen/blink.lib",
		-- "rafamadriz/friendly-snippets",
	},

	build = function()
		require("blink.cmp").build():pwait()
	end,

	opts = {
		keymap = {
			preset = "super-tab",
		},

		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 300,
			},

			ghost_text = {
				enabled = true,
			},
		},

		signature = {
			enabled = true,
		},

		fuzzy = {
			implementation = "rust",
		},
	},
}
