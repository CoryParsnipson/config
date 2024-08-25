local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      local dap = require('dap')

      dap.adapters.lldb = {
          type = 'executable',
          command = 'lldb-vscode',
          name = "lldb"
      }

      -- configure the adapter for Rust Debugging
      dap.configurations.rust = {
          {
              name = 'Launch Debug',
              type = 'lldb',
              request = "launch",
              program = function()
                  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/' .. '')
              end,
              cwd = '${workspaceFolder}',
              stopOnEntry = false,
              args = {},
              initCommand = {},
              runInTerminal = false
          }
      }
    end
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow"
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  }
}
return plugins
