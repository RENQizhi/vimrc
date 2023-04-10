" Fortran 77
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" Indentation
setlocal autoindent
setlocal smartindent
setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=4

" Syntax highlighting
if version >= 600
  if exists("b:current_syntax")
    finish
  endif
  let b:current_syntax = "fortran"
  syntax clear

  " Keywords
  syn keyword fortran77Statement !   stop      endif     continue
  syn keyword fortran77Statement blockdata common   data      dimension 
  syn keyword fortran77Statement do  enddo    else      if
  syn keyword fortran77Statement endif    function goto      if
  syn keyword fortran77Statement implicit include  integer
  syn keyword fortran77Statement logical  parameter pause     print
  syn keyword fortran77Statement program  read     return    write

  " Constants
  syn keyword fortran77Constant true false

  " Functions
  syn keyword fortran77Function abs acos aimag aint amax0 amax1 amin0 amin1
  syn keyword fortran77Function anint asin atan atan2 cmplx cos cosh dble
  syn keyword fortran77Function dim dreal exp float iabs idim idint idnint
  syn keyword fortran77Function iifix inint int iand ibclr ibits ibset ieor
  syn keyword fortran77Function ichar idate ifix ifloat imag index inqbit
  syn keyword fortran77Function ishft ishftc kind lge lgt lle llt log
  syn keyword fortran77Function log10 matmul max min mod nint real sign
  syn keyword fortran77Function sin sinh sqrt tan tanh

  " Types
  syn keyword fortran77Type integer real double precision complex logical
  syn keyword fortran77Type character

  " Comments
  syn match fortran77Comment "!.*$" contains=@fortran77String

  " Strings
  syn match fortran77String /'\([^'\n]\|''\)\+'/ contains=@fortran77Special
  syn match fortran77String /"\([^"\n]\|""\)\+"/ contains=@fortran77Special
  syn match fortran77Special /''/ contained
  syn match fortran77Special /""/ contained

  " Numbers
  syn match fortran77Number /\(\d\+\(\.\d\+\)\?\|\.\d\+\)\([ed][+-]\=\d\+\)\?/ contains=@fortran77Special

  " Operators
  syn match fortran77Operator /[\+\-\*\/\=\>\<\!\&\|\~\^]/ contains=@fortran77Special

  " Error
  syn match fortran77Error /\%([lL]\|[cC]\|[iI]\|[jJ]\)\=\d\+/
  syn match fortran77Error /\\\%[^\n]*/

  hi def link fortran77Comment Comment
  hi def link fortran77String String
  hi def link fortran77Special Special
  hi def link fortran77Number Number
  hi def link fortran77Operator Operator
endif


