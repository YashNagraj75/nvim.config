return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		dashboard = {
			enabled = true,
			sections = {
				{ section = "header", padding = 3, position = "relative" },
				{ section = "keys", gap = 2, padding = 3, position = "relative" },
				{ section = "startup" },
				{
					section = "terminal",
					cmd = "ascii-image-converter ~/.config/nvim/yuji-min.jpg -C -c",
					random = 10,
					pane = 2,
					indent = 3,
					height = 40,
					padding = 4,
					position = "relative",
				},
			},
		},
		lazygit = { configure = false },

		notifier = {
			border = "rounded",
			zindex = 500,
			ft = "markdown",
			wo = {
				winblend = 5,
				wrap = false,
				conceallevel = 2,
				colorcolumn = "",
			},
			bo = { filetype = "snacks_notif" },
		},
	},
}
