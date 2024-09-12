return {
  {
    "hrsh7th/nvim-cmp",
    event = { "CmdlineEnter", "InsertEnter" },
    dependencies = {
      "hrsh7th/cmp-cmdline",
      config = function()
        local cmp = require("cmp")
        ---@diagnostic disable-next-line: missing-fields
        -- `:` cmdline setup.
        cmp.setup.cmdline(":", {
          mapping = cmp.mapping.preset.cmdline(),
          completion = { completeopt = "noselect" },
          sources = cmp.config.sources(
            { { name = "path" } },
            { { name = "cmdline", option = { ignore_cmds = { "Man", "!" } } } }
          ),
        })
        -- `/` cmdline setup.
        cmp.setup.cmdline("/", {
          mapping = cmp.mapping.preset.cmdline(),
          completion = { completeopt = "noselect" },
          sources = {
            { name = "buffer" },
          },
        })
      end,
    },
  },
  {
    "folke/persistence.nvim",
    -- stylua: ignore
    keys = {
      { "<leader>qS", function() require("persistence").select() end,desc = "Select Session" },
    },
  },

  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit",
    },
  },
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewFileHistory",
      "DiffviewRefresh",
    },
    keys = {
      { "<leader>gf", "<Cmd>DiffviewFileHistory %<CR>", desc = "Git File History" },
    },
    opts = {
      hooks = {
        diff_buf_read = function()
          vim.wo.wrap = false
          vim.wo.list = false
          vim.wo.colorcolumn = ""
        end,
      },
      enhanced_diff_hl = true,
      keymaps = {
        view = { q = "<Cmd>DiffviewClose<CR>" },
        file_panel = { q = "<Cmd>DiffviewClose<CR>" },
        file_history_panel = { q = "<Cmd>DiffviewClose<CR>" },
      },
    },
  },
}
