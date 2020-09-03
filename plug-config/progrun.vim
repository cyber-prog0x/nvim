
" Create a function to open a neovim terminal in a small split window and run python 
function! Termpy()
  exec winheight(0)/4."split" | terminal python3 %
endfunction

" Press CTRL+R to run python script into separate term window 
nnoremap <C-R> :call Termpy() <CR>
