return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", mode = { "n", "t" }, silent = true, desc = "Jump to left pane" },
    { "<C-j>", "<cmd>TmuxNavigateDown<CR>", mode = { "n", "t" }, silent = true, desc = "Jump to lower pane" },
    { "<C-k>", "<cmd>TmuxNavigateUp<CR>", mode = { "n", "t" }, silent = true, desc = "Jump to upper pane" },
    { "<C-l>", "<cmd>TmuxNavigateRight<CR>", mode = { "n", "t" }, silent = true, desc = "Jump to right pane" },
  },
  init = function()
    vim.g.tmux_navigator_no_mappings = true
  end,
}
