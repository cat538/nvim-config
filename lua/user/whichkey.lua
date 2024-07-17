local M = {
  "folke/which-key.nvim",
}

function M.config()
  local which_key = require "which-key"

  -- -- this is the old config
  -- which_key.setup {
  --   -- plugins = {
  --   --   marks = true,
  --   --   registers = true,
  --   --   spelling = {
  --   --     enabled = true,
  --   --     suggestions = 20,
  --   --   },
  --   --   presets = {
  --   --     operators = false,
  --   --     motions = false,
  --   --     text_objects = false,
  --   --     windows = false,
  --   --     nav = false,
  --   --     z = false,
  --   --     g = false,
  --   --   },
  --   -- },
  --
  --   -- window = {
  --   --   border = "rounded",
  --   --   position = "bottom",
  --   --   padding = { 2, 2, 2, 2 },
  --   -- },
  --
  --   -- ---@type wk.Win.opts
  --   -- win = {
  --   --   -- don't allow the popup to overlap with the cursor
  --   --   no_overlap = true,
  --   --   -- width = 1,
  --   --   -- height = { min = 4, max = 25 },
  --   --   -- col = 0,
  --   --   -- row = math.huge,
  --   --   -- border = "none",
  --   --   padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
  --   --   title = true,
  --   --   title_pos = "center",
  --   --   zindex = 1000,
  --   --   -- Additional vim.wo and vim.bo options
  --   --   bo = {},
  --   --   wo = {
  --   --     -- winblend = 10, -- value between 0-100 0 for fully opaque and 100 for fully transparent
  --   --   },
  --   -- },
  --
  --   -- layout = {
  --   --   width = { min = 20 }, -- min and max width of the columns
  --   --   spacing = 3, -- spacing between columns
  --   --   align = "left", -- align columns left, center or right
  --   -- },
  --
  --   -- ignore_missing = true,
  --   -- show_help = false,
  --   -- show_keys = false,
  --   -- disable = {
  --   --   buftypes = {},
  --   --   filetypes = { "TelescopePrompt" },
  --   -- },
  --
  -- }


  which_key.setup()

  -- local mappings = {
  --   q = { "<cmd>confirm q<CR>", "Quit" },
  --   h = { "<cmd>nohlsearch<CR>", "NOHL" },
  --   [";"] = { "<cmd>tabnew | terminal<CR>", "Term" },
  --   v = { "<cmd>vsplit<CR>", "Split" },
  --   b = { name = "Buffers" },
  --   d = { name = "Debug" },
  --   f = { name = "Find" },
  --   g = { name = "Git" },
  --   l = { name = "LSP" },
  --   p = { name = "Plugins" },
  --   t = { name = "Test" },
  --   a = {
  --     name = "Tab",
  --     n = { "<cmd>$tabnew<cr>", "New Empty Tab" },
  --     N = { "<cmd>tabnew %<cr>", "New Tab" },
  --     o = { "<cmd>tabonly<cr>", "Only" },
  --     h = { "<cmd>-tabmove<cr>", "Move Left" },
  --     l = { "<cmd>+tabmove<cr>", "Move Right" },
  --   },
  --   T = { name = "Treesitter" },
  -- }
  -- which_key.register(mappings, { mode = "n", prefix = "<leader>" })

  which_key.add({
    { "<leader>;", "<cmd>tabnew | terminal<CR>", desc = "Term" },
    { "<leader>T", group = "Treesitter" },
    { "<leader>a", group = "Tab" },
    { "<leader>aN", "<cmd>tabnew %<cr>", desc = "New Tab" },
    { "<leader>ah", "<cmd>-tabmove<cr>", desc = "Move Left" },
    { "<leader>al", "<cmd>+tabmove<cr>", desc = "Move Right" },
    { "<leader>an", "<cmd>$tabnew<cr>", desc = "New Empty Tab" },
    { "<leader>ao", "<cmd>tabonly<cr>", desc = "Only" },
    { "<leader>b", group = "Buffers" },
    { "<leader>d", group = "Debug" },
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
    { "<leader>l", group = "LSP" },
    { "<leader>p", group = "Plugins" },
    { "<leader>q", "<cmd>confirm q<CR>", desc = "Quit" },
    { "<leader>t", group = "Test" },
    { "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
  })

end

return M
