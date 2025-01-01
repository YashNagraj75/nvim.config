return {
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>ga", ":Git add -A<CR>", {})
      vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", {})
      vim.keymap.set("n", "<leader>gp", ":Git push<CR>", {})
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
}
