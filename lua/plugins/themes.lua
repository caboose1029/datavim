-- [[ Themes ]]
return {
  { 'folke/tokyonight.nvim', enabled = true , lazy = false, priority = 1000 },
  { 'EdenEast/nightfox.nvim', enabled = true, lazy = false, priority = 1000 },
  { 'rose-pine/neovim', enabled = true, lazy = false, priority = 1000 },
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
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    enabled = true,
    lazy = false,
    priority = 1000,
  }
}
