execute pathogen#infect()
set number				" display line number
set nocompatible                        " vim defaults, not vi!
filetype on                             " automatic file type detection
set noexpandtab                         " use tabs, not spaces
set tabstop=8                           " tabstops of 8
set shiftwidth=8                        " indents of 8
set autoindent smartindent              " turn on auto/smart indenting
set smarttab                            " make <tab> and <backspace> smarter
set backspace=eol,start,indent          " allow backspacing over indent, eol, & start
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

"set tags=/mnt/Nachiket/gerrit-tree/mero/tags
"set tags=/mnt/Nachiket/incr_recov_rs/colibri/core/tags
"set tags=/mnt/Nachiket/m0_cookie_for_senderID/colibri/core/tags
"set tags=/mnt/Nachiket/cookie_for_senderID/mero/tags
"set tags=/mnt/Nachiket/dgio-robust/mero
set tabstop=8
set shiftwidth=8
set softtabstop=8
set cursorline
"set spell spelllang=en_gb
autocmd ColorScheme * highlight  CodingStyle ctermbg=darkgreen guibg=darkgreen
highlight CodingStyle ctermbg=darkgreen guibg=darkgreen
match CodingStyle /\s\+$\| \+\ze\t\|#include<\|#include"\|for(\|if(\|while(\|switch(\|){\|\,[a-z,A-Z]\|\s\+\,\|\s\+\;\|[a-z,A-Z,0-9][+]\|[a-z,A-Z,0-9][=]\|[=][a-z,A-Z,0-9]\|\%>80v\|[a-z,A-Z,0-9]s_tlist_[a-z,A-Z,0-9]\|[a-z,A-Z,0-9]s_tlink_[a-z,A-Z,0-9]\|[a-z,A-Z,0-9]_tlink_init([a-z], [a-z]);\n\t[a-z,A-Z]*_tlist_add\|{\n\t\t[a-z,0-9]\s=\s[a-z,0-9]\;\n\t}/

	"match CodingStyle /\s\+$\| \+\ze\t\|#include<\|#include"\|if(\|\,[a-z,A-Z]\|\s\+\,\|\s\+\;\|[a-z,A-Z][==\|<\|>]\|[==\|<\|>][a-z,A-Z]/
"match ExtraWhitespace /^\t*\zs \+/
	"match ExtraWhitespace /[^\t]\zs\t\+/
"autocmd ColorScheme * highlight  HashInclude ctermbg=darkgreen guibg=darkgreen
"highlight HashInclude ctermbg=darkgreen guibg=darkgreen
"match HashInclude /\#include\</
"set tags=/mnt/Nachiket/rpc/colibri/core/tags
"ab fd fd_tree
ab fd_tree_cur fd_tree_cursor
ab fd_tree_n fd_tree_node
ab _in      #include
""macors for confc file""
"macros for disks
let @j = '/disk0@u0j@u0j@u0j@u0j@u0j@u0j@u0j@u0j@u0j@u09k'
let @a = '10yy9jp'
let @b = 't:t)fv€kr0j'
let @c = 't)fxt)j0'
let @e = '10k'
let @d = '@a@b@c@b@c@b@c@b@c@b@c@e'
"macros for sdevs
let @f = 't:t)0j'
let @g = 't)f"t"0j'
let @h = '10yy9jp'
let @i = '@h@f@g@f@g@f@g@f@g@f@g10k'
"macro for adding sdev to a service
"let @j = 'yypt)f,;t)F(;'
let @k = 't:4t)4tk€kr€kr40j'
"let @l = '8yy7jp@k@c@k@c@k@c@k@c@k@c'
let @l = '8yy7jp'
let @m = '@l@k@c@k@c@k@c@k@c@k@c10k'
"Services
let @n = '/service1€kljjt:75j€kr€kr38@j€kd€kr€kl€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€ku€@7J€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kr€kri€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kbq€kb'
let @o = '/sdev0015@i'
let @p = '@u0j@u0j@u0j2@u'
"Rack
let @q = '/rack@p'
"Enclosure
let @r = '/enclosure@p'
let @s = '75'
let @u = 't)@s'
let @v = 't)@sf,;t)@s0j'
let @w = '2'
let @x = 't)2@wf,;t)2@w0j'
"let @y = '2yyjp@x@x@x2k0'
let @t = '/controller@u0j@u0jt:@s0j@uf,@u0j@uf,@u0j@u0j2@u03k'
let @z = '2yyjpt)22f,t)220jt)4f,;t)40jt)402k'
"Controller
let @y = '@t19@z'
