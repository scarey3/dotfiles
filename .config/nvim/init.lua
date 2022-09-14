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

-- Close file
vim.keymap.set('n', '<leader>q', function()
    target_buffer = vim.api.nvim_get_current_buf()
    vim.api.nvim_command('bprev')
    vim.api.nvim_command('bd ' .. target_buffer)
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
require("bufferline").setup {
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        }
    }
}

-- LSPs
require("lspconfig").sumneko_lua.setup{}

require("colorizer").setup()

