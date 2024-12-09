return {
  {
    "preservim/tagbar",
    cmd = "TagbarToggle",
    setup = function()
      -- Optional: Define keybinding
      vim.api.nvim_set_keymap("n", "<F8>", ":TagbarToggle<CR>", { noremap = true, silent = true })
    end,
  },
}
