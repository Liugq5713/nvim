-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
-- 自动安装 Packer.nvim
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
	vim.notify("正在安装Pakcer.nvim，请稍后...")
	paccker_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1", -- "https://github.com/wbthomason/packer.nvim",
		"https://gitcode.net/mirrors/wbthomason/packer.nvim",
		install_path,
	})

	-- https://github.com/wbthomason/packer.nvim/issues/750
	local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
	if not string.find(vim.o.runtimepath, rtp_addition) then
		vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
	end
	vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("没有安装 packer.nvim")
	return
end

packer.startup({
	function(use)
		-- Packer 可以升级自己
		use("wbthomason/packer.nvim")
		use({"neoclide/coc.nvim",branch = "release"})
		use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
		use("numToStr/Comment.nvim") -- Easily comment stuff
		use("kyazdani42/nvim-web-devicons")
		use("kyazdani42/nvim-tree.lua")
		use("nvim-lualine/lualine.nvim")
		use("ahmedkhalf/project.nvim")
		use("lewis6991/impatient.nvim")
		use({ "gcmt/wildfire.vim" })
		use("lukas-reineke/indent-blankline.nvim")
		use("goolord/alpha-nvim")
    use({ "machakann/vim-sandwich" })
		use({ "tpope/vim-repeat" })
		use({ "Pocco81/AutoSave.nvim" })
    use({ "junegunn/goyo.vim" })

		use({
			"junegunn/fzf",
			run = "./install --bin",
		})
		use({ "junegunn/fzf.vim" })

		use({ "tyru/open-browser.vim" })

		use({ "tpope/vim-fugitive" })
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
		})

		-- treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})


		--------------------- colorschemes --------------------
		use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })

		-------------------------------------------------------

		--------------------- LSP --------------------
    --[[
		use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- snippet 引擎
		use("hrsh7th/vim-vsnip")
		-- 补全源
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")
		-- ui
		use("onsails/lspkind-nvim")
		use("tami5/lspsaga.nvim")

		use("jose-elias-alvarez/nvim-lsp-ts-utils")
		use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
    --]]

    use('simrat39/symbols-outline.nvim')

		if paccker_bootstrap then
			packer.sync()
		end
	end,
})
