return{
	{-- Highlight, edit, and navigate code 
	'nvim-treesitter/nvim-treesitter',
	build= ':TSUpdate',
	opts= {

		ensure_installed= {
			'bash',
			'python',
			'lua',
			'luadoc',
			'markdown',
			'markdown_inline',
			'yaml',
			'vim',
			'vimdoc',
			'html',
			'css',
	},
	auto_install= true,
	highlight= {
		enable= true,
		--additional_vim_regex_highlighting = { 'ruby' },
	},
	indent= { enable = true },
	},

	--[[ Configure Treesitter ]]
	--See ':help nvim-treesitter'
	config= function(_, opts)
		require('nvim-treesitter.configs').setup(opts)
	end,
	},
}
