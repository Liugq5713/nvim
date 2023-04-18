local autosave = require("auto-save")

autosave.setup({
	enabled = true,
  execution_message = {
		message = function() -- message to print on save
			return ("◝(⑅•ᴗ•⑅)◜..°♡  autoSave: saved at" .. vim.fn.strftime("%H:%M:%S"))
		end,
		dim = 0.18, -- dim the color of `message`
		cleaning_interval = 1000, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
	},
	events = { "InsertLeave", "TextChanged" },
  write_all_buffers = false,
	on_off_commands = true,
	clean_command_line_interval = 0,
	debounce_delay = 1 * 500,
})
