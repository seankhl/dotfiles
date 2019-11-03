" Name: No Frils Day Colorscheme
" Author: robertmeta (on Github)
" URL: https://github.com/robertmeta/nofrils
" (see this url for latest release & screenshots)
" License: OSI approved MIT license

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "nofrils-day"

if !exists("g:nofrils_strbackgrounds")
    let g:nofrils_strbackgrounds = 0
endif
if !exists("g:nofrils_heavycomments")
    let g:nofrils_heavycomments = 0
endif
if !exists("g:nofrils_heavylinenumbers")
    let g:nofrils_heavylinenumbers = 0
endif

set background=light

function! s:higui(group, guifg, guibg, attr)
    if a:guifg != ""
        if a:guifg == "NONE"
            exec "hi " . a:group . " ctermfg=NONE"
        endif
        exec "hi " . a:group . " guifg=" . a:guifg
    endif
    if a:guibg != ""
        if a:guibg == "NONE"
            exec "hi " . a:group . " ctermbg=NONE"
        endif
        exec "hi " . a:group . " guibg=" . a:guibg
    endif
    if a:attr != ""
        if a:attr == "NONE"
            exec "hi " . a:group . " term=NONE"
        endif
        exec "hi " . a:group . " cterm=" . a:attr . " gui=" . a:attr
    endif
endfunction

let s:guiwhite = "#FFFFFF"
let s:guibackg = "#F0F5FF"
let s:guiforeg = "#000000"
let s:guigrey1 = "#585858"
let s:guigrey2 = "#D8DCE8"

let s:guifaded = "#A8AFB8"
let s:guibrite = "#004A5F"

let s:guishade = "#302087"
let s:guihlite = "#BFFFAF"

let s:guialert = "#9FFFEF"
let s:guiwarng = "#DA5F00"
let s:guierror = "#FF8787"

" Baseline
call s:higui("Normal", s:guiforeg, s:guibackg, "NONE")
"call s:higui("Normal", s:guiforeg, s:guibackg, "NONE")

" Faded
call s:higui("Comment",      s:guifaded, "NONE", "NONE")
call s:higui("FoldColumn",   s:guifaded, "NONE", "NONE")
call s:higui("Folded",       s:guigrey1, "NONE", "NONE")
call s:higui("LineNr",       s:guifaded, "NONE", "NONE")
call s:higui("NonText",      s:guifaded, "NONE", "NONE")
call s:higui("SignColumn",   s:guigrey1, "NONE", "NONE")
call s:higui("SpecialKey",   s:guigrey1, s:guibackg, "NONE")
call s:higui("StatusLineNC", s:guifaded, s:guigrey2, "NONE")
call s:higui("VertSplit",    s:guiforeg, s:guigrey2, "NONE")
call s:higui("PreProc",      "NONE", "NONE", "bold")
call s:higui("Include",      "NONE", "NONE", "bold")
call s:higui("Define",       "NONE", "NONE", "bold")
call s:higui("Macro",        "NONE", "NONE", "bold")

" Highlighted
call s:higui("CursorColumn", "NONE", s:guigrey2, "NONE")
call s:higui("CursorIM",     s:guiforeg, s:guialert, "NONE")
call s:higui("CursorLineNr", "NONE", s:guibackg, "NONE")
call s:higui("CursorLine",   "NONE", s:guigrey2, "NONE")
call s:higui("Cursor",       s:guiforeg, s:guialert, "NONE")
call s:higui("Directory",    "#5F005F", "NONE", "NONE")
call s:higui("ErrorMsg",     s:guierror, s:guiforeg, "bold")
call s:higui("Error",        s:guierror, s:guiforeg, "bold")
call s:higui("Search",       s:guiforeg, s:guigrey2, "bold,reverse")
call s:higui("MatchParen",   s:guiforeg, s:guigrey2, "NONE")
call s:higui("ModeMsg",      s:guishade, "NONE", "bold")
call s:higui("MoreMsg",      "#5F005F", "NONE", "NONE")
call s:higui("PmenuSel",     s:guiwhite, s:guiforeg, "NONE")
"call s:higui("PmenuSel", s:guiforeg, s:guiwhite, "NONE")
call s:higui("Question",     "#5F005F", "NONE", "NONE")
call s:higui("IncSearch",    s:guihlite, s:guiforeg, "bold")
call s:higui("StatusLine",   s:guiwhite, s:guiforeg, "NONE")
call s:higui("Todo",         s:guialert, s:guiforeg, "bold")
call s:higui("WarningMsg",   s:guiwarng, s:guiwhite, "bold")
call s:higui("WildMenu",     s:guiforeg, s:guiwhite, "NONE")

" Reversed
"call s:higui("Pmenu", "NONE", "NONE", "NONE")
"call s:higui("Pmenu", s:guifaded, s:guigrey2, "NONE")
call s:higui("Pmenu", s:guiforeg, s:guigrey2, "NONE")
call s:higui("PmenuSbar", s:guiforeg, s:guigrey2, "NONE")
"call s:higui("PmenuSbar", "NONE", "NONE", "reverse")
call s:higui("PmenuThumb", s:guiwhite, s:guiforeg, "NONE")
"call s:higui("TabLineSel", "NONE", "NONE", "reverse")
call s:higui("TabLineSel", s:guiforeg, s:guibackg, "NONE")
call s:higui("Visual", "NONE", "NONE", "reverse")
call s:higui("VisualNOS", "NONE", "NONE", "reverse,underline")

" Diff
call s:higui("DiffAdd",    s:guiforeg, s:guihlite, "NONE")
call s:higui("DiffChange", s:guishade, s:guiwhite, "NONE")
call s:higui("DiffDelete", s:guigrey1, s:guierror, "NONE")
call s:higui("DiffText",   s:guibackg, s:guishade, "NONE")

" Spell
call s:higui("SpellBad",   s:guiwarng, "NONE", "underline")
call s:higui("SpellCap",   s:guiwarng, "NONE", "underline")
call s:higui("SpellLocal", s:guiwarng, "NONE", "underline")
call s:higui("SpellRare",  s:guiwarng, "NONE", "underline")

" Vim Features
call s:higui("Menu",        "NONE", "NONE", "NONE")
call s:higui("Scrollbar",   "NONE", "NONE", "NONE")
call s:higui("TabLineFill", s:guiforeg, s:guigrey2, "NONE")
call s:higui("TabLine",     s:guifaded, s:guigrey2, "NONE")
call s:higui("Tooltip",     "NONE", "NONE", "NONE")

" Syntax Highlighting (or lack thereof)
call s:higui("Boolean",        "NONE", "NONE", "NONE")
call s:higui("Character",      "NONE", "NONE", "NONE")
call s:higui("Conceal",        "NONE", "NONE", "NONE")
call s:higui("Conditional",    "NONE", "NONE", "NONE")
call s:higui("Constant",       "NONE", "NONE", "NONE")
call s:higui("Debug",          "NONE", "NONE", "NONE")
call s:higui("Delimiter",      "NONE", "NONE", "NONE")
call s:higui("Directive",      "NONE", "NONE", "NONE")
call s:higui("Exception",      "NONE", "NONE", "NONE")
call s:higui("Float",          "NONE", "NONE", "NONE")
call s:higui("Format",         "NONE", "NONE", "NONE")
call s:higui("Function",       "NONE", "NONE", "NONE")
call s:higui("Identifier",     "NONE", "NONE", "NONE")
call s:higui("Ignore",         "NONE", "NONE", "NONE")
call s:higui("Keyword",        "NONE", "NONE", "NONE")
call s:higui("Label",          "NONE", "NONE", "NONE")
call s:higui("Number",         "NONE", "NONE", "NONE")
call s:higui("Operator",       "NONE", "NONE", "NONE")
call s:higui("PreCondit",      "NONE", "NONE", "bold")
call s:higui("Repeat",         "NONE", "NONE", "NONE")
call s:higui("SpecialChar",    "NONE", "NONE", "NONE")
call s:higui("SpecialComment", "NONE", "NONE", "NONE")
call s:higui("Special",        "NONE", "NONE", "NONE")
call s:higui("Statement",      "NONE", "NONE", "NONE")
call s:higui("StorageClass",   "NONE", "NONE", "NONE")
call s:higui("String",         "NONE", "NONE", "NONE")
call s:higui("Structure",      "NONE", "NONE", "NONE")
call s:higui("Tag",            "NONE", "NONE", "NONE")
call s:higui("Title",          "NONE", "NONE", "NONE")
call s:higui("Typedef",        "NONE", "NONE", "NONE")
call s:higui("Type",           "NONE", "NONE", "NONE")
call s:higui("Underlined",     "NONE", "NONE", "NONE")

" Helper Functions
function! NofrilsFocusComments()
    call s:higui("Comment",   s:guifaded, "NONE", "NONE")
    call s:higui("Normal",    s:guiforeg, "#EEEEEE", "NONE")
    call s:higui("LineNr",    s:guifaded, "NONE", "NONE")
    call s:higui("Character", "NONE", "NONE", "NONE")
    call s:higui("String",    "NONE", "NONE", "NONE")

    if g:nofrils_heavycomments
        call s:higui("Comment", "#870040", "NONE", "NONE")
    end
endfunction

function! NofrilsFocusCode()
    call s:higui("Comment", s:guifaded, "NONE", "NONE")
    call s:higui("Normal", s:guiforeg, "#EEEEEE", "NONE")
    call s:higui("LineNr", s:guifaded, "NONE", "NONE")
    call s:higui("Character", "NONE", "NONE", "NONE")
    call s:higui("String", "NONE", "NONE", "NONE")

    if g:nofrils_strbackgrounds
        call s:higui("Character", "NONE", s:guigrey2, "NONE")
        call s:higui("String", "NONE", s:guigrey2, "NONE")
    end
endfunction

function! NofrilsNormal()
    call s:higui("Comment", s:guifaded, "NONE", "NONE")
    call s:higui("Normal", s:guiforeg, s:guibackg, "NONE")
    call s:higui("LineNr", s:guifaded, "NONE", "NONE")
    call s:higui("Character", "NONE", "NONE", "NONE")
    call s:higui("String", "NONE", "NONE", "NONE")

    " Optional Syntax Features
    if g:nofrils_strbackgrounds
        call s:higui("Character", "NONE", s:guigrey2, "NONE")
        call s:higui("String", "NONE", s:guigrey2, "NONE")
    end
    if g:nofrils_heavycomments
        call s:higui("Comment", s:guibrite, "NONE", "NONE")
    end
    if g:nofrils_heavylinenumbers
        call s:higui("LineNr", s:guibrite, "NONE", "NONE")
    end
endfunction

" Command mappings
command! NofrilsDark :colo nofrils-dark
command! NofrilsLight :colo nofrils-light
command! NofrilsSepia :colo nofrils-sepia
command! NofrilsAcme :colo nofrils-acme
command! NofrilsFocusNormal :call NofrilsNormal()
command! NofrilsFocusCode :call NofrilsFocusCode()
command! NofrilsFocusComments :call NofrilsFocusComments()

" Setup normal settings
call NofrilsNormal()

"let s:guigrey2="#DADAE5"
"let s:guialert="#00FFFF"
"let s:guishade="#5F005F"
