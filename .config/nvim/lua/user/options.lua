local options = {
	backup = false,
	fileencoding = "utf-8",
  hlsearch = true,
	ignorecase = true,
	mouse = "a",
	swapfile = false,
	termguicolors = true,
	shiftwidth = 2,
	tabstop = 2,
	number = true,
	wrap = false,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
  -- expandtab = true,
  clipboard = "unnamedplus",
	-- cursorline = true,
  -- showmode = false,
	autoindent = true,
	writebackup = false,
	undofile = false,
	--relativenumber = true,
	--numberwidth = 4,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
