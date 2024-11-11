local color = require "core.colors.palets"

local nvim_set_hl = function(ns_id)
    return function(name, val)
        vim.api.nvim_set_hl(ns_id, name, val)
    end
end

vim.cmd"colorscheme vim"

local hl = nvim_set_hl(0)

local none = "NONE"

-- UI highlight
hl("Normal", { bg = none })
hl("NormalFloat", { fg = color.white, bg = color.background_alt })
hl("FloatBorder", { fg = color.black_b, bg = color.background_alt })

hl("ColorColumn", { bg = color.black })
hl("Cursor", { fg = color.blue, bg = color.white })
hl("CursorLine", { bg = color.black })
hl("CursorColumn", { bg = color.black })
hl("SignColumn", { fg = color.black, bg = none })
hl("LineNr", { fg = color.black_b, bg = none })
hl("CursorLineNr", { fg = color.white, bg = color.black })
hl("Folded", { fg = color.black, bg = color.background_alt })
hl("FoldColumn", { fg = color.white, bg = color.background_alt })

hl("Directory", { fg = color.white, bg = none })

hl("DiffAdd", { fg = color.green, bg = color.background_alt })
hl("DiffChange", { fg = color.yellow_b, bg = color.background_alt })
hl("DiffDelete", { fg = color.red, bg = color.background_alt })
hl("DiffText", { fg = color.magenta, bg = color.background_alt })

hl("EndOfBuffer", { fg = none, bg = none })
hl("ErrorMsg", { fg = color.black, bg = color.red_b, underline = false })
hl("VertSplit", { fg = color.black_b, bg = color.background_alt })
hl("WinSeparator", { link = "VertSplit" })

hl("IncSearch", { fg = color.black, bg = color.yellow })



hl("MatchParen", { fg = color.white_b, bold = true })
hl("ModeMsg", { fg = color.white_b, bg = color.magenta_b })
hl("MoreMsg", { fg = color.white_b, bg = color.magenta_b })
hl("NonText", { fg = color.black })

hl("Pmenu", { fg = color.white, bg = color.background_alt })
hl("PmenuSel", { fg = color.black, bg = color.blue })
hl("PmenuSbar", { bg = color.background })
hl("PmenuThumb", { bg = color.blue_b })

hl("Question", { fg = color.blue, bg = color.background_alt })
hl("Search", { fg = color.black, bg = color.yellow })
hl("SpecialKey", { fg = color.black, bg = color.background_alt })
hl("StatusLine", { fg = color.white, bg = color.black_b })
hl("StatusLineNC", { fg = color.white_b, bg = color.black_b })
hl("Tabline", { fg = color.white, bg = color.background })
hl("TablineFill", { fg = color.white, bg = color.yellow_b })
hl("TablineSel", { fg = color.white, bg = color.background_alt })
hl("Title", { bold = true })
hl("Visual", { bg = color.black })
hl("VisualNOS", { bg = color.blue })
hl("WarningMsg", { fg = color.yellow, bold = true })

hl("WildMenu", { fg = color.black, bg = color.blue })

-- Syntax highlight
hl("Comment", { fg = color.white })
hl("Constant", { fg = color.magenta })
hl("String", { fg = color.green })
hl("Character", { fg = color.green })
hl("Number", { fg = color.green })
hl("Boolean", { fg = color.magenta_b, bold = true })
hl("Float", { fg = color.green })
hl("Identifier", { fg = color.yellow_b })
hl("Function", { fg = color.cyan })
hl("Statement", { fg = color.yellow_b, bold = true })
hl("Conditional", { fg = color.yellow_b, bold = true })
hl("Repeat", { fg = color.yellow_b, bold = true })
hl("Label", { fg = color.magenta_b })
hl("Operator", { fg = color.magenta_b })
hl("Keyword", { fg = color.yellow_b, bold = true })
hl("Exception", { fg = color.yellow_b, bold = true })
hl("PreProc", { fg = color.yellow_b })
hl("Include", { fg = color.yellow_b })
hl("Define", { fg = color.yellow_b, bold = true })
hl("Macro", { fg = color.yellow_b })
hl("PreCondit", { fg = color.yellow_b, bold = true })
hl("Type", { fg = color.cyan })
hl("StorageClass", { fg = color.yellow_b, bold = true })
hl("Structure", { fg = color.magenta, bold = true })
hl("TypeDef", { fg = color.green_b, bold = true })
hl("Special", { fg = color.blue })
hl("SpecialChar", { fg = color.blue })
hl("Tag", { fg = color.green })
hl("Delimiter", { fg = color.green })
hl("SpecialComment", { fg = color.black, bold = true })
hl("Debug", { fg = color.yellow })
hl("Underlined", { underline = true })
hl("Ignore", { fg = color.white_b })
hl("Error", { fg = color.red_b, underline = true })
hl("SpellBad", { fg = color.red_b, underline = true, sp = color.red })
hl("SpellCap", { fg = color.red, underline = true, sp = color.red })
hl("SpellRare", { fg = color.red, underline = true, sp = color.red })
hl("SpellLocale", { fg = color.red, underline = true, sp = color.red })
hl("Todo", { fg = color.yellow, bold = true })
hl("Whitespace", { fg = color.background })

-- Treesitter highlight
hl("@text.literal", { fg = color.white })
hl("@text.title", { fg = color.green, bold = true })
hl("@text.emphasis", { fg = color.green, italic = true })
hl("@text.strong", { fg = color.green, bold = true })
hl("@text.uri", { fg = color.blue, underline = true })
hl("@text.todo", { fg = color.yellow, bold = true })
hl("@text.note", { fg = color.green, bold = true })
hl("@comment", { fg = color.white })
hl("@constant", { fg = color.magenta })
hl("@string", { fg = color.green })
hl("@number", { fg = color.cyan })
hl("@function", { fg = color.blue })
hl("@variable", { fg = color.white })
hl("@type", { fg = color.green })

-- LSP Semantic Tokens
hl("@lsp.type.class", { link = "@type" })
hl("@lsp.type.function", { link = "@function" })
hl("@lsp.type.method", { link = "@function" })
hl("@lsp.type.macro", { link = "@macro" })
hl("@lsp.type.variable", { link = "@variable" })

-- Telescope Highlighting
hl("TelescopePromptBorder", { fg = color.cyan })
hl("TelescopeResultsBorder", { fg = color.cyan })
hl("TelescopeSelection", { bg = color.yellow_b, bold = true })
hl("TelescopeMultiSelection", { fg = color.magenta })

-- GitSigns Highlighting
hl("GitSignsAddLn", { fg = color.green, bg = color.green })
hl("GitSignsChangeLn", { fg = color.yellow_b, bg = color.yellow_b })
hl("GitSignsCurrentLineBlame", { fg = color.black })

-- Other Highlighting adjustments
hl("LspReferenceText", { bg = color.blue })
hl("DiagnosticError", { fg = color.red })
hl("DiagnosticWarn", { fg = color.yellow })
hl("DiagnosticHint", { fg = color.blue })
hl("DiagnosticInfo", { fg = color.green })
