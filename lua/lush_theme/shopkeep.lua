local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  -- Not actually used, just a bright pink for diagnostic testing
  local devdiagnostic = hsl(294, 100, 50)

  local purple = hsl(285, 40, 40)
  local lightgrey = hsl(255, 50, 80)
  local gold = hsl(31, 100, 67)
  local yellow = hsl(15, 40, 67)
  local green = hsl(95, 48, 65)
  local teal = hsl(174, 57, 34)
  local red = hsl(0, 60, 50)
  local bg = hsl(255, 32, 11)
  local importantpurple = purple.li(10).sa(10).ro(10)
  local offgold = lightgrey.mix(gold, 45).de(70).da(20)
  local offteal = teal.da(40)
  local offpurple = purple.sa(0).ro(-40).li(20)

  return {
    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    Conceal { bg = offgold, fg = offteal }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { fg = offpurple },      -- Directory names (and other special names in listings)
    DiffAdd { bg = bg, fg = green },   -- Diff mode: Added line |diff.txt|
    DiffChange { bg = bg, fg = teal }, -- Diff mode: Changed line |diff.txt|
    DiffDelete { bg = bg, fg = red },  -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { fg = Normal.bg },    -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg { bg = Normal.bg, fg = red.de(30) },               -- Error messages on the command line
    VertSplit { bg = bg.da(30), fg = bg.da(20).li(10).de(10) }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    SignColumn { bg = bg }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr { fg = bg.li(30).de(60), gui = "italic" }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove { },                   -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen { bg = bg.li(20).ro(20) }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    NonText { fg = bg, bg = bg },   -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { bg = bg },             -- Normal text
    NormalFloat { bg = bg.da(10) }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC {},  -- normal text in non-current windows
    Pmenu { bg = bg }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    Question { fg = gold.da(30).de(30) },     -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = Normal.bg.da(20) },   -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = Normal.bg.li(10).ro(-30) }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine {},        -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title { Normal.fg }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    Whitespace { fg = Normal.bg.li(5).de(20) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { bg = Normal.bg.da(30) },         -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    Comment { fg = Normal.bg.li(20).de(40), gui = "italic" }, -- Any comment

    -- Constant       { }, -- (*) Any constant
    String { fg = green }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    Boolean { fg = importantpurple }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier { fg = lightgrey }, -- (*) Any variable name
    -- Function       { }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    Conditional { fg = gold }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator { fg = gold.da(40).de(60) }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type { fg = teal },           -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    Structure { fg = lightgrey }, --   struct, union, enum, etc.
    -- Typedef {},   --   A typedef

    --Special { fg = devdiagnostic },        -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { fg = red.de(30), bg = Normal.bg }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- [lsp (these were default with lush)]
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- [diagnostics]
    DiagnosticError { fg = red.de(30) }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { fg = yellow },      -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError { fg = red }, -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn { fg = yellow.da(30) }, -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- [treesitter]
    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    sym "@punctuation" { fg = Operator.fg.li(20) },   -- Delimiter
    -- sym"@constant"          { }, -- Constant
    sym "@constant.builtin" { fg = importantpurple }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    sym "@number" { fg = hsl(321, 37, 44) }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    sym "@operator" { fg = offgold }, -- Operator
    sym "@keyword" { fg = gold },     -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym "@variable" { }, -- Identifier
    sym "@type" { fg = lightgrey }, -- Type (import {THISISTHETARGET} from '../')
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    sym "@include" { fg = gold }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    sym "@tag" { fg = teal }, -- HTML/script/style tag

    -- [DCH - my ones below]
    -- const keyword
    javaScriptReserved { fg = gold },
    -- function keyword
    javaScriptFunction { fg = gold },
    javascriptParens { fg = gold },
    javascriptEquals { fg = gold },
    -- const functionName = (bar) => {} <--- targets bar
    sym "@lsp.typemod.parameter.declaration.javascript" { fg = offgold },
    -- JSON Error
    --sym '@error.json' { fg = gold },
    -- const type: number <-- targets "number"
    --sym "@type.builtin" { fg = offteal.ro(20).li(20).de(10) },
    -- const type: number <-- targets "number"
    --sym "@variable.builtin" { fg = importantpurple },
    -- const type: number <-- targets "number"
    --sym "@variable.builtin.tsx" { fg = lightgrey },
    -- let, const, var
    --sym "@DCHVarDeclarations" { fg = purple },
    -- typeof THISTHINGHERE
    --sym "@DCHTypeQueryID" { fg = teal },
    -- @default false <-- targets "default"
    --sym "@keyword.jsdoc" { fg = Comment.fg.mix(gold, 45).de(70).da(20) },
    -- @default false <-- targets "false"
    --sym "@DCHJSDocKeywordDescription" { fg = Comment.fg.mix(lightgrey, 40).da(20) },
    -- undefined, null inside a type union
    --sym "@DCHLiteralType" { fg = offteal.ro(20) },
    -- type NotImportant = {} <--- the word type here
    --sym "@DCHWordType" { fg = purple },
    -- $ in Svelte
    --sym "@DCHSvelteReactive" { fg = gold },
    -- : in Svelte (after the $)
    --sym "@DCHOperator" { fg = Operator.fg },
    -- <span>This text right here</span
    --sym "@DCHJsxText" { fg = lightgrey },
    -- type NotImportant = {} <--- the word type here
    --sym "@tag.delimiter" { fg = Operator.fg },
    -- onClick={}
    --sym "@tag.attribute" { fg = gold },
    --sym "@lsp.typemod.function.local" { fg = lightgrey },
    --sym "@lsp.typemod.function.readonly" { fg = purple },
    --sym "@method.call" { fg = offteal },
    -- require(packageName) <-- targets require
    --sym "@lsp.type.function" { fg = offteal },
    --sym "@lsp.type.function.typescriptreact" { fg = offpurple },
    --sym "@lsp.type.function.typescript" { fg = offpurple },
    --sym "@lsp.typemod.property.declaration.typescript" { fg = lightgrey },
    -- const functionName = () => {} <---targets functionName
    --sym "@lsp.typemod.function" { fg = lightgrey },
    -- module.exports <--- targets module
    --sym "@variable.builtin.javascript" { fg = lightgrey },
    -- try, catch, throw
    --sym "@exception.javascript" { fg = offpurple },
    -- path.join <-- path
    --sym "@lsp.type.namespace.javascript" { fg = offpurple },


    -- [NeoTree]
    NeoTreeRootName { fg = offpurple.li(33).sa(30) },
    NeoTreeGitModified { fg = offpurple.li(53).sa(30) },
    NeoTreeGitUntracked { fg = offpurple.li(53).sa(30) },
    NeoTreeGitUnstaged { fg = gold },
    NeoTreeFileName { fg = importantpurple.li(53).sa(30) },
    NeoTreeNormal { bg = Normal.bg.da(30) },
    NeoTreeNormalNC { bg = Normal.bg.da(30) },
    NeoTreeEndOfBuffer { fg = NeoTreeNormalNC.bg },
    NeoTreeCursorLine { bg = NeoTreeNormal.bg.li(10) },

    -- [Lazy]
    LazyButton { bg = Normal.bg },
    LazyButtonActive { bg = Normal.bg.li(10) },

    -- [Lualine]
    lualine_c_normal { fg = gold, guibg = Normal.bg },

    -- #!/usr/bin/env node <--whole line
    sym "@preproc.javascript" { fg = Normal.bg.li(20) },
    -- require("path")
    sym "@lsp.type.function.javascript" { fg = offpurple },
    -- try, catch, throw
    sym "@exception.javascript" { fg = purple },
    -- if, else, switch
    sym "@conditional.javascript" { fg = purple },
    -- for, while
    sym "@repeat.javascript" { fg = purple },
    -- console.log <-- console
    sym "@lsp.typemod.variable.defaultLibrary.javascript" { fg = offgold },
    -- console.log <-- log
    sym "@lsp.typemod.member.defaultLibrary.javascript" { fg = offpurple },
    -- foo.bar() <-- bar
    sym "@method.call.javascript" { fg = offpurple },
    -- foo.bar() <-- foo
    sym "@function.builtin.javascript" { link = "Special" },
    -- throw new Error() <-- Error
    sym "@lsp.typemod.class.defaultLibrary.javascript" { fg = offpurple },
    -- using a parameter inside a function
    --sym "@lsp.type.parameter.javascript" { fg = offteal },
    -- foo: () => {} <----foo
    sym "@lsp.typemod.member.declaration.javascript" { fg = offgold },
    -- const bar = { zaz: 'asfd'} <---zaz
    sym "@lsp.typemod.property.declaration.javascript" { fg = offgold },
  }
end)

return theme

-- vi:nowrap
