return {
  { -- One Dark
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'onedark'
    end,
    config = function()
      require('onedark').setup({
        transparent = false,
        lualine = {
          transparent = false
        }
      })
    end
  },
}
