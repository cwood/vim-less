" Vim compiler file
" Compiler: Less
" Maintainer:   Colin Wood <Cwood006@gmail.com>
" Last Change: 2012 Sept 13
if exists('current_compiler'):
  finish
endif
let current_compiler = 'lessc'

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet errorformat&
CompilerSet makeprg=lessc

let &cpo = s:cpo_save
unlet s:cpo_save
" vim:set sw=2 sts=2:
