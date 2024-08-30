return {
    { -- Treesitter
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.install").prefer_git = true -- use Git instead of curl for downloading the parsers

      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "cpp",
          "python",
          "lua",
          "json",
          "markdown",
          "markdown_inline",
          "gitignore",
          "html",
          "css",
          "javascript",
          "typescript",
        },
        auto_install = true,
        ignore_install = {},
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },
}
