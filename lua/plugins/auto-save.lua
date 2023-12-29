return {
  "pocco81/auto-save.nvim",
  opts = {
    enabled = true,
    execution_message = {
      message = function() -- message to print on save
        return ("◝(⑅•ᴗ•⑅)◜..°♡  autoSave: saved at" .. vim.fn.strftime("%H:%M:%S"))
      end,
      dim = 0.18, -- dim the color of `message`
      cleaning_interval = 400, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
    },
    events = { "InsertLeave" },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 5 * 1000,
  },
}
