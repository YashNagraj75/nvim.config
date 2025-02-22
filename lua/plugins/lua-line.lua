return {
    'nvim-lualine/lualine.nvim',
    tabline = {
      lualine_a = {'buffers'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'tabs'}
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = 'material'
        }
      })
    end
}
