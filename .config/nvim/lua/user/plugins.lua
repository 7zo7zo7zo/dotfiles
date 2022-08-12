local packer = require 'packer'

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "windwp/nvim-autopairs"
  use "norcalli/nvim-colorizer.lua"
end)
