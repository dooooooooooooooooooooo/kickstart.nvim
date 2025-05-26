return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'xai',
      },
      inline = {
        adapter = 'xai',
      },
      cmd = {
        adapter = 'xai',
      },
    },
    adapters = {
      anthropic = function()
        return require('codecompanion.adapters').extend('xai', {
          env = {
            api_key = os.getenv 'XAI_API_KEY',
          },
          schema = {
            model = {
              default = 'grok-3-mini',
            },
          },
        })
      end,
    },
    opts = {
      log_level = 'DEBUG',
    },
  },
  keys = {
    { '<leader>ci', '<cmd>CodeCompanionActions<cr>', desc = 'Open CodeCompanion Actions Menu' },
  },
}
