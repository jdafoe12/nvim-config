local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
	{'folke/tokyonight.nvim'},
	{'nvim-lualine/lualine.nvim'},
	{'nvim-lua/plenary.nvim'},       -- Dependancy
	{'nvim-lua/popup.nvim'},         -- Dependancy
	{'nvim-tree/nvim-web-devicons'}, -- Dependancy for neo-tree
	{'MunifTanjim/nui.nvim'},        -- Dependancy for neo-tree
	{'nvim-neo-tree/neo-tree.nvim'}, -- :Neotree to use
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{'dense-analysis/neural'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'saadparwaiz1/cmp_luasnip'},
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},
	{'lervag/vimtex'},
})

require('lualine').setup({
  options = {
    icons_enabled = true,
    section_separators = '',
    component_separators = ''
  }
})


