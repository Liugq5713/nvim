return {
  "MeanderingProgrammer/markdown.nvim",
  opts = {
    file_types = { "markdown", "norg", "rmd", "org" },
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
    },
    heading = {
      enabled = false
    },
  },
  ft = { "markdown", "norg", "rmd", "org" },
  config = function(_, opts)
    require("render-markdown").setup(opts)
  end,
}
