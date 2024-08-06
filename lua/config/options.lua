-- [[ Setting options ]]
-- See ':help vim.opt'
-- For more options, see ':help option-list'

-- Make relative line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable break and smart indent
vim.opt.breakindent = true
vim.opt.smartindent = true

-- Enable mouse
vim.opt.mouse = "a"

-- Set background to dark
vim.o.background = "dark"

-- Decrease update time
vim.opt.updatetime = 200

-- Don't show the mode
vim.opt.showmode = false

-- Sync clipboard with OS
-- See ':help 'clipboard''
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Save undo history
vim.opt.undofile = true

-- Case insensitive searching
-- UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set scrolloff
vim.opt.scrolloff = 20

-- Live substitution preview
vim.opt.inccommand = "split"

-- Show cursor line
vim.opt.cursorline = true

-- Set whitespace character display
-- See ':help 'list'' and ':help 'listchars''
vim.opt.list = true
vim.opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

-- Decrease indentation size
local tabsize = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = tabsize
vim.opt.tabstop = tabsize

-- Show windowbar
vim.opt.winbar = "%f"

-- Don't continue comments on <CR>
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
	desc = "Disable New Line Comment",
})
