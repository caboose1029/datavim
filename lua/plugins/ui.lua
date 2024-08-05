return {

-- [[ Tabby ]]
-- nicer-looking tabs with close icons
-- {
--     'nanozuki/tabby.nvim',
--     enabled = true,
--     config = function()
--       require('tabby.tabline').use_preset 'tab_only'
--     end,
--   },

-- [[ Scrollview ]]
-- provides a scrollbar
{
    'dstein64/nvim-scrollview',
    enabled = true,
    opts = {
      current_only = true,
    },
  },

-- [[ Bufferline ]]
-- Better looking bufferline and tabs
{
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup{
        options = {
          separator_style = 'slant',
          mode = 'tabs',
        },
      }
    end,
  },

-- [[ Lualine ]]
-- Better looking statusline
{
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'everforest',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  }
    end,
    },

}

