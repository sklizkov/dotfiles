return {
  { -- Current word highlight
    "RRethy/vim-illuminate",
    config = function()
      require('illuminate').configure({})
    end,
  },
}
