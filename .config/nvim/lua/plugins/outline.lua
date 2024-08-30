return {
  { -- Outline
    "hedyhli/outline.nvim",
    config = function()
      vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>")

      require("outline").setup({
        symbol_folding = {
          autofold_depth = false,
          -- auto_unfold = {
          --   hovered = true,
          -- },
        },
        preview_window = {
          auto_preview = true,
        },
        outline_items = {
          show_symbol_details = false,
          show_symbol_lineno = true,
        },
        outline_window = {
          position = 'right',
          width = 20,
          show_cursorline = true,
          hide_cursor = true,
        },
      })
    end,
  },
}
