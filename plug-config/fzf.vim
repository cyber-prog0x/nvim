
" fzf 
" let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }
" let g:fzf_colors = {                                                                                                                                                        
  " \ 'fg':      ['fg', 'fzf_fg'],                                                                                                                                            
  " \ 'hl':      ['fg', 'fzf_hl'],                                                                                                                                            
  " \ 'fg+':     ['fg', 'fzf_fgp'],                                                                                                                                           
  " \ 'hl+':     ['fg', 'fzf_hlp'],                                                                                                                                           
  " \ 'info':    ['fg', 'fzf_info'],                                                                                                                                          
  " \ 'prompt':  ['fg', 'fzf_prompt'],                                                                                                                                        
  " \ 'pointer': ['fg', 'fzf_pointer'],                                                                                                                                       
  " \ 'spinner': ['fg', 'fzf_spinner'] }

" VERY IMPORTANT!!!! INSTALL FD FIRST
" brew install fd
function! OpenFloatingWin()
	let opts = {
				\ 'relative': 'editor',
				\ 'row': 1,
                                \ 'col': 71,
				\ 'width': 71,
				\ 'height': 37 / 2
				\ }
	let buf = nvim_create_buf(v:false, v:true)
	let win = nvim_open_win(buf, v:true, opts)

        call setwinvar(win, '&winhl', 'Normal:Chenfa')

	setlocal
				\ buftype=nofile
				\ nobuflisted
				\ bufhidden=hide
				\ nonumber
				\ norelativenumber
				\ signcolumn=no
endfunction

" 让输入上方，搜索列表在下方
let $FZF_DEFAULT_OPTS = '-i --layout=reverse --color=hl:50,hl+:200,info:88,fg+:0,bg+:150'
let $FZF_DEFAULT_COMMAND ='fd --type f --hidden --color=never -E .git'
" 打开 fzf 的方式选择 floating window
let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }


nmap <leader>fz :FZF<CR>
