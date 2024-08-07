-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Move cursor
function vcountfunc(k)
  return ((vim.v.count == 0) and ('g' .. k)) or k
end
keymap('','j', function() return vcountfunc('j') end,{ noremap = true, silent = true, expr = true })
keymap('','k', function() return vcountfunc('k') end,{ noremap = true, silent = true, expr = true })

-- <Home> and <End> within normal_mode and visual_mode
keymap("n", "9", "^", opts)
keymap("n", "0", "$", opts)
keymap("v", "9", "^", opts)
keymap("v", "0", "$", opts)


-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Save current file
keymap("n", "<C-s>", "<cmd>w<CR>")

-- Close buffers
keymap("n", "<leader>x", "<cmd>Bdelete!<CR>", opts)

-- navigate within insert mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-e>", "<End>", opts)
keymap("i", "<C-b>", "<Home>", opts)
keymap("i", "<C-u>", "<Esc>O", opts)
keymap("i", "<C-o>", "<Esc>o", opts)
keymap("i", "<C-z>", "<C-O>u", opts)
keymap("i", "<C-y>", "<C-O><C-R>", opts)

-- Save current file in insert_mode 
keymap("i", "<C-s>", "<cmd>w<CR>")

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text
keymap("n" , "<A-j>", ":m .+1<CR>==",opts)
keymap("n" , "<A-k>", ":m .-2<CR>==",opts)
keymap("i" , "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i" , "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v" , "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v" , "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- NvToggleTerm
-- keymap("n", "<C-_>", ":ToggleTerm direction=horizontal<CR>")
-- keymap("t", "<C-_>", "<cmd>ToggleTerm direction=horizontal<CR>")


-- -- Telescope
-- keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
-- keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
-- keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
-- keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
-- keymap("n", "<leader>fk", ":Telescope keymaps<CR>", opts)

-- -- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- -- Comment
-- keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
-- keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- -- DAP
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
