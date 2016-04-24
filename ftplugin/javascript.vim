let s:tablength = 2

setl autoindent
setl expandtab
setl cindent
let &tabstop = s:tablength
let &shiftwidth = s:tablength
let &softtabstop = s:tablength

" Short hand (Eatchar must exist, see ":helpgrep Eatchar")
" Use of <C-O> is to avoid flashing when switching between modes
iabbr for( for (●) {<cr>…<cr>}<C-O>?●<cr><del><C-R>=Eatchar('\s')<CR>
iabbr while( while (●) {<cr>…<cr>}<C-O>?●<cr><del><C-R>=Eatchar('\s')<CR>
iabbr if( if (●) {<cr>…<cr>}<C-O>?●<cr><del><C-R>=Eatchar('\s')<CR>
iabbr switch( switch (●) {<cr>case …: …<cr>default: …<cr>}<C-O>?●<cr><del><C-R>=Eatchar('\s')<CR>
iabbr do{ do {<cr>●<cr>} while (…)<C-O>?●<cr><del><C-R>=Eatchar('\s')<CR>

" Syntastic, detect and use eslint
let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']
