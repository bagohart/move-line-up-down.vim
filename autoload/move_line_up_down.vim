function! move_line_up_down#InsertBlankLineAbove()
    function! s:inner(...) closure abort
        echom "lol"
        execute 'put!=repeat(nr2char(10), v:count1)|silent '']+'
    endfunction
    let &opfunc=get(funcref('s:inner'), 'name')
    return 'g@l'
endfunction

function! move_line_up_down#InsertBlankLineBelow()
    function! s:inner(...) closure abort
        execute 'put =repeat(nr2char(10), v:count1)|silent ''[-'
    endfunction
    let &opfunc=get(funcref('s:inner'), 'name')
    return 'g@l'
endfunction

function! move_line_up_down#MoveLineUp()
    function! s:inner(...) closure abort
        " the count gets clobbered later, need to save it here!
        let cmd = 'move--' . v:count1
        let old_fdm = &foldmethod
        if old_fdm !=# 'manual'
            let &foldmethod = 'manual'
        endif
        normal! m`
        silent! execute cmd
        normal! ``
        if old_fdm !=# 'manual'
            let &foldmethod = old_fdm
        endif
    endfunction
    let &opfunc=get(funcref('s:inner'), 'name')
    return 'g@l'
endfunction

function! move_line_up_down#MoveLineDown()
    function! s:inner(...) closure abort
        " the count gets clobbered later, need to save it here!
        let cmd = 'move+' . v:count1
        let old_fdm = &foldmethod
        if old_fdm !=# 'manual'
            let &foldmethod = 'manual'
        endif
        normal! m`
        silent! execute cmd
        normal! ``
        if old_fdm !=# 'manual'
            let &foldmethod = old_fdm
        endif
    endfunction
    let &opfunc=get(funcref('s:inner'), 'name')
    return 'g@l'
endfunction
