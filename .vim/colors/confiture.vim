if !has('gui_running')
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-flat.".&background.".sh"
  endif
endif

" Terminal color definitions
let s:cterm00 = "00"
let s:cterm01 = "01"
let s:cterm02 = "02"
let s:cterm03 = "03"
let s:cterm04 = "04"
let s:cterm05 = "05"
let s:cterm06 = "06"
let s:cterm07 = "07"
let s:cterm08 = "08"
let s:cterm09 = "09"
let s:cterm10 = "00"
let s:cterm11 = "11"
let s:cterm12 = "12"
let s:cterm13 = "13"
let s:cterm14 = "14"
let s:cterm15 = "15"

" GUI color definitions
let s:gui00 = "202D3A"
let s:gui01 = "E74C3C"
let s:gui02 = "2ECC71"
let s:gui03 = "F1C40F"
let s:gui04 = "03A9F4"
let s:gui05 = "9B59B6"
let s:gui06 = "FFC107"
let s:gui07 = "E0E0E0"
let s:gui08 = "293A4A"
let s:gui09 = "E53935"
let s:gui10 = "4CAF50"
let s:gui11 = "FFC107"
let s:gui12 = "1976D2"
let s:gui13 = "E91E63"
let s:gui14 = "81D4FA"
let s:gui15 = "3B546B"

" Theme setup
hi clear
syntax reset
let g:colors_name = "flat"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" vim editor colors
call <sid>hi("bold",          "", "", "", "", "bold")
call <sid>hi("debug",         s:gui01, "", s:cterm01, "", "")
call <sid>hi("directory",     s:gui04, "", s:cterm04, "", "")
call <sid>hi("errormsg",      s:gui01, s:gui00, s:cterm01, s:cterm00, "")
call <sid>hi("exception",     s:gui01, "", s:cterm01, "", "")
call <sid>hi("foldcolumn",    "", s:gui10, "", s:cterm10, "")
call <sid>hi("folded",        s:gui08, s:gui10, s:cterm08, s:cterm10, "")
call <sid>hi("incsearch",     s:gui10, s:gui01, s:cterm10, s:cterm01, "none")
call <sid>hi("italic",        "", "", "", "", "none")
call <sid>hi("macro",         s:gui01, "", s:cterm01, "", "")
call <sid>hi("matchparen",    s:gui00, s:gui08, s:cterm00, s:cterm08,  "")
call <sid>hi("modemsg",       s:gui02, "", s:cterm15, "", "")
call <sid>hi("moremsg",       s:gui02, "", s:cterm02, "", "")
call <sid>hi("question",      s:gui04, "", s:cterm04, "", "")
call <sid>hi("search",        s:gui08, s:gui11, s:cterm08, s:cterm11,  "")
call <sid>hi("specialkey",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("toolong",       s:gui01, "", s:cterm01, "", "")
call <sid>hi("underlined",    s:gui01, "", s:cterm01, "", "")
call <sid>hi("visual",        "", s:gui08, "", s:cterm08, "")
call <sid>hi("visualnos",     s:gui01, "", s:cterm01, "", "")
call <sid>hi("warningmsg",    s:gui01, "", s:cterm01, "", "")
call <sid>hi("wildmenu",      s:gui01, "", s:cterm01, "", "")
call <sid>hi("title",         s:gui04, "", s:cterm04, "", "none")
call <sid>hi("cursor",        s:gui00, s:gui07, s:cterm00, s:cterm07, "")
call <sid>hi("nontext",       s:gui08, "", s:cterm08, "", "")
call <sid>hi("normal",        s:gui07, s:gui00, s:cterm07, s:cterm00, "")
call <sid>hi("linenr",        s:gui15, s:gui00, s:cterm15, s:cterm00, "")
call <sid>hi("signcolumn",    s:gui08, s:gui10, s:cterm08, s:cterm10, "")
call <sid>hi("specialkey",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("statusline",    s:gui12, s:gui11, s:cterm12, s:cterm11, "none")
call <sid>hi("statuslinenc",  s:gui08, s:gui10, s:cterm08, s:cterm10, "none")
call <sid>hi("vertsplit",     s:gui11, s:gui11, s:cterm11, s:cterm11, "none")
call <sid>hi("colorcolumn",   "", s:gui10, "", s:cterm10, "none")
call <sid>hi("cursorcolumn",  "", s:gui10, "", s:cterm10, "none")
call <sid>hi("cursorline",    "", s:gui10, "", s:cterm08, "none")
call <sid>hi("cursorlinenr",  s:gui15, s:gui08, s:cterm15, s:cterm08, "")
call <sid>hi("pmenu",         s:gui12, s:gui10, s:cterm12, s:cterm10, "none")
call <sid>hi("pmenusel",      s:gui10, s:gui12, s:cterm10, s:cterm12, "")
call <sid>hi("tabline",       s:gui08, s:gui10, s:cterm08, s:cterm10, "none")
call <sid>hi("tablinefill",   s:gui08, s:gui10, s:cterm08, s:cterm10, "none")
call <sid>hi("tablinesel",    s:gui02, s:gui10, s:cterm02, s:cterm10, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui09, "", s:cterm09, "", "")
call <sid>hi("Character",    s:gui01, "", s:cterm01, "", "")
call <sid>hi("Comment",      s:gui08, "", s:cterm08, "", "")
call <sid>hi("Conditional",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("Constant",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("Define",       s:gui05, "", s:cterm05, "", "none")
call <sid>hi("Delimiter",    s:gui14, "", s:cterm14, "", "")
call <sid>hi("Float",        s:gui09, "", s:cterm09, "", "")
call <sid>hi("Function",     s:gui04, "", s:cterm04, "", "")
call <sid>hi("Identifier",   s:gui01, "", s:cterm01, "", "none")
call <sid>hi("Include",      s:gui04, "", s:cterm04, "", "")
call <sid>hi("Keyword",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("Label",        s:gui03, "", s:cterm03, "", "")
call <sid>hi("Number",       s:gui09, "", s:cterm09, "", "")
call <sid>hi("Operator",     s:gui07, "", s:cterm07, "", "none")
call <sid>hi("PreProc",      s:gui03, "", s:cterm03, "", "")
call <sid>hi("Repeat",       s:gui03, "", s:cterm03, "", "")
call <sid>hi("Special",      s:gui06, "", s:cterm06, "", "")
call <sid>hi("SpecialChar",  s:gui14, "", s:cterm14, "", "")
call <sid>hi("Statement",    s:gui01, "", s:cterm01, "", "")
call <sid>hi("StorageClass", s:gui03, "", s:cterm03, "", "")
call <sid>hi("String",       s:gui02, "", s:cterm02, "", "")
call <sid>hi("Structure",    s:gui05, "", s:cterm05, "", "")
call <sid>hi("Tag",          s:gui03, "", s:cterm03, "", "")
call <sid>hi("Todo",         s:gui03, s:gui10, s:cterm03, s:cterm10, "")
call <sid>hi("Type",         s:gui03, "", s:cterm03, "", "none")
call <sid>hi("Typedef",      s:gui03, "", s:cterm03, "", "")

" C highlighting
call <sid>hi("cOperator",   s:gui06, "", s:cterm06, "", "")
call <sid>hi("cPreCondit",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("cType",       s:gui11, "", s:cterm11, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui07, "", s:cterm07, "", "")
call <sid>hi("cssClassName",   s:gui05, "", s:cterm05, "", "")
call <sid>hi("cssColor",       s:gui06, "", s:cterm06, "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:gui02, s:gui10,  s:cterm02, s:cterm10, "")
call <sid>hi("DiffChange",   s:gui08, s:gui10,  s:cterm08, s:cterm10, "")
call <sid>hi("DiffDelete",   s:gui01, s:gui10,  s:cterm01, s:cterm10, "")
call <sid>hi("DiffText",     s:gui04, s:gui10,  s:cterm04, s:cterm10, "")
call <sid>hi("DiffAdded",    s:gui02, s:gui00,  s:cterm02, s:cterm00, "")
call <sid>hi("DiffFile",     s:gui01, s:gui00,  s:cterm01, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:gui02, s:gui00,  s:cterm02, s:cterm00, "")
call <sid>hi("DiffLine",     s:gui04, s:gui00,  s:cterm04, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:gui01, s:gui00,  s:cterm01, s:cterm00, "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui01, "", s:cterm01, "", "")
call <sid>hi("gitCommitSummary",   s:gui02, "", s:cterm02, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui02, s:gui10, s:cterm02, s:cterm10, "")
call <sid>hi("GitGutterChange",  s:gui04, s:gui10, s:cterm04, s:cterm10, "")
call <sid>hi("GitGutterDelete",  s:gui01, s:gui10, s:cterm01, s:cterm10, "")
call <sid>hi("GitGutterChangeDelete",  s:gui05, s:gui10, s:cterm05, s:cterm10, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui03, "", s:cterm03, "", "")
call <sid>hi("htmlItalic",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("htmlEndTag",  s:gui07, "", s:cterm07, "", "")
call <sid>hi("htmlTag",     s:gui07, "", s:cterm07, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui07, "", s:cterm07, "", "")
call <sid>hi("javaScriptBraces",  s:gui07, "", s:cterm07, "", "")
call <sid>hi("javaScriptNumber",  s:gui09, "", s:cterm09, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui02, "", s:cterm02, "", "")
call <sid>hi("markdownError",             s:gui07, s:gui00, s:cterm07, s:cterm00, "")
call <sid>hi("markdownCodeBlock",         s:gui02, "", s:cterm02, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui04, "", s:cterm04, "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui04, "", s:cterm04, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui07, "", s:cterm07, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui07, "", s:cterm07, "", "")
call <sid>hi("phpComparison",      s:gui07, "", s:cterm07, "", "")
call <sid>hi("phpParent",          s:gui07, "", s:cterm07, "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("pythonRepeat",    s:gui05, "", s:cterm05, "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui04, "", s:cterm04, "", "")
call <sid>hi("rubyConstant",                s:gui03, "", s:cterm03, "", "")
call <sid>hi("rubyInterpolation",           s:gui02, "", s:cterm02, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui14, "", s:cterm14, "", "")
call <sid>hi("rubyRegexp",                  s:gui06, "", s:cterm06, "", "")
call <sid>hi("rubySymbol",                  s:gui02, "", s:cterm02, "", "")
call <sid>hi("rubyStringDelimiter",         s:gui02, "", s:cterm02, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui01, "", s:cterm01, "", "")
call <sid>hi("sassClassChar",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("sassInclude",    s:gui05, "", s:cterm05, "", "")
call <sid>hi("sassMixing",     s:gui05, "", s:cterm05, "", "")
call <sid>hi("sassMixinName",  s:gui04, "", s:cterm04, "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui02, s:gui10, s:cterm02, s:cterm10, "")
call <sid>hi("SignifySignChange",  s:gui04, s:gui10, s:cterm04, s:cterm10, "")
call <sid>hi("SignifySignDelete",  s:gui01, s:gui10, s:cterm01, s:cterm10, "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:gui00, "", s:cterm00, "undercurl")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui10 s:gui11 s:gui08  s:gui12  s:gui07  s:gui13  s:gui15  s:gui01  s:gui09 s:gui03  s:gui02  s:gui06  s:gui04  s:gui05  s:gui14
unlet s:cterm00 s:cterm10 s:cterm11 s:cterm08 s:cterm12 s:cterm07 s:cterm13 s:cterm15 s:cterm01 s:cterm09 s:cterm03 s:cterm02 s:cterm06 s:cterm04 s:cterm05 s:cterm14
