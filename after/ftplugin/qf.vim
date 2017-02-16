function! VimQicPrevCurrentItem()
    let l:current_line_no = line('.')
    let l:entry = s:vim_quick_preview_qflist[l:current_line_no - 1]

    if l:entry.valid

        " Items in current working directory
        if stridx(bufname(l:entry.bufnr), "\\") == -1 && stridx(bufname(l:entry.bufnr), "/") == -1
            execute 'pedit! +'.l:entry.lnum.' '.getcwd().g:vim_quick_preview_path_sep.bufname(l:entry.bufnr)

        " Items not in current working directory
        else
            execute 'pedit! +'.l:entry.lnum.' '.bufname(l:entry.bufnr)
        endif

        if !&previewwindow

            " Jump to preview window
            wincmd P
            execute 'normal zz'
            execute 'match VimQuickPreview /\%'. l:entry.lnum .'l/'

            " Go back to quickfix window, assuming the quickfix window is right below the preview
            " window as the goddamn 'wincmd p' doesn't work for me for some reason I don't know.
            wincmd j

            exec "normal "l:current_line_no."G"
        endif
    endif
endfunction

function! VimQicPrevEnterSignalCB()
    pclose
endfunction

if g:vim_quick_preview_default_keymaps == 1
    nnoremap <silent> <buffer> <SPACE> :call VimQicPrevCurrentItem()<CR>
    nnoremap <silent> <buffer> <CR>    :call VimQicPrevEnterSignalCB()<CR><CR> \| :cclose<CR>
endif

" update quickfix list items everytime quickfix list get opened.
let s:vim_quick_preview_qflist = getqflist()
