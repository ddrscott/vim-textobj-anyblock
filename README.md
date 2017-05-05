# Make Quotes, Parenthesis, Braces as the Same Text Object

[![Build Status](https://travis-ci.org/rhysd/vim-textobj-anyblock.png?branch=master)](https://travis-ci.org/rhysd/vim-textobj-anyblock)

This plugin make a text object mappings `i.` and `a.`.

- `i.` is a union of `i(`, `i{`, `i[`, `i'`, `i"` and `i<`.
- `a.` is a union of `a(`, `a{`, `a[`, `a'`, `a"` and `a<`.

`i.` and `a.` match all of them.

## Add the following to your $MYVIMRC
```vim
call textobj#user#plugin('anyblock', {
    \ '-' : {
    \      'select-a' : 'a.', '*select-a-function*' : 'textobj#anyblock#select_a',
    \      'select-i' : 'i.', '*select-i-function*' : 'textobj#anyblock#select_i',
    \   },
    \ })
```

This plugin depends on [vim-textobj-user](https://github.com/kana/vim-textobj-user).
Please install it in advance.

If you want to change the blocks which `i.` and `a.` match, define
`g:textobj#anyblock#blocks`.  For example, if you install
[vim-textobj-between](https://github.com/thinca/vim-textobj-between) and want to
match `` `...` ``, set ``[ '(', '{', '[', '"', "'", '<' , 'f`']`` to it.

If you want to define buffer local blocks, set them to
`b:textobj_anyblock_buffer_local_blocks` as list of string.

### License

Copyright (c) 2013 rhysd [MIT License](http://opensource.org/licenses/MIT).
