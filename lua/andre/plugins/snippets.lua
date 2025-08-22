return {
	-- ── Snippet engine (LuaSnip) ─────────────────────────────────────
	{
		"L3MON4D3/LuaSnip", -- <‑‑ name of the LuaSnip integration (official)
		lazy = true,

		config = function()
			local luasnip = require("luasnip")
			local s = luasnip.snippet
			local i = luasnip.insert_node
			local fmt = require("luasnip.extras.fmt").fmt

			-- Optional engine configuration
			luasnip.config.setup({
				history = true,
				delete_check_events = { "TextChanged", "InsertLeave" },
			})

			-----------------------------------------------------------------
			-- Add Go snippets (only for filetype “go”)
			luasnip.add_snippets("go", {
				-- ── iferr snippet ---------------------------------------
				s(
					"iferr", -- trigger
					fmt(
						[[
if err != nil {{
  {1}
}}
]],
						{ i(1) }
					)
				),
			})
		end,
	},
}
