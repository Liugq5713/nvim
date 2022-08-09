local autosave = require("autosave")

autosave.setup({
	enabled = true,
	events = { "InsertLeave", "TextChanged" },
	execution_message = function()
		return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
	end,
	conditions = {
		exists = true,
		filename_is_not = {},
		filetype_is_not = {},
		modifiable = true,
	},
	write_all_buffers = false,
	on_off_commands = true,
	clean_command_line_interval = 0,
	debounce_delay = 1 * 500,
})