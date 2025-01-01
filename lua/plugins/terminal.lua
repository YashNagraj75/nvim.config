return {
  "voldikss/vim-floaterm",
  config = function()
    vim.keymap.set(
      "n",
      "<C-n>",
      "<cmd>:FloatermNew<CR>",
      {}
    )
  end,
}
