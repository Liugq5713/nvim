local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "neoclide/coc.nvim", branch = "release" },
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    "folke/neodev.nvim",
    "windwp/nvim-autopairs",
    {
        "numToStr/Comment.nvim",
        config = function()
            require("lvim.core.comment")
        end,
    },
    {
        "kyazdani42/nvim-tree.lua",
        dependencies = "kyazdani42/nvim-web-devicons",
        config = function()
            require("lvim.core.nvim-tree")
        end,
    },
    "ahmedkhalf/project.nvim",
    {
        "lewis6991/impatient.nvim",
        config = function()
            require("lvim.core.impatient")
        end,
    },
    {
        "gcmt/wildfire.vim",
        config = function()
            require("lvim.core.wildfire")
        end,
    },
    { "junegunn/goyo.vim" },
    {
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        config = function()
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        end,
        enabled = false,
    },
    {
        "ggandor/leap.nvim",
        config = function()
            require("leap").add_default_mappings()
        end,
        enabled = false,
    },
    {
        "gaoDean/autolist.nvim",
        enabled = false,
        ft = { "markdown", "text", "tex", "plaintex" },
        config = function()
            local autolist = require("autolist")
            autolist.setup()
            autolist.create_mapping_hook("i", "<CR>", autolist.new)
            autolist.create_mapping_hook("i", "<Tab>", autolist.indent)
            autolist.create_mapping_hook("i", "<S-Tab>", autolist.indent, "<C-D>")
            autolist.create_mapping_hook("n", "o", autolist.new)
            autolist.create_mapping_hook("n", "O", autolist.new_before)
            autolist.create_mapping_hook("n", ">>", autolist.indent)
            autolist.create_mapping_hook("n", "<<", autolist.indent)
            autolist.create_mapping_hook("n", "<C-r>", autolist.force_recalculate)
            autolist.create_mapping_hook("n", "<leader>x", autolist.invert_entry, "")
        end,
    },
    -- {
    --     "SmiteshP/nvim-navic",
    --     requires = "neovim/nvim-lspconfig",
    --     config = function()
    --         require("lvim.core.breadcrumbs").setup()
    --     end
    -- },
    -- {
    --     "akinsho/bufferline.nvim",
    --     config = function()
    --         require("lvim.core.bufferline").setup()
    --     end,
    --     branch = "main"
    -- },
    { "junegunn/fzf" },
    { "junegunn/fzf.vim" },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        lazy = true,
        config = function()
            require("lvim.core.telescope")
        end,
    },
    -- enhance --
    { "ybian/smartim" },
    { "honza/vim-snippets" },
    { "tyru/open-browser.vim" },
    { "machakann/vim-sandwich" },
    { "tpope/vim-repeat" },
    {
        "pocco81/auto-save.nvim",
        config = function()
            require("lvim.core.autosave")
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        enabled = false,
        config = function()
            require("toggleterm").setup()
        end,
    },
    { "iamcco/markdown-preview.nvim" },
    { "liuchengxu/vista.vim" },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("lvim.core.nvim-treesitter")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        config = function()
            require("lvim.core.nvim-treesitter-textobjects")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lvim.core.lualine")
        end,
    },
    -- {
    --   "rebelot/kanagawa.nvim",
    --   config = function()
    --     require("kanagawa").setup({
    --     theme= 'lotus'
    --   })
    --     -- vim.cmd([[colorscheme kanagawa]])
    --     vim.cmd("colorscheme kanagawa-lotus")
    --     vim.o.background = "dark" -- or "light" for light mode
    --   end
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     config = function()
    --       require("tokyonight").setup({
    --          style = "storm"
    --       })
    --       -- vim.cmd([[colorscheme kanagawa]])
    --       vim.cmd("colorscheme tokyonight")
    --       -- vim.o.background = "dark" -- or "light" for light mode
    --     end
    --   },
    {
        "ellisonleao/gruvbox.nvim",
        dependencies = "rktjmp/lush.nvim",
        config = function()
            require("gruvbox").setup()
            vim.cmd([[colorscheme gruvbox]])
            vim.o.background = "dark" -- or "light" for light mode
        end,
    },
    { "lukas-reineke/indent-blankline.nvim" },
    { "mhinz/vim-startify" },
    { "echasnovski/mini.map", branch = "stable", enabled = false },
    {
        "simrat39/symbols-outline.nvim",
        config = function()
            require("lvim.core.outline")
        end,
    },
    { "tpope/vim-fugitive" },
    { "sindrets/diffview.nvim", event = "BufRead" },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },
    -- Lua
    {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    },
})
