" If file is not a C file quit early
if (&ft != 'c')
  finish
endif

" Code format style
set path=.,**
set tabstop=2 shiftwidth=2 softtabstop=2

" Shortcut key to bring up unit-test
map <S-t> :vsplit %:s?src?tests?:r_test.c<CR>

" Sane line joins
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif
