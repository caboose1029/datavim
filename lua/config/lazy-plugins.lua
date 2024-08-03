-- For debug
print("Lazy Plugins")

-- [[ Setup lazy.nvim ]]
-- Imports plugins located in nvim/lua/plugins
-- Automatically checks for plugin updates
require('lazy').setup({
	spec = {
		{ import = 'plugins' },
	},
	checker = { enabled = true },
}) 
