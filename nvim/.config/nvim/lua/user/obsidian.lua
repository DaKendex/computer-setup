local M = {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	require("obsidian").setup({
		workspaces = {
			{
				name = "obsidian",
				path = "~/repo/obsidian,",
			},
		},
		daily_notes = {
			-- Optional, if you keep daily notes in a separate directory.
			folder = "timestamps",
			-- Optional, if you want to change the date format for the ID of daily notes.
			date_format = "YYYY/MM-MMMM/YYYY-MM-DD-dddd",
			-- Optional, if you want to change the date format of the default alias of daily notes.
			-- alias_format = "%B %-d, %Y",
			-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
			template = "templates/daily.md",
		},
		ui = {
			enabled = true,
		},
	})
end

return M
