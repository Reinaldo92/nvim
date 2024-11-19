vim.cmd('colorscheme default')

local color = {
	blue        =	"#004c63",
	blue_b      =	"#a6dbff",
	cyan        =	"#007373",
	cyan_b      =	"#8cf8f7",
	green       =	"#005523",
	green_b     =	"#b4f6c0",
	magenta     =	"#470045",
	magenta_b   =	"#ffcaff",
	red         =	"#590008",
	red_b       =	"#ffc0b9",
	yellow      =	"#6b5300",
	yellow_b    =	"#fce094",
	dark1       =	"#07080d",
	dark2       =	"#14161b",
	dark3       =	"#2c2e33",
	dark4       =	"#4f5258",
	white1      =	"#eef1f8",
	white2      =	"#e0e2ea",
	white3      =	"#c4c6cd",
	white4      =	"#9b9ea4"
}

local nvim_set_hl = function(ns_id)
    return function(name, val)
        vim.api.nvim_set_hl(ns_id, name, val)
    end
end

local hl = nvim_set_hl(0)

local none = "NONE"

hl("Normal", { bg = none })
hl("NormalFloat", { fg = color.white1, bg = color.dark3 })
--hl("FloatBorder", { fg = color.base01, bg = color.base02 })
hl("ColorColumn", { bg = color.dark2 })
hl("CursorLine", { bg = color.dark2 })
hl("CursorLineSign", { bg = color.dark2 })
hl("CursorColumn", { bg = color.dark2 })
--hl("SignColumn", { fg = color.base01, bg = none })
hl("LineNr", { fg = color.white4, bg = none })
--hl("CursorLineNr", { fg = color.base0A, bg = color.base01 })

--hl("Folded", { fg = color.base01, bg = color.base01 })
--hl("FoldColumn", { fg = color.base07, bg = color.base01 })
hl("StatusLine", { fg = color.white1, bg = color.dark2 })
--hl("StatusLineNC", { fg = color.base07, bg = color.base01 })
--
--hl("Pmenu", { fg = color.base04, bg = color.base01 })
--hl("PmenuSel", { fg = color.base00, bg = color.base0A })
--hl("PmenuSbar", { bg = color.base01 })
--hl("PmenuThumb", { bg = color.base0A })
--
---- Telescope Highlighting
--hl("TelescopePromptBorder", { fg = color.base03 })
--hl("TelescopeResultsBorder", { fg = color.base03 })
--hl("TelescopeSelection", { bg = color.base0A, bold = true })
--hl("TelescopeMultiSelection", { fg = color.magenta })
--hl("TelescopeSelectionCaret", {fg = color.base00, bg = color.base0A })
--hl("TelescopeSelection", { fg =color.base00 ,bg = color.base0A })
--hl("TelescopeMatching", { link = 'Search' })
--
---- GitSigns Highlighting
--hl("GitSignsAddLn", { fg = color.base0B, bg = color.base0B })
--hl("GitSignsChangeLn", { fg = color.base0A, bg = color.base0A_b })
--hl("GitSignsCurrentLineBlame", { fg = color.base02 })
--
---- Other Highlighting adjustments
--hl("LspReferenceText", { bg = color.base0C })
--hl("DiagnosticError", { fg = color.base08 })
--hl("DiagnosticWarn", { fg = color.base0A })
--hl("DiagnosticHint", { fg = color.base0C })
--hl("DiagnosticInfo", { fg = color.base0B })
