local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	-- Autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",

	-- LSP Support
	"neovim/nvim-lspconfig",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"windwp/nvim-autopairs",

	-- Other
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	-- Colorschemes
	"bluz71/vim-moonfly-colors",
	-- "norcalli/nvim-colorizer.lua",
	-- "uga-rosa/ccc.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)

vim.cmd [[colorscheme moonfly]]
require("nvim-autopairs").setup()
-- require("colorizer").setup()
