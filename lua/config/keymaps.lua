vim.api.nvim_set_keymap("n", "<A-Right>", ":bnext<CR>", { noremap = true, silent = true })

-- Switch to the previous buffer
vim.api.nvim_set_keymap("n", "<A-Left>", ":bprevious<CR>", { noremap = true, silent = true })

-- Set Left Shift as the <leader> key
vim.g.mapleader = "<S-Tab>"

-- Keybindings using Left Shift as <leader>
vim.api.nvim_set_keymap("n", "<S-e>", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-f>", ":Neotree focus<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-c>", ":Neotree close<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-t>", ":ToggleTerm<CR>", { noremap = true, silent = true })
