require('plugins')

-- Vim Options
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.termguicolors = true


-- Binds
vim.keymap.set('n', '<LEFT>', function()
    vim.api.nvim_command('BufferLineCyclePrev')
end)

vim.keymap.set('n', '<RIGHT>', function()
    vim.api.nvim_command('BufferLineCycleNext')
end)

vim.keymap.set('n', '<leader>q', function()
    vim.api.nvim_command('bd')
end)

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
require("bufferline").setup()

-- LSPs
require("lspconfig").sumneko_lua.setup{}

require("colorizer").setup()

