" Reload guard {{{
if &compatible || exists("g:loaded_move_line_up_down")
    finish
endif
let g:loaded_move_line_up_down = 1
" }}}

" force reload autoloading hack {{{
" call move_line_up_down#Baaad()
" }}}

" Plug mappings {{{
nnoremap <silent><expr> <Plug>(move-line-up) move_line_up_down#MoveLineUp()
nnoremap <silent><expr> <Plug>(move-line-down) move_line_up_down#MoveLineDown()
nnoremap <silent><expr> <Plug>(insert-blank-line-above) move_line_up_down#InsertBlankLineAbove()
nnoremap <silent><expr> <Plug>(insert-blank-line-below) move_line_up_down#InsertBlankLineBelow()
" }}}

" suggested mappings {{{
" nmap [e <Plug>(move-line-up)
" nmap ]e <Plug>(move-line-down)
" nmap [<Space> <Plug>(insert-blank-line-above)
" nmap ]<Space> <Plug>(insert-blank-line-below)
" }}}
