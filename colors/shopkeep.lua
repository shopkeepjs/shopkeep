local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
	Normal = { bg = "#181325" },
	Boolean = { fg = "#A23FAB" },
	Comment = { fg = "#433C58", italic = true },
	Conceal = { fg = "#16504A", bg = "#A18C8E" },
	Conditional = { fg = "#FFAE57" },
	DiagnosticError = { fg = "#B54A4A" },
	DiagnosticWarn = { fg = "#CD9A89" },
	DiffAdd = { fg = "#9FD17B", bg = "#181325" },
	DiffChange = { fg = "#25887E", bg = "#181325" },
	DiffDelete = { fg = "#CC3333", bg = "#181325" },
	Directory = { fg = "#5C54B6" },
	EndOfBuffer = {},
	Error = { fg = "#B54A4A", bg = "#181325" },
	ErrorMsg = { fg = "#B54A4A" },
	Identifier = { fg = "#BFB3E6" },
	LazyButton = { bg = "#181325" },
	LazyButtonActive = { bg = "#2B2343" },
	LineNr = { fg = "#5B546D", italic = true },
	MatchParen = { bg = "#4E3262" },
	NeoTreeCursorLine = { bg = "#241D39" },
	NeoTreeEndOfBuffer = { fg = "#110E1B" },
	NeoTreeFileName = { fg = "#E098E7" },
	NeoTreeGitModified = { fg = "#A8A2E6" },
	NeoTreeGitUnstaged = { fg = "#FFAE57" },
	NeoTreeGitUntracked = { fg = "#A8A2E6" },
	NeoTreeNormal = { bg = "#110E1B" },
	NeoTreeNormalNC = { bg = "#110E1B" },
	NeoTreeRootName = { fg = "#867EDD" },
	NonText = { fg = "#181325", bg = "#181325" },
	NormalFloat = { bg = "#151122" },
	Operator = { fg = "#8F673D" },
	Pmenu = { bg = "#181325" },
	Question = { fg = "#CC7B24" },
	QuickFixLine = { bg = "#13101E" },
	Search = { bg = "#232B43" },
	SignColumn = { bg = "#181325" },
	String = { fg = "#9FD17B" },
	Structure = { fg = "#BFB3E6" },
	Title = {},
	Type = { fg = "#25887E" },
	VertSplit = { fg = "#27213B", bg = "#110E1B" },
	Whitespace = { fg = "#211C30" },
	WildMenu = { bg = "#110E1B" },
	javaScriptFunction = { fg = "#FFAE57" },
	javaScriptReserved = { fg = "#FFAE57" },
	javascriptEquals = { fg = "#FFAE57" },
	javascriptParens = { fg = "#FFAE57" },
	["lualine_c_normal"] = { fg = "#FFAE57" },
	["@conditional.javascript"] = { fg = "#7A3D8F" },
	["@constant.builtin"] = { fg = "#A23FAB" },
	["@exception.javascript"] = { fg = "#7A3D8F" },
	["@function.builtin.javascript"] = {},
	["@include"] = { fg = "#FFAE57" },
	["@keyword"] = { fg = "#FFAE57" },
	["@lsp.type.function.javascript"] = { fg = "#5C54B6" },
	["@lsp.typemod.class.defaultLibrary.javascript"] = { fg = "#5C54B6" },
	["@lsp.typemod.member.declaration.javascript"] = { fg = "#A18C8E" },
	["@lsp.typemod.member.defaultLibrary.javascript"] = { fg = "#5C54B6" },
	["@lsp.typemod.parameter.declaration.javascript"] = { fg = "#A18C8E" },
	["@lsp.typemod.property.declaration.javascript"] = { fg = "#A18C8E" },
	["@lsp.typemod.variable.defaultLibrary.javascript"] = { fg = "#A18C8E" },
	["@method.call.javascript"] = { fg = "#5C54B6" },
	["@number"] = { fg = "#9A477D" },
	["@operator"] = { fg = "#A18C8E" },
	["@preproc.javascript"] = { fg = "#3E3262" },
	["@punctuation"] = { fg = "#B68654" },
	["@repeat.javascript"] = { fg = "#7A3D8F" },
	["@tag"] = { fg = "#25887E" },
	["@type"] = { fg = "#BFB3E6" },
	-- PATCH_CLOSE
	-- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")

vim.opt.background = 'dark'
vim.g.colors_name = 'shopkeep'

-- apply highlight groups
for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end
