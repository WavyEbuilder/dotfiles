return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Neovim dev icons
  requires = {
    'nvim-tree/nvim-web-devicons',
  },

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  use "kyazdani42/nvim-web-devicons"

  -- Git signs
  use {
    'lewis6991/gitsigns.nvim',
  }

  -- Nvim telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Undo tree
  use('mbbill/undotree')

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Indent blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- Toggle Term
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  -- Alpha nvim
  use {
    'goolord/alpha-nvim',
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }

  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/cmp-nvim-lua'}
  use {'hrsh7th/cmp-nvim-lsp-signature-help'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'L3MON4D3/LuaSnip'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {'rafamadriz/friendly-snippets'}
  use {'jayden-chan/base46.nvim'}
  use {'lervag/vimtex'}
  use {'williamboman/mason.nvim'}
  use {'mhartington/formatter.nvim'}
  use {'decaycs/decay.nvim', as = 'decay'}
  use {
    "nvimdev/guard.nvim",
    requires = {
      "nvimdev/guard-collection",
    },
  }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use { "folke/neodev.nvim"}
  use { 'simrat39/rust-tools.nvim' }
end)
