return {
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
