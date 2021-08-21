-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.builtin.compe.autocomplete = true

-- 
-- -- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- -- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- -- unmap a default keymapping
-- -- lvim.keys.normal_mode["<C-Up>"] = ""
-- -- edit a default keymapping
-- -- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
-- -- set keymap with custom opts
-- -- lvim.keys.insert_mode["po"] = {'<ESC>', { noremap = true }}
-- 
-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
}

-- 
-- -- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- lvim.builtin.dashboard.active = true
-- lvim.builtin.terminal.active = true
-- 
-- -- if you don't want all the parsers change this to a table of the ones you want
-- lvim.builtin.treesitter.ensure_installed = "maintained"
-- lvim.builtin.treesitter.ignore_install = { "haskell" }
-- lvim.builtin.treesitter.highlight.enabled = true
-- 
-- lvim.lsp.diagnostics.virtual_text = false
-- 
-- -- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--     args = {}
--   }
-- }
-- -- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }
-- 
 
-- -- Additional Plugins
lvim.plugins = {
    {"lunarvim/colorschemes"},
    {"folke/tokyonight.nvim"}, {
        "ray-x/lsp_signature.nvim",
        config = function() require"lsp_signature".on_attach() end,
        event = "InsertEnter"
    },
    {
  "sindrets/diffview.nvim",
  event = "BufRead",
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
    "Gedit"
  },
  ft = {"fugitive"}
},
{
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
},
{
  "p00f/nvim-ts-rainbow",
},
{
  "simrat39/symbols-outline.nvim",
  cmd = "SymbolsOutline",
},
{
  "folke/trouble.nvim",
    cmd = "TroubleToggle",
},
	{
		"ethanholz/nvim-lastplace",
		event = "BufRead",
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = {
					"gitcommit", "gitrebase", "svn", "hgcommit",
				},
				lastplace_open_folds = true,
			})
		end,
	},
  {
  "iamcco/markdown-preview.nvim",
  run = "cd app && npm install",
  ft = "markdown",
  config = function()
    vim.g.mkdp_auto_start = 1
  end,
},
{
  "folke/todo-comments.nvim",
  event = "BufRead",
},
{
  "metakirby5/codi.vim",
  cmd = "Codi",
},
{
  "lukas-reineke/indent-blankline.nvim",
  event = "BufRead",
  setup = function()
    vim.g.indentLine_enabled = 1
    vim.g.indent_blankline_char = "▏"
    vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
    vim.g.indent_blankline_buftype_exclude = {"terminal"}
    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_first_indent_level = false
  end
},
{
  "tpope/vim-surround",
  keys = {"c", "d", "y"}
},
{ "tpope/vim-repeat" },
}
-- 
-- -- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- -- lvim.autocommands.custom_groups = {
-- --   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- -- }
-- 
-- 
-- 
-- 
