-- Define the path for LazyVim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if not already installed
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Prepend lazypath to runtimepath
vim.opt.rtp:prepend(lazypath)

-- Setup LazyVim with plugins
require("lazy").setup({
  spec = {
    -- Add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- Import/override with your plugins
    { import = "plugins" },
    -- Add nvim-highlight-colors plugin with virtual text rendering
    {
      "brenoprata10/nvim-highlight-colors",
      config = function()
        require("nvim-highlight-colors").setup({
          render = "virtual", -- Set render mode to virtual text
          virtual_symbol = "■", -- Optionally set virtual symbol
          virtual_symbol_prefix = "", -- Optionally set virtual symbol prefix
          virtual_symbol_suffix = "", -- Optionally set virtual symbol suffix
        })
      end,
    },
    { "nat-418/cmp-color-names.nvim" },
  },
  defaults = {
    lazy = false, -- By default, lazy load only LazyVim plugins
    version = false, -- Use latest git commit of plugins
  },
  install = { colorscheme = { "tokyonight", "night" } },
  checker = { enabled = true }, -- Check for plugin updates
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
