return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bj", "<Cmd>BufferLinePick<CR>", desc = "Pick Buffer" },
      { "<leader>bl", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
      { "<leader>bh", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
      { "<leader>br", false },
    },
  },
}
