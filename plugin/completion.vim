if exists('g:loaded_completion') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

if ! exists('g:completion_enable_snippet')
    let g:completion_enable_snippet = v:null
endif

if ! exists('g:completion_disable_in_comment')
    let g:completion_enable_in_comment = 0
endif

if ! exists('g:completion_confirm_key')
    let g:completion_confirm_key = "\<CR>"
endif

if ! exists('g:completion_enable_auto_hover')
    let g:completion_enable_auto_hover = 1
endif

if ! exists('g:completion_enable_auto_signature')
    let g:completion_enable_auto_signature = 1
endif

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_completion = 1
