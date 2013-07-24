let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F1> <Nop>
map! <S-Insert> <MiddleMouse>
inoremap <silent> <F8> :call Tog_Spelling(1)i
inoremap <silent> <F7> :call Tog_Crosshairs(1)i
nnoremap <silent>  :nohlsearch
nnoremap  :shell
map ,T :!prove -Ilib/ -lv % | less
map ,t :!prove -Ilib/ -v %
nnoremap K <Nul>         " doncha just hate it when the CAPs key gets turned on by mistake?
vmap [% [%m'gv``
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
map \tt <Plug>AM_tt
map \tsq <Plug>AM_tsq
map \tsp <Plug>AM_tsp
map \tml <Plug>AM_tml
map \tab <Plug>AM_tab
map \m= <Plug>AM_m=
map \t@ <Plug>AM_t@
map \t~ <Plug>AM_t~
map \t? <Plug>AM_t?
map \w= <Plug>AM_w=
map \ts= <Plug>AM_ts=
map \ts< <Plug>AM_ts<
map \ts; <Plug>AM_ts;
map \ts: <Plug>AM_ts:
map \ts, <Plug>AM_ts,
map \t= <Plug>AM_t=
map \t< <Plug>AM_t<
map \t; <Plug>AM_t;
map \t: <Plug>AM_t:
map \t, <Plug>AM_t,
map \t# <Plug>AM_t#
map \t| <Plug>AM_t|
map \T~ <Plug>AM_T~
map \Tsp <Plug>AM_Tsp
map \Tab <Plug>AM_Tab
map \T@ <Plug>AM_T@
map \T? <Plug>AM_T?
map \T= <Plug>AM_T=
map \T< <Plug>AM_T<
map \T; <Plug>AM_T;
map \T: <Plug>AM_T:
map \Ts, <Plug>AM_Ts,
map \T, <Plug>AM_T,o
map \T# <Plug>AM_T#
map \T| <Plug>AM_T|
map \Htd <Plug>AM_Htd
map \anum <Plug>AM_aunum
map \aunum <Plug>AM_aenum
map \afnc <Plug>AM_afnc
map \adef <Plug>AM_adef
map \adec <Plug>AM_adec
map \ascom <Plug>AM_ascom
map \aocom <Plug>AM_aocom
map \adcom <Plug>AM_adcom
map \acom <Plug>AM_acom
map \abox <Plug>AM_abox
map \a( <Plug>AM_a(
map \a= <Plug>AM_a=
map \a< <Plug>AM_a<
map \a, <Plug>AM_a,
map \a? <Plug>AM_a?
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>20_WE <Plug>AlignMapsWrapperEnd
map <SNR>20_WS <Plug>AlignMapsWrapperStart
map <S-Insert> <MiddleMouse>
nnoremap <silent> <F8> :call Tog_Spelling(1)
nnoremap <silent> <F7> :call Tog_Crosshairs(1)
nnoremap <silent> <F3> :exec "normal a".nr2char(getchar())."\e"
nnoremap <silent> <F2> :exec "normal i".nr2char(getchar())."\e"
map <F1> <Nop>
iabbr dumper use Data::Dumper 'Dumper';debug Dumper ;hi
iabbr pdbg use Data::Dumper 'Dumper';warn Dumper [];hi
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set clipboard=unnamed
set comments=b:#,:%,fb:-,n:>,n:)
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set errorformat=%f:%l:%m
set expandtab
set fileencodings=ucs-bom,utf-8,latin1
set formatoptions=cqrt
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,a:blinkon0
set helplang=en
set hidden
set hlsearch
set imdisable
set incsearch
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,:
set iskeyword=@,48-57,_,192-255,:
set laststatus=2
set listchars=tab:»·,trail:·
set makeprg=perl\ -c\ %\ $*
set matchpairs=(:),{:},[:],<:>
set mouse=a
set pastetoggle=<F9>
set ruler
set runtimepath=~/.vim,~/.vim/bundle/vim-fugitive,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/after
set scrolloff=2
set shiftround
set shiftwidth=4
set shortmess=at
set showcmd
set showmatch
set smartindent
set smarttab
set splitbelow
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set tabstop=4
set termencoding=utf-8
set textwidth=75
set viminfo=%,'50,\"100,:100,n~/.viminfo
set visualbell
set whichwrap=<,>,h,l
set wildignore=.svn
set wildmenu
set wrapmargin=10
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/src/perl/CLI-Gwrap
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/src/perl/sudoku/.git/COMMIT_EDITMSG
badd +1 lib/CLI/Gwrap.pm
badd +1 lib/CLI/Gwrapper/wxGrid.pm
badd +1 lib/CLI/Gwrapper/Wx/App.pm
badd +118 lib/CLI/Gwrap/Opt.pm
badd +84 lib/CLI/Gwrapper.pm
args lib/CLI/Gwrap.pm
edit lib/CLI/Gwrap.pm
set splitbelow splitright
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
imap <buffer> <silent> <S-F1> :call Perl_perldoc()
imap <buffer> <silent> <S-F9> :call Perl_Arguments()
imap <buffer> <silent> <C-F9> :call Perl_Run()
imap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nmap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nmap <buffer> <silent> \ry :call Perl_Perltidy("n")
nmap <buffer> <silent> \rh :call Perl_Hardcopy("n")
vmap <buffer> <silent> \rh :call Perl_Hardcopy("v")
vmap <buffer> <silent> \ry :call Perl_Perltidy("v")
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
onoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
onoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
onoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
onoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
onoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
onoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
onoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
onoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
onoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
onoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
onoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
onoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
onoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
onoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
onoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
onoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
onoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
onoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
onoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
onoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
onoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
onoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
onoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
onoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
onoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
onoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
onoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
onoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
onoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
onoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
onoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
onoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
onoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
onoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
onoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
onoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
onoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
onoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
onoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
onoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
onoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
onoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
onoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
onoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
onoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
onoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
onoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
onoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
onoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
onoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
onoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
onoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
onoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
map <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
map <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
map <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
map <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call Perl_XtermSize()
map <buffer> <silent> \rk :call Perl_Settings()
omap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
map <buffer> <silent> \rpc :call Perl_Perlcritic()
omap <buffer> <silent> \ry :call Perl_Perltidy("n")
map <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
map <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> <silent> \rma :call Perl_MakeArguments()
noremap <buffer> <silent> \rmc :call Perl_MakeClean()
noremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
noremap <buffer> <silent> \rm :call Perl_Make()
noremap <buffer> <silent> \rw :call Perl_PerlSwitches()
noremap <buffer> <silent> \ra :call Perl_Arguments()
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "n" )j
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
vnoremap <buffer> <silent> \cl :call Perl_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()A
map <buffer> <silent> \hp :call Perl_HelpPerlsupport()
map <buffer> <silent> \h :call Perl_perldoc()
vnoremap <buffer> { s{}kp=iB
noremap <buffer> <silent> <F9> :call Perl_Debugger()
map <buffer> <silent> <S-F1> :call Perl_perldoc()
map <buffer> <silent> <S-F9> :call Perl_Arguments()
map <buffer> <silent> <C-F9> :call Perl_Run()
map <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
imap <buffer> <silent> <NL> =Perl_JumpCtrlJ()
imap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call Perl_XtermSize()
imap <buffer> <silent> \rk :call Perl_Settings()
imap <buffer> <silent> \rh :call Perl_Hardcopy("n")
imap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
imap <buffer> <silent> \rpc :call Perl_Perlcritic()
imap <buffer> <silent> \ry :call Perl_Perltidy("n")
imap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
imap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
inoremap <buffer> <silent> \rma :call Perl_MakeArguments()
inoremap <buffer> <silent> \rmc :call Perl_MakeClean()
inoremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
inoremap <buffer> <silent> \rm :call Perl_Make()
inoremap <buffer> <silent> \rw :call Perl_PerlSwitches()
inoremap <buffer> <silent> \ra :call Perl_Arguments()
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
imap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
imap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
inoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
inoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
inoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
inoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
inoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
inoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
inoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
inoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
inoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
inoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
inoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
inoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
inoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
inoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
inoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
inoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
inoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
inoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
inoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
inoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
inoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
inoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
inoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
inoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
inoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
inoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
inoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
inoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
inoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
inoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=~/my/vim/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/local/lib64/perl5,/usr/local/share/perl5,/usr/lib64/perl5/vendor_perl,/usr/share/perl5/vendor_perl,/usr/lib64/perl5,/usr/share/perl5,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=~/src/perl/CLI-Gwrap/.git/perl.tags,~/src/perl/CLI-Gwrap/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=10
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit lib/CLI/Gwrap/Opt.pm
set splitbelow splitright
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
imap <buffer> <silent> <S-F1> :call Perl_perldoc()
imap <buffer> <silent> <S-F9> :call Perl_Arguments()
imap <buffer> <silent> <C-F9> :call Perl_Run()
imap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nmap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
map <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
map <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
map <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
map <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call Perl_XtermSize()
map <buffer> <silent> \rk :call Perl_Settings()
vmap <buffer> <silent> \rh :call Perl_Hardcopy("v")
nmap <buffer> <silent> \rh :call Perl_Hardcopy("n")
omap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
map <buffer> <silent> \rpc :call Perl_Perlcritic()
vmap <buffer> <silent> \ry :call Perl_Perltidy("v")
nmap <buffer> <silent> \ry :call Perl_Perltidy("n")
omap <buffer> <silent> \ry :call Perl_Perltidy("n")
map <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
map <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> <silent> \rma :call Perl_MakeArguments()
noremap <buffer> <silent> \rmc :call Perl_MakeClean()
noremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
noremap <buffer> <silent> \rm :call Perl_Make()
noremap <buffer> <silent> \rw :call Perl_PerlSwitches()
noremap <buffer> <silent> \ra :call Perl_Arguments()
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "n" )j
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
vnoremap <buffer> <silent> \cl :call Perl_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()A
map <buffer> <silent> \hp :call Perl_HelpPerlsupport()
map <buffer> <silent> \h :call Perl_perldoc()
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
onoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
onoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
onoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
onoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
onoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
onoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
onoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
onoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
onoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
onoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
onoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
onoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
onoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
onoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
onoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
onoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
onoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
onoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
onoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
onoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
onoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
onoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
onoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
onoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
onoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
onoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
onoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
onoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
onoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
onoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
onoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
onoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
onoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
onoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
onoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
onoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
onoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
onoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
onoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
onoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
onoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
onoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
onoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
onoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
onoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
onoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
onoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
onoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
onoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
onoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
onoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
onoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
onoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
vnoremap <buffer> { s{}kp=iB
noremap <buffer> <silent> <F9> :call Perl_Debugger()
map <buffer> <silent> <S-F1> :call Perl_perldoc()
map <buffer> <silent> <S-F9> :call Perl_Arguments()
map <buffer> <silent> <C-F9> :call Perl_Run()
map <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
imap <buffer> <silent> <NL> =Perl_JumpCtrlJ()
imap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call Perl_XtermSize()
imap <buffer> <silent> \rk :call Perl_Settings()
imap <buffer> <silent> \rh :call Perl_Hardcopy("n")
imap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
imap <buffer> <silent> \rpc :call Perl_Perlcritic()
imap <buffer> <silent> \ry :call Perl_Perltidy("n")
imap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
imap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
inoremap <buffer> <silent> \rma :call Perl_MakeArguments()
inoremap <buffer> <silent> \rmc :call Perl_MakeClean()
inoremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
inoremap <buffer> <silent> \rm :call Perl_Make()
inoremap <buffer> <silent> \rw :call Perl_PerlSwitches()
inoremap <buffer> <silent> \ra :call Perl_Arguments()
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
imap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
imap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
inoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
inoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
inoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
inoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
inoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
inoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
inoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
inoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
inoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
inoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
inoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
inoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
inoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
inoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
inoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
inoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
inoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
inoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
inoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
inoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
inoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
inoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
inoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
inoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
inoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
inoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
inoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
inoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
inoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
inoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=~/my/vim/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/local/lib64/perl5,/usr/local/share/perl5,/usr/lib64/perl5/vendor_perl,/usr/share/perl5/vendor_perl,/usr/lib64/perl5,/usr/share/perl5,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=~/src/perl/CLI-Gwrap/.git/perl.tags,~/src/perl/CLI-Gwrap/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=10
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit lib/CLI/Gwrapper.pm
set splitbelow splitright
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
imap <buffer> <silent> <S-F1> :call Perl_perldoc()
imap <buffer> <silent> <S-F9> :call Perl_Arguments()
imap <buffer> <silent> <C-F9> :call Perl_Run()
imap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nmap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
map <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
map <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
map <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
map <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call Perl_XtermSize()
map <buffer> <silent> \rk :call Perl_Settings()
vmap <buffer> <silent> \rh :call Perl_Hardcopy("v")
nmap <buffer> <silent> \rh :call Perl_Hardcopy("n")
omap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
map <buffer> <silent> \rpc :call Perl_Perlcritic()
vmap <buffer> <silent> \ry :call Perl_Perltidy("v")
nmap <buffer> <silent> \ry :call Perl_Perltidy("n")
omap <buffer> <silent> \ry :call Perl_Perltidy("n")
map <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
map <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> <silent> \rma :call Perl_MakeArguments()
noremap <buffer> <silent> \rmc :call Perl_MakeClean()
noremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
noremap <buffer> <silent> \rm :call Perl_Make()
noremap <buffer> <silent> \rw :call Perl_PerlSwitches()
noremap <buffer> <silent> \ra :call Perl_Arguments()
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "n" )j
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
vnoremap <buffer> <silent> \cl :call Perl_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()A
map <buffer> <silent> \hp :call Perl_HelpPerlsupport()
map <buffer> <silent> \h :call Perl_perldoc()
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
onoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
onoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
onoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
onoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
onoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
onoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
onoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
onoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
onoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
onoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
onoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
onoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
onoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
onoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
onoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
onoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
onoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
onoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
onoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
onoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
onoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
onoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
onoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
onoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
onoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
onoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
onoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
onoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
onoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
onoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
onoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
onoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
onoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
onoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
onoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
onoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
onoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
onoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
onoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
onoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
onoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
onoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
onoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
onoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
onoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
onoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
onoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
onoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
onoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
onoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
onoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
onoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
onoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
vnoremap <buffer> { s{}kp=iB
noremap <buffer> <silent> <F9> :call Perl_Debugger()
map <buffer> <silent> <S-F1> :call Perl_perldoc()
map <buffer> <silent> <S-F9> :call Perl_Arguments()
map <buffer> <silent> <C-F9> :call Perl_Run()
map <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
imap <buffer> <silent> <NL> =Perl_JumpCtrlJ()
imap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call Perl_XtermSize()
imap <buffer> <silent> \rk :call Perl_Settings()
imap <buffer> <silent> \rh :call Perl_Hardcopy("n")
imap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
imap <buffer> <silent> \rpc :call Perl_Perlcritic()
imap <buffer> <silent> \ry :call Perl_Perltidy("n")
imap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
imap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
inoremap <buffer> <silent> \rma :call Perl_MakeArguments()
inoremap <buffer> <silent> \rmc :call Perl_MakeClean()
inoremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
inoremap <buffer> <silent> \rm :call Perl_Make()
inoremap <buffer> <silent> \rw :call Perl_PerlSwitches()
inoremap <buffer> <silent> \ra :call Perl_Arguments()
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
imap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
imap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
inoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
inoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
inoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
inoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
inoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
inoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
inoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
inoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
inoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
inoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
inoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
inoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
inoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
inoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
inoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
inoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
inoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
inoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
inoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
inoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
inoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
inoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
inoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
inoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
inoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
inoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
inoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
inoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
inoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
inoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=~/my/vim/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/local/lib64/perl5,/usr/local/share/perl5,/usr/lib64/perl5/vendor_perl,/usr/share/perl5/vendor_perl,/usr/lib64/perl5,/usr/share/perl5,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=~/src/perl/CLI-Gwrap/.git/perl.tags,~/src/perl/CLI-Gwrap/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=10
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit lib/CLI/Gwrapper/wxGrid.pm
set splitbelow splitright
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
imap <buffer> <silent> <S-F1> :call Perl_perldoc()
imap <buffer> <silent> <S-F9> :call Perl_Arguments()
imap <buffer> <silent> <C-F9> :call Perl_Run()
imap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nmap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nmap <buffer> <silent> \ry :call Perl_Perltidy("n")
nmap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
map <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
map <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
map <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call Perl_XtermSize()
map <buffer> <silent> \rk :call Perl_Settings()
vmap <buffer> <silent> \rh :call Perl_Hardcopy("v")
omap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
map <buffer> <silent> \rpc :call Perl_Perlcritic()
vmap <buffer> <silent> \ry :call Perl_Perltidy("v")
omap <buffer> <silent> \ry :call Perl_Perltidy("n")
map <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
map <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> <silent> \rma :call Perl_MakeArguments()
noremap <buffer> <silent> \rmc :call Perl_MakeClean()
noremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
noremap <buffer> <silent> \rm :call Perl_Make()
noremap <buffer> <silent> \rw :call Perl_PerlSwitches()
noremap <buffer> <silent> \ra :call Perl_Arguments()
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "n" )j
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
vnoremap <buffer> <silent> \cl :call Perl_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()A
map <buffer> <silent> \hp :call Perl_HelpPerlsupport()
map <buffer> <silent> \h :call Perl_perldoc()
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
onoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
onoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
onoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
onoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
onoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
onoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
onoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
onoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
onoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
onoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
onoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
onoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
onoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
onoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
onoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
onoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
onoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
onoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
onoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
onoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
onoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
onoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
onoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
onoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
onoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
onoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
onoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
onoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
onoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
onoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
onoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
onoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
onoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
onoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
onoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
onoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
onoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
onoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
onoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
onoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
onoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
onoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
onoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
onoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
onoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
onoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
onoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
onoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
onoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
onoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
onoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
onoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
onoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
vnoremap <buffer> { s{}kp=iB
noremap <buffer> <silent> <F9> :call Perl_Debugger()
map <buffer> <silent> <S-F1> :call Perl_perldoc()
map <buffer> <silent> <S-F9> :call Perl_Arguments()
map <buffer> <silent> <C-F9> :call Perl_Run()
map <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
imap <buffer> <silent> <NL> =Perl_JumpCtrlJ()
imap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call Perl_XtermSize()
imap <buffer> <silent> \rk :call Perl_Settings()
imap <buffer> <silent> \rh :call Perl_Hardcopy("n")
imap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
imap <buffer> <silent> \rpc :call Perl_Perlcritic()
imap <buffer> <silent> \ry :call Perl_Perltidy("n")
imap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
imap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
inoremap <buffer> <silent> \rma :call Perl_MakeArguments()
inoremap <buffer> <silent> \rmc :call Perl_MakeClean()
inoremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
inoremap <buffer> <silent> \rm :call Perl_Make()
inoremap <buffer> <silent> \rw :call Perl_PerlSwitches()
inoremap <buffer> <silent> \ra :call Perl_Arguments()
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
imap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
imap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
inoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
inoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
inoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
inoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
inoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
inoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
inoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
inoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
inoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
inoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
inoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
inoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
inoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
inoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
inoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
inoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
inoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
inoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
inoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
inoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
inoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
inoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
inoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
inoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
inoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
inoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
inoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
inoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
inoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
inoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=~/my/vim/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/local/lib64/perl5,/usr/local/share/perl5,/usr/lib64/perl5/vendor_perl,/usr/share/perl5/vendor_perl,/usr/lib64/perl5,/usr/share/perl5,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=~/src/perl/CLI-Gwrap/.git/perl.tags,~/src/perl/CLI-Gwrap/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=10
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit lib/CLI/Gwrapper/Wx/App.pm
set splitbelow splitright
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <F9> :call Perl_Debugger()
imap <buffer> <silent> <S-F1> :call Perl_perldoc()
imap <buffer> <silent> <S-F9> :call Perl_Arguments()
imap <buffer> <silent> <C-F9> :call Perl_Run()
imap <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
nmap <buffer> <silent> <NL> i=Perl_JumpCtrlJ()
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
nnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
nnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
nnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
nnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
nnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
nnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
nnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
nnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
nnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
nnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
nnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
nnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
nnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
nnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
nnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
nnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
nnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
nnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
nnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
nnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
nnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
nnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
nnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
nnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
nnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
nnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
nnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
nnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
nnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
nnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
nmap <buffer> <silent> \ry :call Perl_Perltidy("n")
nmap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rpco :call Perl_PerlcriticOptionsInput()
map <buffer> <silent> \rpcv :call Perl_PerlcriticVerbosityInput()
map <buffer> <silent> \rpcs :call Perl_PerlcriticSeverityInput()
map <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call Perl_XtermSize()
map <buffer> <silent> \rk :call Perl_Settings()
vmap <buffer> <silent> \rh :call Perl_Hardcopy("v")
omap <buffer> <silent> \rh :call Perl_Hardcopy("n")
map <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
map <buffer> <silent> \rpc :call Perl_Perlcritic()
vmap <buffer> <silent> \ry :call Perl_Perltidy("v")
omap <buffer> <silent> \ry :call Perl_Perltidy("n")
map <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
map <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
noremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
noremap <buffer> <silent> \rd :call Perl_Debugger()
noremap <buffer> <silent> \rma :call Perl_MakeArguments()
noremap <buffer> <silent> \rmc :call Perl_MakeClean()
noremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
noremap <buffer> <silent> \rm :call Perl_Make()
noremap <buffer> <silent> \rw :call Perl_PerlSwitches()
noremap <buffer> <silent> \ra :call Perl_Arguments()
noremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
noremap <buffer> <silent> \rr :call Perl_Run()
nnoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
nnoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
nnoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
nnoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
nnoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
nnoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
nnoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
nnoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
nnoremap <buffer> <silent> \podt :call Perl_POD('text')
nnoremap <buffer> <silent> \podm :call Perl_POD('man')
nnoremap <buffer> <silent> \podh :call Perl_POD('html')
nnoremap <buffer> <silent> \pod :call Perl_PodCheck()
vnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "v" )
nnoremap <buffer> <silent> \xe :call perlsupportregex#Perl_RegexExplain( "n" )
nnoremap <buffer> <silent> \xmm :call perlsupportregex#Perl_RegexMatchSeveral( )
nnoremap <buffer> <silent> \xm :call perlsupportregex#Perl_RegexVisualize( )
vnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "v" )'>j
vnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "v" )'>j
vnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "v" )'>j
nnoremap <buffer> <silent> \xf :call perlsupportregex#Perl_RegexPickFlag( "n" )
nnoremap <buffer> <silent> \xs :call perlsupportregex#Perl_RegexPick( "string", "n" )j
nnoremap <buffer> <silent> \xr :call perlsupportregex#Perl_RegexPick( "regexp", "n" )j
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
nnoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
nnoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
vnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
nnoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
nnoremap <buffer> <silent> \cub :call Perl_UncommentBlock()
vnoremap <buffer> <silent> \cb :call Perl_CommentBlock("v")
nnoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
vnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cc :call Perl_CommentToggle()j
nnoremap <buffer> <silent> \cs :call Perl_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
nnoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
vnoremap <buffer> <silent> \cl :call Perl_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()A
map <buffer> <silent> \hp :call Perl_HelpPerlsupport()
map <buffer> <silent> \h :call Perl_perldoc()
vnoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences","v")
vnoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex","v")
vnoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
vnoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
vnoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
vnoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
vnoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
vnoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
vnoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
vnoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
vnoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
vnoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe","v")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file","v")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file","v")
vnoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
vnoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine","v")
vnoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
vnoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
vnoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
vnoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
vnoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
vnoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
vnoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
vnoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
vnoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
vnoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while","v")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until","v")
vnoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else","v")
vnoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless","v")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else","v")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif","v")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else","v")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if","v")
vnoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach","v")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for","v")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while","v")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
vnoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
vnoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
vnoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
vnoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
onoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
onoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
onoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
onoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
onoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
onoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
onoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
onoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
onoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
onoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
onoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
onoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
onoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
onoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
onoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
onoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
onoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
onoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
onoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
onoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
onoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
onoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
onoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
onoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
onoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
onoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
onoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
onoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
onoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
onoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
onoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
onoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
onoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
onoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
onoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
onoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
onoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
onoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
onoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
onoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
onoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
onoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
onoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
onoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
onoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
onoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
onoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
onoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
onoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
onoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
onoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
onoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
onoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
vnoremap <buffer> { s{}kp=iB
noremap <buffer> <silent> <F9> :call Perl_Debugger()
map <buffer> <silent> <S-F1> :call Perl_perldoc()
map <buffer> <silent> <S-F9> :call Perl_Arguments()
map <buffer> <silent> <C-F9> :call Perl_Run()
map <buffer> <silent> <M-F9> :call Perl_SyntaxCheck()
imap <buffer> <silent> <NL> =Perl_JumpCtrlJ()
imap <buffer> <silent> \ro :call Perl_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call Perl_XtermSize()
imap <buffer> <silent> \rk :call Perl_Settings()
imap <buffer> <silent> \rh :call Perl_Hardcopy("n")
imap <buffer> <silent> \rt :call Perl_SaveWithTimestamp()
imap <buffer> <silent> \rpc :call Perl_Perlcritic()
imap <buffer> <silent> \ry :call Perl_Perltidy("n")
imap <buffer> <silent> \rg :call Perl_perldoc_generate_module_list()
imap <buffer> <silent> \ri :call Perl_perldoc_show_module_list()
inoremap <buffer> <silent> \re :call Perl_MakeScriptExecutable()
inoremap <buffer> <silent> \rma :call Perl_MakeArguments()
inoremap <buffer> <silent> \rmc :call Perl_MakeClean()
inoremap <buffer> <silent> \rcm :call Perl_ChooseMakefile()
inoremap <buffer> <silent> \rm :call Perl_Make()
inoremap <buffer> <silent> \rw :call Perl_PerlSwitches()
inoremap <buffer> <silent> \ra :call Perl_Arguments()
inoremap <buffer> <silent> \rs :call Perl_SyntaxCheck()
inoremap <buffer> <silent> \rr :call Perl_Run()
inoremap <buffer> <silent> \rpnh :call perlsupportprofiling#Perl_NYTprofReadHtml()
inoremap <buffer> <silent> \rpns :call perlsupportprofiling#Perl_NYTProfSortInput()
inoremap <buffer> <silent> \rpnc :call perlsupportprofiling#Perl_NYTprofReadCSV("read","line")
inoremap <buffer> <silent> \rpn :call perlsupportprofiling#Perl_NYTprof()
inoremap <buffer> <silent> \rpfs :call perlsupportprofiling#Perl_FastProfSortInput()
inoremap <buffer> <silent> \rpf :call perlsupportprofiling#Perl_Fastprof()
inoremap <buffer> <silent> \rpss :call perlsupportprofiling#Perl_SmallProfSortInput()
inoremap <buffer> <silent> \rps :call perlsupportprofiling#Perl_Smallprof()
inoremap <buffer> <silent> \podt :call Perl_POD('text')
inoremap <buffer> <silent> \podm :call Perl_POD('man')
inoremap <buffer> <silent> \podh :call Perl_POD('html')
inoremap <buffer> <silent> \pod :call Perl_PodCheck()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Perl_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Perl_Templates,"reload","all")
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Perl_Templates,-1)
inoremap <buffer> <silent> \nv :call Perl_CodeSnippet("view")
inoremap <buffer> <silent> \ne :call Perl_CodeSnippet("edit")
inoremap <buffer> <silent> \nw :call Perl_CodeSnippet("write")
inoremap <buffer> <silent> \nr :call Perl_CodeSnippet("read")
inoremap <buffer> <silent> \cb :call Perl_CommentBlock("a")
inoremap <buffer> <silent> \cj :call Perl_AlignLineEndComm()
inoremap <buffer> <silent> \cl :call Perl_EndOfLineComment()
imap <buffer> <silent> \hp :call Perl_HelpPerlsupport()
imap <buffer> <silent> \h :call Perl_perldoc()
inoremap <buffer> <silent> \nxs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.regex")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Snippets.jump tags")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"POD.markup sequences")
inoremap <buffer> <silent> \xex :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.extended Regex")
inoremap <buffer> <silent> \xup :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.Unicode Property")
inoremap <buffer> <silent> \xpc :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Regex.POSIX classes")
inoremap <buffer> <silent> \vs :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.POSIX signals")
inoremap <buffer> <silent> \vr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.regexp")
inoremap <buffer> <silent> \vio :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IO")
inoremap <buffer> <silent> \vid :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.IDs")
inoremap <buffer> <silent> \vf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.filehandle")
inoremap <buffer> <silent> \ve :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.errors")
inoremap <buffer> <silent> \vb :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Special Variables.basics")
inoremap <buffer> <silent> \ipi :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open pipe")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open output file")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.open input file")
inoremap <buffer> <silent> \ip :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.print")
inoremap <buffer> <silent> \isu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.subroutine")
inoremap <buffer> <silent> \it :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.translate")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.substitute")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.match")
inoremap <buffer> <silent> \ir :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.regex")
inoremap <buffer> <silent> \ihh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash+assignment")
inoremap <buffer> <silent> \ih :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.hash")
inoremap <buffer> <silent> \iaa :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array+assignment")
inoremap <buffer> <silent> \ia :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.array")
inoremap <buffer> <silent> \idd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar_list")
inoremap <buffer> <silent> \ida :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar+assignment")
inoremap <buffer> <silent> \id :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Idioms.scalar")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.when")
inoremap <buffer> <silent> \sg :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.given")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.while")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.until")
inoremap <buffer> <silent> \sue :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless-else")
inoremap <buffer> <silent> \su :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.unless")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if-else")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.elsif")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.else")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.if")
inoremap <buffer> <silent> \sfe :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.foreach")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.for")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Statements.do-while")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.macros")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.keyword comments")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date+time")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.date")
inoremap <buffer> <silent> \chpo :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pod")
inoremap <buffer> <silent> \cht :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description t")
inoremap <buffer> <silent> \chpm :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pm")
inoremap <buffer> <silent> \chpl :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.file description pl")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.method")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.function")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Perl_Templates,"Comments.frame")
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=~/my/vim/perl-support/wordlists/perl.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=GetPerlIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=,0),0],0=or,0=and
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=perldoc\ -f
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/local/lib64/perl5,/usr/local/share/perl5,/usr/lib64/perl5/vendor_perl,/usr/share/perl5/vendor_perl,/usr/lib64/perl5,/usr/share/perl5,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=~/src/perl/CLI-Gwrap/.git/perl.tags,~/src/perl/CLI-Gwrap/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=10
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 5
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=at
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
