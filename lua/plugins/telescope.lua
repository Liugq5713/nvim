return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-n>"] = require("telescope.actions").move_selection_next,
          ["<C-p>"] = require("telescope.actions").move_selection_previous,
        },
      },
    },
  },
}
