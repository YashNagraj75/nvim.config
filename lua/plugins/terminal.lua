return {
  "voldikss/vim-floaterm",
  config = function()
    vim.keymap.set(
      "n",
      "<C-`>",
      "<cmd>:FloatermNew<CR>",
      {}
    )
  end,
}
