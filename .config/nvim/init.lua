require('plugins')

-- Vim Options
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.termguicolors = true


-- Binds
vim.keymap.set('n', '<LEFT>', 'gT')
vim.keymap.set('n', '<RIGHT>', 'gt')

--------------------------------------------------------------------------------
-- Plugin Setup
--------------------------------------------------------------------------------

-- Theme
require("catppuccin").setup()
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd [[colorscheme catppuccin]]

-- nvim-tree
require("nvim-tree").setup()


-- bufferline
require("bufferline").setup {
    animation = true,
    clickable = true,
}

-- LSPs
require("lspconfig").sumneko_lua.setup{}

require("colorizer").setup()

