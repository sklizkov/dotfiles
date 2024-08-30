return {
  { -- Lualine
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local mode_map = {
        ['NORMAL'] = 'N',
        ['O-PENDING'] = 'N?',
        ['INSERT'] = 'I',
        ['VISUAL'] = 'V',
        ['V-BLOCK'] = 'VB',
        ['V-LINE'] = 'VL',
        ['V-REPLACE'] = 'VR',
        ['REPLACE'] = 'R',
        ['COMMAND'] = '!',
        ['SHELL'] = 'SH',
        ['TERMINAL'] = 'T',
        ['EX'] = 'X',
        ['S-BLOCK'] = 'SB',
        ['S-LINE'] = 'SL',
        ['SELECT'] = 'S',
        ['CONFIRM'] = 'Y?',
        ['MORE'] = 'M',
      }

      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'onedark',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {
              "neo-tree",
              "Outline",
              'undotree',
            },
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          -- lualine_a = {'mode'},
          lualine_a = { {'mode', fmt = function(s) return mode_map[s] or s end} },
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'filetype'},
          lualine_y = {'encoding'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = { "neo-tree", "lazy" }
      }
    end
  },
}
