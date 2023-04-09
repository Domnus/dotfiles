return {
  colorscheme = "modus-vivendi",
  -- set highlight group for any theme
  -- the key is the name of the colorscheme or init
  -- the init key will apply to all colorschemes
  -- highlights = {
  --   -- apply highlight group to all colorschemes (include the default_theme)
  --   init = {
  --     -- set the transparency for all of these highlight groups
  --     Normal = { bg = "NONE", ctermbg = "NONE" },
  --     NormalNC = { bg = "NONE", ctermbg = "NONE" },
  --     CursorColumn = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  --     CursorLine = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  --     CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
  --     LineNr = {},
  --     SignColumn = {},
  --     StatusLine = {},
  --     NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
  --     NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
  --   },
  -- },
  plugins = {
    {
      "Shatur/neovim-ayu",
      as = "ayu",
      config = function()
        require("ayu").setup {}
        require("notify").setup({
          background_colour = "000000"
        })
      end,
      requires = {
        "Shatur/neovim-ayu",
        "rcarriga/nvim-notify",
      }
    },
    {
      "ishan9299/modus-theme-vim",
      as = "modus",
      config = function()
        require("notify").setup({
          background_colour = "000000"
        })
      end,
      requires = {
        "ishan9299/modus-theme-vim",
        "rcarriga/nvim-notify",
      }
    },
    {
      "jay-babu/mason-nvim-dap.nvim",
      config = function(_, opts)
        local mason_nvim_dap = require "mason-nvim-dap"
        mason_nvim_dap.setup(opts)
        mason_nvim_dap.setup_handlers {
          python = function(_)
            local dap = require "dap"
            dap.adapters.python = {
              type = "executable",
              command = "/home/bentocarlos/.virtualenvs/debugpy/bin/python",
              args = {
                "-m",
                "debugpy.adapter",
              },
            }

            dap.configurations.python = {
              {
                type = "python",
                request = "launch",
                name = "Debug Python File",
                program = "${file}",
                pythonPath = function() return "/usr/bin/python" end,
              }
            }
          end,
        }
      end,
    }
  }
}
