vim-files
=========
Performance boosting abbreviations and helpers for programming

```
inoremap <C-J> <ESC>/…<cr>s
func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
```

asdf
