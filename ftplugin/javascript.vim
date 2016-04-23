let s:tablength = 2

setl autoindent
setl expandtab
setl cindent
let &tabstop = s:tablength
let &shiftwidth = s:tablength
let &softtabstop = s:tablength

" Short hand (Eatchar must exist, see ":helpgrep Eatchar")
iabbr for( for (●) {<cr>…<cr>}<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
iabbr while( while (●) {<cr>…<cr>}<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
iabbr if( if (●) {<cr>…<cr>}<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
iabbr switch( switch (●) {<cr>case …: …<cr>break<cr>default:<cr>}<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
iabbr do{ do {<cr>●<cr>} while (…)<esc>:call search('●', 'b')<cr>s<C-R>=Eatchar('\s')<CR>
