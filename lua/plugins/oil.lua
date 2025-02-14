return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
	config = function()
		vim.keymap.set("n", "o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
