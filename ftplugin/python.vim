let python_highlight_all = 1
let s:tablength = 4

fun! DocstringFold()
    let line = getline(v:foldstart)
    let lines = (v:foldend - v:foldstart) + 1  " Count lines in fold
    let finfo = '+Doc (' . lines . '): '
    return substitute(line, '"""', finfo, 'g')
endfun

fun! ToggleFold()
    echo ""
    if foldlevel('.') == 0
        normal! l
    else
        if foldclosed('.') < 0
            . foldclose
        else
            . foldopen
        endif
    endif
endfun

nmap <SPACE> :call ToggleFold()<CR>
nmap <C-D> Oimport ipdb; ipdb.set_trace()<ESC>
" Preserve indentation when typing # as first character on line, see :he 'si
inoremap # X#
" Map ctrl-space in insert mode to omni completion
inoremap <Nul> <C-X><C-O>


" -------------------- Abbreviations ----------------------
iab #!p #!/usr/bin/env python


setl expandtab
let &softtabstop = s:tablength
let &tabstop = s:tablength
let &shiftwidth = s:tablength
let &softtabstop = s:tablength
setl keywordprg=pydoc   " Run pydoc on name under cursor (command: K)
setl fo+=ro
setl foldtext=DocstringFold()
setl foldmethod=syntax
setl foldcolumn=1
setl cursorline
setl fillchars=fold:\ 
setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
"hi Folded term=standout ctermfg=5 ctermbg=0
"hi FoldColumn term=standout ctermfg=5 ctermbg=0
hi TrailingWhitespace ctermbg=magenta guibg=magenta  " Highlight trailing spaces
match TrailingWhitespace /\s\+$/
"
"setl textwidth=79   " Hardcore PEP8

" Short hand (Eatchar must exist, see ":helpgrep Eatchar")
iabbrev def def ●(…):<cr>…<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
iabbrev [for] [● for … in …]<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
iabbrev (for) (● for … in …)<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
