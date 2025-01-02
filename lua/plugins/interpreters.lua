return {
  "neolooong/whichpy.nvim",
  dependencies = {
    "mfussenegger/nvim-dap-python",
    "nvim-telescope/telescope.nvim",
  },
  config = function ()
    require("whichpy").setup()
    vim.keymap.set("n","lk",":WhichPy select<CR>",{})
  end
}
