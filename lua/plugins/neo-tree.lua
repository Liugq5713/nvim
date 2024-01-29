return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
    window = {
      position = "right",
      mappings = {
        o = "open_with_window_picker",
        S = "split_with_window_picker",
        s = "vsplit_with_window_picker",
        -- y = {
        --   "copy",
        --   config = {
        --     show_path = "none", -- "none", "relative", "absolute"
        --   },
        -- },
        -- Y = {
        --   "copy",
        --   config = {
        --     show_path = "none", -- "none", "relative", "absolute"
        --   },
        -- },
        -- gy = {
        --   "copy",
        --   config = {
        --     show_path = "absolute", -- "none", "relative", "absolute"
        --   },
        -- },
      },
    },
  },
}
