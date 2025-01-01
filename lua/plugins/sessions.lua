return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			session_lens = {
				load_on_setup = true, -- Initialize on startup (requires Telescope)
				theme_conf = {},
				previewer = false, -- File preview for session picker

				session_control = {
					control_dir = vim.fn.stdpath("data") .. "/auto_session/",
					control_filename = "session_control.json",
				},
			},
			vim.keymap.set("n", "<leader>ls", "<cmd>SessionSearch<CR>", {}),
		})
	end,
}
