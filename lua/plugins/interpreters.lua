return {
  "neolooong/whichpy.nvim",
  dependencies = {
    "mfussenegger/nvim-dap-python",
    "nvim-telescope/telescope.nvim",
  },
  config = function ()
    require("whichpy").setup()
  end
}
