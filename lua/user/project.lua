-- local status_ok, project = pcall(require, "project_nvim")
-- if not status_ok then
--   return
-- end
-- project.setup {

--   -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
--   detection_methods = { "pattern" },

--   -- patterns used to detect root dir, when **"pattern"** is in detection_methods
--   patterns = { ".git", "Makefile", "package.json" },
-- }

-- local tele_status_ok, telescope = pcall(require, "telescope")
-- if not tele_status_ok then
--   return
-- end

-- telescope.load_extension "projects"
local M = {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
}

function M.config()
  require("project_nvim").setup {
    active = true,
    on_config_done = nil,
    manual_mode = false,
    detection_methods = { "pattern" },
    patterns = { ".git", "CMakeLists.txt", "Makefile", "package.json", "Cargo.toml" },
    ignore_lsp = {},
    exclude_dirs = {},
    show_hidden = false,
    silent_chdir = true,
    scope_chdir = "global",
  }

  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap

  keymap("n", "<c-p>", ":lua require('telescope').extensions.projects.projects()<CR>", opts)
end

return M

