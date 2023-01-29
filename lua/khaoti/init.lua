-- Template: https://github.com/rktjmp/lush-template/blob/main/lua/lush_theme/lush_template.lua

local lush = require('lush')
local hsl = lush.hsl

local default_colors = require("khaoti.pallete")


local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Editor
    ColorColumn { bg = default_colors.bg }, -- Columns set with 'colorcolumn'
    Conceal { fg = default_colors.fg }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine { bg = default_colors.cursoline_bg }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    --
    Directory { fg = default_colors.cyan }, -- Directory names (and other special names in listings)
    DiffAdd { fg = default_colors.green2, bg = default_colors.none }, -- Diff mode: Added line |diff.txt|
    DiffChange { fg = default_colors.yellow, bg = default_colors.none }, -- Diff mode: Changed line |diff.txt|
    DiffDelete { fg = default_colors.red2, bg = default_colors.none }, -- Diff mode: Deleted line |diff.txt|
    DiffText { fg = default_colors.orange2, bg = default_colors.none }, -- Diff mode: Changed text within a changed line |diff.txt|
    --
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    --
    ErrorMsg { fg = default_colors.red2 }, -- Error messages on the command line
    --
    VertSplit { fg = default_colors.dark_grey.lighten(20) }, -- Column separating vertically split windows
    LineNr { fg = default_colors.grey }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr {  bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    Folded { fg = default_colors.fg2, bg = "#202d39" }, -- Line used for closed folds
    FoldColumn { LineNr }, -- 'foldcolumn'
    SignColumn { link = "Normal" }, -- Column where |signs| are displayed
    SignColumnSB { link = "SignColumn" }, -- column where |signs| are displayed
    --
    IncSearch { bg = default_colors.grey.darken(30), bold = true, underline = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { fg = default_colors.dark_grey.lighten(50), bg = default_colors.red2 }, -- |:substitute| replacement text highlighting
    --
    MatchParen { fg = default_colors.red2, bold = true }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = default_colors.fg }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { ModeMsg }, -- Area for messages and cmdline
    -- -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = default_colors.blue2, bold = true }, -- |more-prompt|
    --
    NonText { fg = default_colors.blue2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { fg = default_colors.fg, bg = default_colors.background }, -- Normal text
    NormalNC { Normal }, -- normal text in non-current windows
    NormalFloat { fg = default_colors.fg, bg = default_colors.bg }, -- Normal text in floating windows.
    FloatBorder { bg = default_colors.bg, fg = default_colors.bg },
    Pmenu { fg = default_colors.fg, bg = default_colors.float_bg }, -- Popup menu: Normal item.
    PmenuSel { fg = default_colors.fg, bg = default_colors.dark_grey.darken(70), bold = true }, -- Popup menu: Selected item.
    PmenuSbar { bg = default_colors.bg }, -- Popup menu: Scrollbar.
    PmenuThumb { bg = default_colors.blue2 }, -- Popup menu: Thumb of the scrollbar.
    Question { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { CursorLine }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    --
    Search { bg = default_colors.grey.darken(30), bold = true, underline = true }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey { NonText }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad { gui = "undercurl", sp = default_colors.red2 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { gui = "undercurl", sp = default_colors.orange2 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { gui = "undercurl", sp = default_colors.blue2 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { SpellLocal }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- Status line of current window
    -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { fg = default_colors.fg2, bg = default_colors.bg }, -- Tab pages line, not active tab page label
    TabLineFill { fg = default_colors.fg2, bg = default_colors.bg }, -- Tab pages line, where there are no labels
    TabLineSel { fg = default_colors.fg2, bg = default_colors.bg, bold = true, italic = false }, -- Tab pages line, active tab page label
    Title { fg = default_colors.purple }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = default_colors.black.lighten(5), bold = true }, -- Visual mode selection
    VisualNOS { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { fg = default_colors.orange2 }, -- Warning messages
    Whitespace { fg = default_colors.black2.lighten(20) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { Pmenu }, -- Current match in 'wildmenu' completion

    -- Syntax
    Comment { fg = default_colors.dark_grey.darken(5) }, -- Any comment

    Constant { fg = default_colors.orange }, -- (*) Any constant
    String { fg = default_colors.string_fg }, --   A string constant: "this is a string"
    Character { fg = default_colors.purple }, --   A character constant: 'c', '\n'
    Number { fg = default_colors.orange2 }, --   A number constant: 234, 0xff
    Boolean { Constant }, --   A boolean constant: TRUE, false
    Float { Number }, --   A floating point constant: 2.3e10

    Identifier { fg = default_colors.purple }, -- (*) Any variable name
    Function { fg = default_colors.cyan }, --   Function name (also: methods for classes)

    Statement { fg = default_colors.red }, -- (*) Any statement
    Conditional { fg = default_colors.red }, --   if, then, else, endif, switch, etc.
    Repeat { fg = default_colors.red }, --   for, do, while, etc.
    Label { Statement }, --   case, default, etc.
    Operator { fg = default_colors.cyan.lighten(40) }, --   "sizeof", "+", "*", etc.
    Keyword { Statement }, --   any other keyword
    Exception { fg = default_colors.red2 }, --   try, catch, throw

    PreProc { fg = default_colors.purple }, -- (*) Generic Preprocessor
    Include { PreProc }, --   Preprocessor #include
    Define { PreProc }, --   Preprocessor #define
    Macro { PreProc }, --   Same as Define
    PreCondit { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type { Constant }, -- (*) int, long, char, etc.
    StorageClass { fg = default_colors.orange }, --   static, register, volatile, etc.
    Structure { StorageClass }, --   struct, union, enum, etc.
    Typedef { Type }, --   A typedef

    Special { fg = default_colors.cyan2 }, -- (*) Any special symbol
    SpecialChar { Special }, --   Special character in a constant
    Tag { Special }, --   You can use CTRL-] on this
    Delimiter { Special }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug { Special }, --   Debugging statements

    Underlined { underline = true }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { fg = default_colors.red3 }, -- Any erroneous construct
    Todo { bg = default_colors.dark_grey, fg = default_colors.cyan2 }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText { bg = "#333333" }, -- Used for highlighting "text" references
    LspReferenceRead { LspReferenceText }, -- Used for highlighting "read" references
    LspReferenceWrite { LspReferenceText }, -- Used for highlighting "write" references

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { fg = default_colors.red3 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { fg = default_colors.orange2 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { fg = default_colors.blue2 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint { fg = default_colors.cyan2 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg = default_colors.red3, bg = default_colors.none, bold = true, italic = true, }, -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn { fg = default_colors.orange2, bg = default_colors.none, bold = true, italic = true, }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo { fg = default_colors.blue2, bg = default_colors.none, bold = true, italic = true }, -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint { fg = default_colors.cyan2, bg = default_colors.none, bold = true, italic = true }, -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError { underline = true, sp = default_colors.red3 }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn { underline = true, sp = default_colors.orange2 }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo { underline = true, sp = default_colors.blue2 }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint { underline = true, sp = default_colors.cyan2 }, -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError { DiagnosticError, bold = true }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn { DiagnosticWarn, bold = true }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo { DiagnosticInfo, bold = true }, -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint { DiagnosticHint, bold = true }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError { DiagnosticError, bold = true }, -- Used for "Error" signs in sign column.
    DiagnosticSignWarn { DiagnosticWarn, bold = true }, -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo { DiagnosticInfo, bold = true }, -- Used for "Info" signs in sign column.
    DiagnosticSignHint { DiagnosticHint, bold = true }, -- Used for "Hint" signs in sign column.

    -- Treessiter
    sym("@constant") { Constant }, -- For constant
    sym("@constant.builtin") { Constant }, -- For constant that are built in the language: nil in Lua.
    sym("@constant.macro") { Macro }, -- For constants that are defined by macros: NULL in C.


    sym("@number") { Number }, -- For all numbers
    sym("@float") { Float }, -- For floats
    sym("@boolean") { Boolean }, -- For booleans


    sym("@string") { String }, -- For strings
    sym("@string.regex") { fg = default_colors.yellow2 }, -- Regular expression literals
    sym("@string.escape") { fg = default_colors.lime }, -- Escape characters within a string: `\n`, `\t`, etc.
    sym("@string.special") { SpecialChar }, -- other special strings (e.g. dates)



    sym("@symbol") { fg = default_colors.cyan2 };
    sym("@field") { fg = default_colors.black2.lighten(40) }, -- For fields.
    sym("@property") { link = "@field" }, -- Same as @field.

    sym("@parameter") { fg = default_colors.brown }, -- For parameters of a function
    sym("@parameter.reference") { link = "@parameter" }, -- Identifier

    sym("@variable") { fg = default_colors.fg.darken(10) }, -- Any variable name that does not have another highlighC.
    sym("@variable.builtin") { fg = default_colors.red }, -- Variable names that are defined by the languages, like
    sym("@function") { Function }, -- Function
    sym("@function.builtin") { fg = default_colors.cyan }, -- Special
    sym("@function.macro") { Macro }, -- Macro
    sym("@method") { Function }, -- Function

    sym("@keyword.function") { Keyword },
    sym("@keyword") { Keyword }, -- Keyword
    sym("@conditional") { Conditional }, -- Conditional
    sym("@repeat") { Repeat }, -- Repeat
    sym("@label") { Label }, -- Label
    sym("@operator") { Operator }, -- Operator
    sym("@exception") { Exception }, -- Exception

    sym("@namespace") { fg = default_colors.cyan2 },
    sym("@annontation") { PreProc },
    sym("@attribute") { fg = default_colors.purple },
    sym("@include") { Include }, -- Include
    sym("@preproc") { PreProc }, -- PreProc
    sym("@define") { Define }, -- Define
    sym("@macro") { Macro }, -- Macro


    sym("@punctuation.delimeter") { Delimiter }, -- delimiters (e.g. `;` / `.` / `,`)
    sym("@punctuation.bracket") { Delimiter }, -- brackets (e.g. `()` / `{}` / `[]`)
    sym("@punctuation.special") { Delimiter }, -- special symbols (e.g. `{}` in string interpolation)
    sym("@character.special") { SpecialChar }, -- SpecialChar

    sym("@comment") { Comment, italic = true }, -- line and block comments

    sym("@tag") { Tag }, -- Tags like html tag names
    sym("@tag.attribute") { Function }, -- Tags like html tag names
    sym("@tag.delimeter") { Special }, -- Tag delimiter like < > /


    sym("@text") { fg = default_colors.fg }, -- For strings considerated text in a markup language.
    sym("@text.strong") { fg = default_colors.red2, bold = true },
    sym("@text.emphasis") { fg = default_colors.red2, italic = true },
    sym("@text.underline") { link = "Underline" },
    sym("@text.strike") { fg = default_colors.fg, strikethrough = true },
    sym("@text.title") { Title }, -- Title
    sym("@text.literal") { String, italic = true }, -- used for inline code in markdown and for doc in python (""")
    sym("@text.uri") { fg = default_colors.blue2, underline = true, italic = true }, -- urls, links and emails
    sym("@text.environment") { PreProc }, -- text environments of markup languages
    sym("@text.environment.name") { Function }, -- text indicating the type of an environment
    sym("@text.reference") { Keyword, bold = true }, -- references

    sym("@text.todo") { Todo }, -- Todo

    sym("@type") { fg = default_colors.yellow2, bold = true }, -- For types
    sym("@type.builtin") { fg = default_colors.orange2, bold = true }, -- For builtin types
    sym("@type.definition") { fg = default_colors.yellow2 }, -- type definitions (e.g. `typedef` in C)
    sym("@type.qualifier") { fg = default_colors.yellow2 }, -- type qualifiers (e.g. `const`)


    sym("@character") { Character }, -- Character

    sym("@storageclass") { StorageClass }, -- visibility/life-time/etc. modifiers (e.g. `static`)
    sym("@structure") { Structure }, -- attribute annotations (e.g. Python decorators)


    sym("@debug") { Debug }, -- Debug

    sym("@error") { fg = default_colors.red3 },


    -- Cmp
    CmpDocumentation { bg = default_colors.bg },
    CmpDocumentationBorder { fg = default_colorss.fg2, bg = default_colors.bg },

    CmpItemAbbrDeprecated { fg = default_colors.grey, bg = default_colors.none, gui = 'strikethrough' },
    CmpItemAbbrMatch { fg = default_colors.fg2, bg = default_colors.none },
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },

    SuggestWidgetBorder { fg = default_colors.black2 },
    SuggestWidgetSelect { bg = default_colors.fg2 },

    CmpItemKindText { fg = default_colors.fg, bg = 'NONE' },
    CmpItemKindMethod { Function },
    CmpItemKindFunction { Function },
    CmpItemKindConstructor { link = "@constructor" },
    CmpItemKindField { link = "@field" },
    CmpItemKindVariable { CmpItemKindField },
    CmpItemKindClass { StorageClass },
    CmpItemKindInterface { CmpItemKindField },
    CmpItemKindModule { link = "@module" },
    CmpItemKindProperty { link = "@property" },
    CmpItemKindUnit { CmpItemKindText },
    CmpItemKindValue { CmpItemKindText },
    CmpItemKindEnum { CmpItemKindClass },
    CmpItemKindKeyword { Keyword },
    CmpItemKindSnippet { CmpItemKindText },
    CmpItemKindColor { CmpItemKindText },
    CmpItemKindFile { CmpItemKindText },
    CmpItemKindReference { link = "@reference" },
    CmpItemKindFolder { CmpItemKindText },
    CmpItemKindEnumMember { CmpItemKindField },
    CmpItemKindConstant { Constant },
    CmpItemKindStruct { CmpItemKindClass },
    CmpItemKindEvent { CmpItemKindClass },
    CmpItemKindOperator { link = "@operator" },
    CmpItemKindTypeParameter { Type },

    -- Telescope
    TelescopeSelection { PmenuSel, bold = true },
    TelescopeSlectionCaret { fg = default_colors.float_bg2 },
    TelescopeMultiSelection { fg = default_colors.grey },
    TelescopeNormal { fg = default_colors.grey_bg, bg = default_colors.float_bg2 },
    TelescopeBorder { fg = default_colors.grey, bg = default_colors.float_bg2 },
    TelescopePromptNormal { bg = default_colors.bg3 },
    TelescopePromptBorder { fg = default_colors.float_bg2, bg = default_colors.float_bg2 },
    TelescopeResultsBorder { fg = default_colors.float_bg2, bg = default_colors.float_bg2 },
    TelescopePreviewBorder { fg = default_colors.float_bg2, bg = default_colors.float_bg2 },
    TelescopePreviewTitle { fg = default_colors.float_bg2, bg = default_colors.float_bg2 },
    TelescopePromptTitle { fg = default_colors.float_bg2, bg = default_colors.float_bg2 },
    TelescopeResultsTitle { fg = default_colors.float_bg2, bg = default_colors.float_bg2 },
    TelescopeMatching { CmpItemAbbrMatch },
    TelescopePromptPrefix { fg = default_colors.black2 },
    TelescopePrompt { TelescopeNormal },

    -- Indent Blankline
    IndentBlanklineChar { fg = default_colors.black2 },
    IndentBlanklineSpaceChar { IndentBlanklineChar },
    IndentBlanklineSpaceCharBlankline { IndentBlanklineChar },
    IndentBlanklineContextChar { fg = default_colors.black },
    IndentBlanklineContextSpaceChar { IndentBlanklineContextChar },
    IndentBlanklineContextStart { gui = 'underline', sp = default_colors.fg2 },

    -- Hop
    HopNextKey { fg = default_colors.red.darken(40), bold = true },
    HopNextKey1 { fg = default_colors.orange.darken(40), bold = true },
    HopNextKey2 { fg = default_colors.blue2.darken(10) },

    -- BarBar
    BufferCurrent { bg = default_colors.none, bold = true },
    BufferCurrentIndex { fg = default_colors.blue2.lighten(5), bold = true },
    BufferCurrentMod { fg = default_colors.yellow2, bold = true },
    BufferCurrentSign { BufferCurrentIndex },
    BufferCurrentTarget { bold = true },

    BufferVisible { fg = default_colors.black2.lighten(10), bg = default_colors.bg.lighten(5) },
    BufferVisibleIndex { fg = default_colors.none, bg = default_colors.bg.lighten(5) },
    BufferVisibleMod { fg = default_colors.orange.darken(10), bg = default_colors.bg.lighten(5) },
    BufferVisibleSign { BufferVisibleIndex },
    BufferVisibleTarget { bg = default_colors.bg.lighten(5), bold = true },

    BufferInactive { fg = default_colors.black2.lighten(10), bg = default_colors.bg.lighten(5) },
    BufferInactiveIndex { BufferInactive },
    BufferInactiveMod { fg = default_colors.yellow, bg = default_colors.bg.lighten(5) },
    BufferInactiveSign { BufferInactive },
    BufferInactiveTarget { bold = true },

    BufferTabpages { fg = "#ffa167", bg = default_colors.bg.lighten(5), bold = true },
    BufferTabpageFill { fg = "#515151", bg = default_colors.bg.lighten(5) },

    BufferCurrentIcon { link = 'BufferCurrent' },
    BufferVisibleIcon { link = 'BufferVisible' },
    BufferInactiveIcon { link = 'BufferInactive' },
    BufferOffset { link = 'BufferTabpageFill' },
    -- BufferLine
    BufferLineBackground { fg = default_colors.fg2, bg = default_colors.bg },
    BufferLineBufferVisible { fg = default_colors.fg2, bg = default_colors.bg },
    BufferLineBufferSelected { fg = default_colors.fg, bg = default_colors.none, bold = true },

    BufferLineDuplicate { fg = default_colors.fg, bg = default_colors.bg, italic = true },
    BufferLineDuplicateVisible { fg = default_colors.fg2, bg = default_colors.bg },
    BufferLineDuplicateSelected { fg = default_colors.fg, bg = default_colors.bg },

    BufferLineTab { fg = default_colors.fg2, bg = default_colors.bg },
    BufferLineTabSelected { fg = default_colors.fg, bg = default_colors.bg, bold = true },
    BufferLineTabSeparator { fg = default_colors.black2, bg = default_colors.bg },
    BufferLineTabSeparatorSelected { fg = default_colors.black2, bg = default_colors.bg },
    BufferLineTabClose { fg = default_colors.fg2, bg = default_colors.bg },


    BufferLineIndicatorSelected { fg = default_colors.none, bg = default_colors.none, bold = true },
    BufferLineIndicatorVisible { fg = default_colors.black, bg = default_colors.bg },

    BufferLineSeparator { fg = default_colors.bg, bg = default_colors.bg },
    BufferLineSeparatorVisible { fg = default_colors.bg, bg = default_colors.float_bg },
    BufferLineSeparatorSelected { fg = default_colors.bg, bg = default_colors.float_bg2 },
    BufferLineOffsetSeparator { fg = default_colors.bg, bg = default_colors.float_bg2 },

    BufferLineCloseButton { fg = default_colors.black, bg = default_colors.bg },
    BufferLineCloseButtonVisible { fg = default_colors.black, bg = default_colors.bg },
    BufferLineCloseButtonSelected { fg = default_colors.red3, bg = default_colors.none },

    -- NvimTree




  }
end)

return theme
