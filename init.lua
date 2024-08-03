-- For debug
print("Init")

-- [[ Global ]]
-- nvim/lua/config/global.lua
require 'config.global'

-- [[ Options ]]
-- nvim/lua/config/options.lua
require 'config.options'

-- [[ Keymaps ]]
-- nvim/lua/config/keymaps.lua
require 'config.keymaps'

-- [[ Install 'lazy.nvim' plugin manager ]]
require 'config.lazy-bootstrap'

-- [[ configure and install plugins ]]
require 'config.lazy-plugins'
