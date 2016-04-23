vim-files
=========
Vim abbreviations and placeholders for fast and smooth editing!

![switch-test-js](https://cloud.githubusercontent.com/assets/376921/14764217/7c4ff740-09b0-11e6-96bf-339458171517.gif)
![list-compr-py](https://cloud.githubusercontent.com/assets/376921/14764219/81368800-09b0-11e6-9487-a6990ae6eea1.gif)

The unicode [triple dot](http://www.fileformat.info/info/unicode/char/2026/index.htm) is used as a placeholder since it's compact and probably wont ever conflict with your code when jumping. To jump between these in insert mode using `ctrl+j` set the following remap (this 

    inoremap <C-J> <ESC>/…<cr>s
    
Abbreviations are per filetype (see `ftplugin/`). Pull requests are welcome!
