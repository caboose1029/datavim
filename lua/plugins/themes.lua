-- [[ Themes ]]

return {
  -- [[ Everforest ]]
  -- Default
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

  -- [[ Tokyonight ]]
  {
    'folke/tokyonight.nvim',
    enabled = true ,
    lazy = false,
    priority = 1000
  },

  -- [[ Nightfox ]]
  {
    'EdenEast/nightfox.nvim',
    enabled = true,
    lazy = false,
    priority = 1000
  },

  -- [[ Rose-pine ]]
  	{
    'rose-pine/neovim',
    enabled = true,
    lazy = false,
    priority = 1000
  },

  -- [[ Catppuccin ]]
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    enabled = true,
    lazy = false,
    priority = 1000,
  }
}
