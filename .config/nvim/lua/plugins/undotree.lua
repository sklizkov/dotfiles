return {
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      local undotree = require('undotree')

      undotree.setup({
        float_diff = true,
        layout = 'left_bottom',
        position = 'right',
        window = {
          winblend = 20,
        },
      })

      vim.keymap.set("n", "<leader>u", undotree.toggle)
    end,
  },
}
