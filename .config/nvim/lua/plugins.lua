local fn=vim.fn

-- Automatically install packer
local install_path=fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path))>0 then
    PACKER_BOOTSTRAP=fn.system{
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim ..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd[[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer=pcall(require,"packer")
if not status_ok then
    return
end

-- Have Packer use a popup window
packer.init{
    display={
        open_fn=function()
            return require("packer.util").float{border="rounded"}
        end,
    },
}

-- Install your plugins here
require ('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Have Packer manage itself
    use 'kyazdani42/nvim-web-devicons'

    use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in n  use 'nvim-lua/plenary.nvim' -- Usefull lua functions used by lots of plugins
    use 'nvim-treesitter/nvim-treesitter'
    use 'BurntSushi/ripgrep'
    use 'sharkdp/fd'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Arduino
    use 'stevearc/vim-arduino'

    -- colorsheme and appearance
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'norcalli/nvim-colorizer.lua'

    use 'sheerun/vim-polyglot'
    use 'jiangmiao/auto-pairs'
    use 'ap/vim-css-color'

    use 'plasticboy/vim-markdown'

    -- Snippets
    use 'L3MON4D3/LuaSnip'

    -- Completion
    use 'hrsh7th/nvim-cmp' -- Completion plugin
    use "hrsh7th/cmp-buffer" -- Buffer completions
    use "hrsh7th/cmp-path" -- Path completions
    use "hrsh7th/cmp-nvim-lua" -- Lua completions
    use "hrsh7th/cmp-nvim-lsp" -- LSP completions
    use "hrsh7th/cmp-cmdline" -- Cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- Snippet completions

    -- Comments
    use 'tpope/vim-commentary'

    -- LSP
    use 'neovim/nvim-lspconfig' -- Enable LSP
    use "williamboman/nvim-lsp-installer" -- Simple to use language server installer
    use 'williamboman/mason.nvim'

    -- Git
    use 'tpope/vim-fugitive'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

vim.cmd([[colorscheme gruvbox]])
