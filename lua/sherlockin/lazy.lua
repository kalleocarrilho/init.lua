
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
plugins  = {{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
                              branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
	"catppuccin/nvim", name="catppuccin", priority = 1000
    }	
    }
require("lazy").setup(plugins, opts)

