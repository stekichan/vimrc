set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

set runtimepath+=~/.vim
runtime autoload/autoload/pathogen.vim
execute pathogen#infect()
filetype off
set number				" display line number
set nocompatible                        " vim defaults, not vi!
filetype on                             " automatic file type detection
set noexpandtab                         " use tabs, not spaces
set tabstop=8                           " tabstops of 8
set shiftwidth=8                        " indents of 8
set autoindent smartindent              " turn on auto/smart indenting
set smarttab                            " make <tab> and <backspace> smarter
set backspace=eol,start,indent          " allow backspacing over indent, eol, & start
"set list lcs=tab:\.\                    " shows tabs in the beginning of a line"
filetype plugin indent on
nmap <C-J> vip=                         " forces (re)indentation of a block of code
syntax on				" enable syntax highlighting
nmap <F7> : tabp<CR>
nmap <F8> : tabn<CR>

" highligh kernel types
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t 
syn keyword cType int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
syn keyword cOperator likely unlikely
syn match ErrorLeadSpace /^ \+/         " highlight any leading spaces
syn match ErrorTailSpace /\s\+$/         " highlight any trailing spaces
"syn match Error80        /\%>80v.\+/    " highlight anything past 80 in red
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
set cinoptions=:0,l1,t0,g0		" handle C indention
let $kernel_version=system('uname -r | tr -d "\n"')

set hlsearch
set incsearch

set tabstop=8
set shiftwidth=8
set softtabstop=8
"" marks the current line of cursor.
set cursorline
set spell spelllang=en_gb
"autocmd ColorScheme * highlight  CodingStyle ctermbg=darkgreen guibg=darkgreen
highlight CodingStyle ctermbg=grey guibg=darkgreen
" coding style
" 1.pre-increment of counter.
" 2. whitespace after #include and <
" 3. whitespace after loop/conditional block constructs eg. while () and not
" while()
" 4. whitespace before and after = sign.
" 5. Code shall not cross 80 column limit.
" 6. A highlighter for accidental termination of 'if' block. eg. 
" if (condition);
"	do_something();
"This is not foool-proof and might give false positive on style violation.
match CodingStyle /\s\+$\| \+\ze\t\|#include<\|#include"\|for(\|if(\|while(\|switch(\|){\|\,[a-z,A-Z]\|\s\+\,\|\s\+\;\|[a-z,A-Z,0-9][+]\|[a-z,A-Z,0-9][=]\|[=][a-z,A-Z,0-9]\|\%>80v\|[a-z,A-Z,0-9]s_tlist_[a-z,A-Z,0-9]\|[a-z,A-Z,0-9]s_tlink_[a-z,A-Z,0-9]\|[a-z,A-Z,0-9]_tlink_init([a-z], [a-z]);\n\t[a-z,A-Z]*_tlist_add\|{\n\t\t[a-z,0-9]\s=\s[a-z,0-9]\;\n\t}\|if\s\+(.*)\;/

	"match CodingStyle /\s\+$\| \+\ze\t\|#include<\|#include"\|if(\|\,[a-z,A-Z]\|\s\+\,\|\s\+\;\|[a-z,A-Z][==\|<\|>]\|[==\|<\|>][a-z,A-Z]/
"match ExtraWhitespace /^\t*\zs \+/
	"match ExtraWhitespace /[^\t]\zs\t\+/
"autocmd ColorScheme * highlight  HashInclude ctermbg=darkgreen guibg=darkgreen
"highlight HashInclude ctermbg=darkgreen guibg=darkgreen
"match HashInclude /\#include\</
"set tags=/mnt/Nachiket/rpc/colibri/core/tags
"ab fd fd_tree
ab #i #include

" Various default register values
let s='$a;'
