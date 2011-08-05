" Vim syntax file
" Language:     Freeewitch logs
" Author:       Michael Ricordeau <michael.ricordeau@gmail.com>
" Licence:      GPL (http://www.gnu.org)
" Remarks:      Vim 6 or greater

if exists("b:current_syntax")
  finish
endif

syn clear
syn sync fromstart
syn sync linebreaks=1

syn match fslogdebug /.* \[DEBUG\] .*/
syn match fsloginfo /.* \[INFO\] .*/
syn match fslognotice /.* \[NOTICE\] .*/
syn match fslogwarn /.* \[WARNING\] .*/
syn match fslogerror /.* \[ERROR\] .*/
syn match fslog /^[aA-zZ].*/

highlight FSLogInfo ctermfg=green guifg=green
highlight FSLogDebug ctermfg=yellow guifg=yellow
highlight FSLogNotice ctermfg=cyan guifg=cyan
highlight FSLogWarn ctermfg=5 guifg=purple
highlight FSLogError ctermfg=red guifg=red

highlight link fslogdebug FSLogDebug
highlight link fsloginfo FSLogInfo
highlight link fslognotice FSLogNotice
highlight link fslogwarn FSLogWarn
highlight link fslogerror FSLogError
highlight link fslog FSLogDebug
let b:current_syntax = "fslog"

" vim: wrap et sw=2 sts=2:
