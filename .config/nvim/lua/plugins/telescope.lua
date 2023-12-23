return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>f ",
      function() require("telescope.builtin").buffers({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Buffers",
    },
  },
  -- change some options
  opts = {
    defaults = {
      hidden = true,
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
