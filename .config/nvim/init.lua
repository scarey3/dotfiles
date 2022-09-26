require('plugins')

-- Vim Options
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Binds
vim.keymap.set('n', '<LEFT>', function()
    vim.api.nvim_command('BufferLineCyclePrev')
end)

vim.keymap.set('n', '<RIGHT>', function()
    vim.api.nvim_command('BufferLineCycleNext')
end)

-- Close file
vim.keymap.set('n', '<leader>q', function()

    -- Exit if file has unsaved changes
    if (vim.bo.modified) then
        print("There are unsaved changes")
        return
    end

    local target_buffer = vim.api.nvim_get_current_buf()
    vim.api.nvim_command('bprev')
    vim.api.nvim_command('bd ' .. target_buffer)
end)

vim.keymap.set('n', "<leader><TAB>", function() vim.api.nvim_command("NvimTreeToggle") end)
vim.keymap.set('n', "<leader>t", function() vim.api.nvim_command("Telescope") end)

-- Autocmd
vim.api.nvim_create_autocmd("VimEnter", {
    command = "silent !kitty @ set-spacing padding=0"
})

vim.api.nvim_create_autocmd("VimLeave", {
    command = "silent !kitty @ set-spacing padding=10"
})

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        -- Language specific options
        if (vim.bo.filetype == "dart") then
            vim.opt.shiftwidth = 2
            vim.opt.softtabstop = 2
        end
    end,
})

--------------------------------------------------------------------------------
-- Plugin Setup
--------------------------------------------------------------------------------

-- Theme
require("catppuccin").setup({
    integrations = {
        dashboard = true,
        nvimtree = true,
        telescope = true,
    },
})
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd [[colorscheme catppuccin]]

-- dashboard
local home = os.getenv("HOME")
local dashboard = require("dashboard")
dashboard.session_directory = "~/.nvim_sessions"
dashboard.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
dashboard.preview_file_height = 11
dashboard.preview_file_width = 70
dashboard.custom_center = {
    {icon = '  ',
    desc = 'Recently latest session                  ',
    shortcut = 'SPC s l',
    action ='SessionLoad'},
    {icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'DashboardFindHistory',
    shortcut = 'SPC f h'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'},
    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},
    {icon = '  ',
    desc = 'Open Personal dotfiles                  ',
    action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
    shortcut = 'SPC f d'},
}

-- nvim-tree
require("nvim-tree").setup()

-- status line
local ctp_feline = require('catppuccin.groups.integrations.feline')

ctp_feline.setup{}

require("feline").setup({
	components = ctp_feline.get(),
})

-- bufferline
require("bufferline").setup {
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
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

-- Telescope
require('telescope').setup()

-- LSPs
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "gopls", "omnisharp", "sumneko_lua", "rust_analyzer" },
})

local lsp_config = require("lspconfig")

-- Lua
lsp_config.sumneko_lua.setup({
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
})

lsp_config.rust_analyzer.setup{}
lsp_config.gopls.setup{}
lsp_config.omnisharp.setup{}

vim.g.coq_settings = { auto_start = "shut-up", }

require("colorizer").setup()

