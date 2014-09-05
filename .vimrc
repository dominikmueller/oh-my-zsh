set expandtab " convert tabs to spaces
set tabstop=2 " a tab is four spaces
set history=100 " remember more commands and search history
set undolevels=100 " use many muchos levels of undo
syntax on
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
