## vim-files

Vim abbreviations and placeholders for fast and smooth editing!

![switch-test-js](https://cloud.githubusercontent.com/assets/376921/14764217/7c4ff740-09b0-11e6-96bf-339458171517.gif)
![list-compr-py](https://cloud.githubusercontent.com/assets/376921/14764219/81368800-09b0-11e6-9487-a6990ae6eea1.gif)

The unicode [triple dot](http://www.fileformat.info/info/unicode/char/2026/index.htm) is used as a placeholder since it's compact and probably wont ever conflict with your code when jumping.

### Setup
Enable the filetype abbreviations by putting the `ftplugin` directory in `$VIMHOME/after/`. To jump between placeholders in insert mode using `ctrl+j` set the following remap (this 

    inoremap <C-J> <ESC>/…<cr>s

### Usage
Start typing the following abbreviations in insert mode followed by space

#### Javascript
* `for(`
* `while(`
* `do{`
* `ìf(`
* `switch(`: Switch statement with one case and default
* More to come!

#### Python
* `[for]`: List comprehensions
* `(for)`: Generator expression
* `def`: Function/method with placeholder for arguments and body
* More to come!
