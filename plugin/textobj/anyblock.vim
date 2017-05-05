if exists('g:loaded_textobj_anyblock')
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

" no default bindings

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_textobj_anyblock = 1
