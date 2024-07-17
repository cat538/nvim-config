-- local status_ok, comment = pcall(require, "Comment")
-- if not status_ok then
--   return
-- end

-- comment.setup {
--   pre_hook = function(ctx)
--     -- Only calculate commentstring for tsx filetypes
--     if vim.bo.filetype == "typescriptreact" then
--       local U = require "Comment.utils"

--       -- Determine whether to use linewise or blockwise commentstring
--       local type = ctx.ctype == U.ctype.linewise and "__default" or "__multiline"

--       -- Determine the location where to calculate commentstring from
--       local location = nil
--       if ctx.ctype == U.ctype.blockwise then
--         location = require("ts_context_commentstring.utils").get_cursor_location()
--       elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
--         location = require("ts_context_commentstring.utils").get_visual_start_location()
--       end

--       return require("ts_context_commentstring.internal").calculate_commentstring {
--         key = type,
--         location = location,
--       }
--     end
--   end,
-- }

local M = {
  "numToStr/Comment.nvim",
  lazy = false,
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
    },
  },
}

function M.config()
  local wk = require "which-key"
  -- wk.register {
  --   ["<leader>/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
  -- }
  --
  -- wk.register {
  --   ["<leader>/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment", mode = "v" },
  -- }

  wk.add({
    {"<leader>/", "<Plug>(comment_toggle_linewise_current)", desc="Comment" },
    {"<leader>/", "<Plug>(comment_toggle_linewise_visual)", desc="Comment", mode = "v" },
  })

  vim.g.skip_ts_context_commentstring_module = true
  ---@diagnostic disable: missing-fields
  require("ts_context_commentstring").setup {
    enable_autocmd = false,
  }

  require("Comment").setup {
    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  }
end

return M
