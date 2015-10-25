" Vim color file
" Maintainer: Jeff Lanzarotta <frizbeefanatic@yahoo.com>
" Last Change: 2001 May 7

" First remove all existing highlighting.
hi clear

let colors_name = "lanzarotta"

" set background=dark

hi Boolean      guifg=Yellow
hi Character    guifg=Salmon
hi Comment      guifg=LightBlue
hi Conditional  guifg=LightYellow
hi Constant     guifg=AquaMarine
hi Cursor       guifg=bg guibg=DarkGoldenrod1
hi DiffAdd      term=bold ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange   term=bold ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete   term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText     term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Directory    guifg=Cyan
hi Error        guifg=White guibg=Red
hi ErrorMsg     guifg=Black	guibg=Red
hi Exception    guifg=Red
hi Float        guifg=LightMagenta
hi FoldColumn   term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi Folded       term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi Function     guifg=GoldenRod
hi Identifier   guifg=Cyan
hi Ignore       guifg=bg
hi IncSearch    term=Reverse cterm=Reverse guifg=Yellow guibg=Black
hi Keyword      guifg=Salmon
hi Label        guifg=LightYellow
hi LineNr       guifg=DarkGrey
hi Macro        guifg=AquaMarine
hi ModeMsg      gui=bold
hi MoreMsg      gui=bold guifg=SeaGreen
hi NonText      guifg=DarkGrey
hi Normal       ctermfg=White ctermbg=Black guifg=LightCyan guibg=Black
hi Number       guifg=LightMagenta
hi Operator     guifg=LightGray
hi Preproc      guifg=Orange
hi Question     gui=bold guifg=Cyan
hi Repeat       guifg=LightYellow
hi Search       guibg=Blue
hi Special      guifg=White
"hi SpecialKey   guifg=SlateBlue
hi SpecialKey   guifg=LightYellow
hi Statement    gui=None guifg=LightYellow
hi StatusLine   guifg=OrangeRed3 guibg=White
hi StatusLineNC guifg=#333333 guibg=White
hi String       guifg=Salmon
hi Title        guifg=DarkGrey
hi Todo         guifg=Blue guibg=Yellow
hi Type         gui=None guifg=LightGreen
hi VertSplit    term=reverse cterm=reverse gui=reverse
hi Visual       term=Reverse cterm=Reverse gui=none guifg=Black guibg=White
hi VisualNOS    term=underline,bold cterm=underline,bold gui=underline,bold
hi WarningMsg   guifg=Red
hi WildMenu     guifg=Black guibg=Yellow

" vim: sw=8
