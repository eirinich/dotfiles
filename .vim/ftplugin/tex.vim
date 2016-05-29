setlocal spell!
setlocal spelllang=el,en
set spellsuggest=best,3

" Saves file before executing make.
set autowrite

noremap <F5> :silent make view<CR>
