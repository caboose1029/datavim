-- [[ Iron ]]
return {
	{
		"Vigemus/iron.nvim",
		config = function()
			require("iron.core").setup({
				config = {
					scratch_repl = true,
					repl_definition = {
						sh = {
							command = { "pwsh" },
						},
						python = {
							command = { "python3" },
							format = require("iron.fts.common").bracketed_paste_python,
						},
					},
					repl_open_cmd = require("iron.view").right(40),
				},
			})
		end,
	},
}
