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
          ".DS_Store",
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
    source_selector = {
      winbar = false,
      statusline = false,
    },
    window = {
      position = "right",
      mappings = {
        o = "open_with_window_picker",
        S = "split_with_window_picker",
        s = "vsplit_with_window_picker",
        H = "",
      },
    },
  },
}
