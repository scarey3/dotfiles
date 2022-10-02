vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Catppuccin theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Startup
    use {'glepnir/dashboard-nvim'}

    -- File tree
    use { 'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }

    -- Status line
    use 'feline-nvim/feline.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
    }

    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

    -- Code completion
    use { "ms-jpq/coq_nvim", branch = "coq" }
    use { "ms-jpq/coq.artifacts", branch = "artifacts" }
    use { "ms-jpq/coq.thirdparty", branch = "3p" }

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'

    use 'norcalli/nvim-colorizer.lua'

end)
