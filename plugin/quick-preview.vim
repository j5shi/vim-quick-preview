if exists("g:vim_quick_preview_loaded") || !has("quickfix")
    finish
endif

if has('win32')
    let g:vim_quick_preview_path_sep = "\\"
else
    let g:vim_quick_preview_path_sep = "/"
endif

if !exists("g:vim_quick_preview_default_keymaps")
    let g:vim_quick_preview_default_keymaps = 1
endif

if g:vim_quick_preview_default_keymaps == 1
    nnoremap <leader>q :call VimQicPrevQuit()<CR>
endif

function! VimQicPrevQuit()
    lclose
    cclose
    pclose
endfunction

highlight VimQuickPreview ctermbg=darkgray ctermfg=yellow cterm=italic guibg=darkgray guifg=yellow 

let g:vim_quick_preview_loaded = 1

