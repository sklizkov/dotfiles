return {
  { -- Neotree
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim",
    },
    keys = {
      { "<leader>e", ":Neotree float<CR>", silent = true },
      { "<leader>b", ":Neotree buffers float<CR>", silent = true },
      { "<leader>g", ":Neotree git_status float<CR>", silent = true },
      -- { '\\', ':Neotree reveal<CR>' },
    },
    config = function()
      require('neo-tree').setup({
        close_if_last_window = true,
        popup_border_style = "single",
        enable_git_status = true,
        enable_modified_markers = true,
        enable_diagnostics = true,
        sort_case_insensitive = true,
        window = {
          position = "float",
          width = 40,
        },
        buffers = {
          group_empty_dirs = false,
          window = {
            mappings = {
              ['<leader>b'] = 'close_window',
            }
          }
        },
        git_status = {
          window = {
            mappings = {
              ['<leader>g'] = 'close_window',
            }
          }
        },
        filesystem = {
          -- follow_current_file = {
          --   enable = true,
          -- },
          use_libuv_file_watcher = true,
          group_empty_dirs = false,
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {},
            never_show = {},
          },
          window = {
            mappings = {
              ['<leader>e'] = 'close_window',
              -- ['\\'] = 'close_window',
            }
          },
        },
        source_selector = {
          winbar = true,
          sources = {
            { source = "filesystem", display_name = "   Files " },
            { source = "buffers", display_name = "   Bufs " },
            { source = "git_status", display_name = "   Git " },
          },
        },
        default_component_configs = {
          indent = {
            indent_marker = "├", -- "│",
            last_indent_marker = "└",
          },
        },
      })
    end
  },
}
