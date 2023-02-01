local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath
        }
    )
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    {
        {"neoclide/coc.nvim", branch = "release"},
        "folke/which-key.nvim",
        {"folke/neoconf.nvim", cmd = "Neoconf"},
        "folke/neodev.nvim",
        "windwp/nvim-autopairs",
        "numToStr/Comment.nvim",
        "kyazdani42/nvim-tree.lua",
        "ahmedkhalf/project.nvim",
        "lewis6991/impatient.nvim",
        {"gcmt/wildfire.vim"},
        {"junegunn/goyo.vim"},
        {
            "phaazon/hop.nvim",
            branch = "v2", -- optional but strongly recommended
            config = function()
                require "hop".setup {keys = "etovxqpdygfblzhckisuran"}
            end
        },
        {
            "gaoDean/autolist.nvim",
            ft = {
                "markdown",
                "text",
                "tex",
                "plaintex"
            },
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
                vim.api.nvim_create_autocmd(
                    "TextChanged",
                    {
                        pattern = "*",
                        callback = function()
                            vim.cmd.normal({autolist.force_recalculate(nil, nil), bang = false})
                        end
                    }
                )
            end
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
        {
            "junegunn/fzf",
        },
        {"junegunn/fzf.vim"},
        {
            "nvim-telescope/telescope.nvim",
            dependencies = "nvim-lua/plenary.nvim",
            lazy = true,
            config = function()
              require('plugin-config/telescope')
            end
        },
        -- enhance --
        {"tyru/open-browser.vim"},
        {"machakann/vim-sandwich"},
        {"tpope/vim-repeat"},
        {"pocco81/auto-save.nvim"},
        -- {"akinsho/toggleterm.nvim", tag = "v1.*"},
        {
            "iamcco/markdown-preview.nvim",
            run = function()
                vim.fn["mkdp#util#install"]()
            end
        },
        {"liuchengxu/vista.vim"},
        {"tpope/vim-fugitive"},
        -- treesitter
        {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        },
        "kyazdani42/nvim-web-devicons",
        {
            "lukas-reineke/indent-blankline.nvim",
        },
        "nvim-lualine/lualine.nvim",
        {"ellisonleao/gruvbox.nvim", dependencies = "rktjmp/lush.nvim"},
        {"mhinz/vim-startify"},
        {"echasnovski/mini.map", branch = "stable",enabled = false},
        "simrat39/symbols-outline.nvim"
    }
)

