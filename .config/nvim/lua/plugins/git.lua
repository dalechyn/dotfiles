local git_prefix = "<leader>g"

return {
  { "tpope/vim-fugitive" }, -- git wrapper commands
  { "tpope/vim-rhubarb" }, -- GitHub extension for fugitive.vim
  {
    "FabijanZulj/blame.nvim", --  a fugitive.vim style git blame visualizer for Neovim
    keys = {
      { git_prefix .. "b", "<cmd>ToggleBlame<cr>", desc = "Toggle git blame" },
    },
  },
  {
    "almo7aya/openingh.nvim",
    keys = {
      { git_prefix .. "o", "<cmd>OpenInGHFile<cr>", desc = "Open file in github" },
    },
  },
  {
    "lewis6991/gitsigns.nvim", -- leftside git status
    event = "VeryLazy",
    config = function()
      require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map("n", ")", function()
            if vim.wo.diff then
              return ")"
            end
            vim.schedule(function()
              gs.next_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, desc = ") or Go to next git hunk" })

          map("n", "(", function()
            if vim.wo.diff then
              return "("
            end
            vim.schedule(function()
              gs.prev_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, desc = ") or Go to previous git hunk" })

          map(
            { "n", "v" },
            git_prefix .. "u",
            ":Gitsigns reset_hunk<CR>",
            { noremap = true, silent = true, desc = "Undo git hunk" }
          )

          -- UI Current Line Blame
          map(
            "n",
            "<leader>ug",
            gs.toggle_current_line_blame,
            { noremap = true, silent = true, desc = "Toggle line blame" }
          )
        end,
      })
    end,
  },
}
