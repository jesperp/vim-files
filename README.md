## vim-files

Vim abbreviations and placeholders for fast and smooth editing!

![js-switch](https://cloud.githubusercontent.com/assets/376921/14764651/437c294c-09c0-11e6-90c3-6ce717cf176b.gif)
![py-list-compr](https://cloud.githubusercontent.com/assets/376921/14764672/55db5792-09c1-11e6-81fd-82b2d8f90cec.gif)

The unicode [triple dot](http://www.fileformat.info/info/unicode/char/2026/index.htm) is used as a placeholder since it's compact and probably wont ever conflict with your code when jumping.

### Setup
Enable the filetype abbreviations by putting the `ftplugin` directory in `$VIMHOME/after/`. To jump between placeholders in insert mode using `ctrl+j` set the following remap (this 

    inoremap <C-J> <C-O>/…<cr><C-O>x

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
