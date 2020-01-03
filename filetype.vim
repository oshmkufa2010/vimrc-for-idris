" 用于识别vim自带filetype不能识别的文件类型（比如idris和agda的源文件类型）
" 请放在~/.vim/下
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.idr setfiletype idris
  au! BufRead,BufNewFile *.lidr setfiletype idris
  au! BufNewFile,BufRead *.agda setf agda
augroup END
