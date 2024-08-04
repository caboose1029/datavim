-- [[ Themes ]]
return {
	{
	'neanias/everforest-nvim',
	enabled = true,
	lazy = false,
	priority = 1000,
	config = function()
		require('everforest').setup()
		vim.cmd.colorscheme 'everforest'
	end,
	},
}
