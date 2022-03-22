-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
-- 自动安装 Packer.nvim
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  paccker_bootstrap = fn.system({"git", "clone", "--depth", "1", -- "https://github.com/wbthomason/packer.nvim",
    "https://gitcode.net/mirrors/wbthomason/packer.nvim", install_path})

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
    -------------------------- plugins -------------------------------------------
    -- nvim-tree
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons"
    })
    -- lualine
    use({
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons"}
    })
     -- treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    })

    --------------------- colorschemes --------------------

    -- tokyonight
    use("folke/tokyonight.nvim")
     -- gruvbox
    use({
      "ellisonleao/gruvbox.nvim",
      requires = {"rktjmp/lush.nvim"}
    })

    -------------------------------------------------------

    if paccker_bootstrap then
      packer.sync()
    end
  end
})


-- 每次保存 plugins.lua 自动安装插件
pcall(vim.cmd, [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])
