return {

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
    end
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end
  },

  {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end
  },
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate"
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end
  },

  {
    "neovim/nvim-lspconfig",
     lazy = true,
	init = function()
		local lspConfigPath = require("lazy.core.config").options.root .. "/nvim-lspconfig"
		vim.opt.runtimepath:prepend(lspConfigPath)
	end,
  }
}
