-- lua/ck/core/kasugano.lua
local M = {}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply()
    vim.opt.termguicolors = true
    -- we override the basic colour scheme
    vim.cmd.colorscheme("default")

    -- Extended palette of the kasugano (terminal.sexy) colour scheme
    local c = {
        bg = "#121314",
        fg = "#c8cacc",

        black   = "#1b1b1b",
        white   = "#edeff2",
        red     = "#dc2566",
        green   = "#3ea290",
        yellow  = "#b0ead9",
        yellow_import = "#D8D8AC",
        blue    = "#477ab3",
        orange  = "#ffbe64",
        purple  = "#95a7cc",
        pink    = "#e2b5cc",
        cyan    = "#8292b2",
        comment = "#555555",
    }

    -- UI
    hl("Normal",       { fg = c.fg, bg = c.bg })
    hl("NormalNC",     { fg = c.fg, bg = c.bg })
    hl("EndOfBuffer",  { fg = c.bg, bg = c.bg })
    hl("LineNr",       { fg = c.comment })
    hl("CursorLineNr", { fg = c.yellow, bold = true })
    hl("CursorLine",   { bg = "#111111" })
    hl("Visual",       { bg = "#282828" })
    hl("Search",       { fg = c.bg, bg = c.yellow })
    hl("IncSearch",    { fg = c.bg, bg = c.cyan })

    hl("Pmenu",        { fg = c.fg, bg = "#111111" })
    hl("PmenuSel",     { fg = c.bg, bg = c.blue })
    hl("PmenuSbar",    { bg = "#222222" })
    hl("PmenuThumb",   { bg = "#444444" })

    hl("StatusLine",   { fg = c.fg, bg = c.bg })
    hl("StatusLineNC", { fg = c.fg, bg = c.bg })
    hl("VertSplit",    { fg = "#222222" })
    hl("WinSeparator", { fg = "#222222" })

    -- Diagnostics (LSP)
    hl("DiagnosticError", { fg = c.red })
    hl("DiagnosticWarn",  { fg = c.yellow })
    hl("DiagnosticInfo",  { fg = c.cyan })
    hl("DiagnosticHint",  { fg = c.blue })

    -- Core syntax groups
    hl("Comment",      { fg = c.comment, italic = false })
    hl("Constant",     { fg = c.white })
    hl("String",       { fg = c.green })
    hl("Character",    { fg = c.green })
    hl("Number",       { fg = c.pink })
    hl("Boolean",      { fg = c.orange })
    hl("Float",        { fg = c.pink })

    hl("Identifier",   { fg = c.white })
    hl("Function",     { fg = c.yellow })

    hl("Statement",    { fg = c.yellow, bold = true })
    hl("Conditional",  { fg = c.yellow, bold = true })
    hl("Repeat",       { fg = c.yellow })
    hl("Keyword",      { fg = c.white, bold = true })
    hl("Operator",     { fg = c.fg })

    hl("PreProc",      { fg = c.pink })
    hl("Include",      { fg = c.yellow_import, bold = true})
    hl("Define",       { fg = c.pink })
    hl("Macro",        { fg = c.pink })

    hl("Type",         { fg = c.white })
    hl("StorageClass", { fg = c.white })
    hl("Structure",    { fg = c.white })
    hl("Typedef",      { fg = c.white })

    hl("Special",      { fg = c.white })
    hl("SpecialChar",  { fg = c.white })
    hl("Delimiter",    { fg = c.fg })
    hl("SpecialComment",{ fg = c.comment })

    hl("Error",        { fg = c.white, bg = c.red, bold = true })
    hl("Todo",         { fg = c.bg, bg = c.yellow, bold = true })

    -- Treesitter (Neovim 0.8+)
    hl("@comment",     { link = "Comment" })
    hl("@string",      { link = "String" })
    hl("@number",      { link = "Number" })
    hl("@boolean",     { link = "Boolean" })
    hl("@function",    { link = "Function" })
    hl("@function.call",{ link = "Function" })
    hl("@keyword",     { link = "Keyword" })
    hl("@keyword.import",{ link = "Include" })
    hl("@type",        { link = "Type" })
    hl("@variable",    { fg = c.fg })
    hl("@variable.builtin", { fg = c.white })
    hl("@constant",    { link = "Constant" })
    hl("@punctuation", { fg = c.fg })
    hl("@punctuation.bracket",   { fg = c.fg })
    hl("@punctuation.delimiter", { fg = c.fg })
    hl("@punctuation.special",   { fg = c.fg })
    hl("@function.builtin", { fg = c.blue, bold = false })
    hl("@method.call", { link = "Function" })
    hl("@method", { link = "Function" })

    hl("@type.builtin", { fg = c.cyan, bold = false })
    hl("@constructor", { fg = c.purple })

    hl("@exception", { fg = c.pink, bold = true })
    hl("@keyword.exception", { fg = c.white, bold = true })

    hl("@parameter", { fg = c.fg, italic = true })
    hl("@property", { fg = c.white })
    hl("@field", { fg = c.white })

    hl("@module", { fg = c.white })
    hl("@namespace", { fg = c.white })

end

return M
