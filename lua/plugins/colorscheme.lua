return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- Choose the desired style (night, storm, day, moon)
      transparent = true, -- Enable transparency
      terminal_colors = true, -- Enable terminal colors
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent", -- Enable transparency for sidebar-like windows
        floats = "transparent", -- Enable transparency for floating windows
      },
      sidebars = { "qf", "help", "terminal", "packer" }, -- Set a darker background on sidebar-like windows
      lualine_bold = true, -- Make the lualine statusline bold
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  -- Configure LazyVim to load tokyonight.nvim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
