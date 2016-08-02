set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


"Vim Plugins..."
Plugin 'minibufexpl.vim'
let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1

" Alt + number 맵핑
map ^[1:bf<CR>
map ^[2 :bf<CR> :bn1<CR>
map ^[3 :bf<CR> :bn2<CR>
map ^[4 :bf<CR> :bn3<CR>
map ^[5 :bf<CR> :bn4<CR>
map ^[6 :bf<CR> :bn5<CR>
map ^[7 :bf<CR> :bn6<CR>
map ^[8 :bf<CR> :bn7<CR>
map ^[9 :bf<CR> :bn8<CR>

Plugin 'matchparenpp'
Plugin 'sudo.vim'
Plugin 'YankRing.vim'
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

Plugin 'c.vim'
Plugin 'DoxygenToolkit.vim'
"Plugin 'EasyMotion'
Plugin 'neocomplcache'

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" ##ctags"
Plugin 'ctags.vim'
set tags=/usr/include/tags

Plugin 'cscope.vim'
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("./cscope.out")
	cs add cscope.out
else
	cs add /usr/src/linux-headers-4.4.0-21/cscope.out
endif
set csverb

Plugin 'taglist.vim' 
Plugin 'snipMate'
Plugin 'ctrlp.vim'

Plugin 'The-NERD-tree'
let g:NERDChristmasTree = 1 "colorful 효과
let g:NERDTreeAutoCenter = 1 
let g:NERDTreeChDirMode = 1
let g:NERDTreeHighlightCursorline = 1 "현재 커서 위치를 하일라이팅합니다. 기본값은 1
let g:NERDTreeSortOrder=['\.c$', '\.h$', '*'] " *.c, *.h, 기타파일 순으로 정렬합니다.
"let g:NERDTreeBookmarksFile = ~/.NERDTreeBookmarks "북마크 파일을 지정합니다.  디폴트 값
let g:NERDTreeIgnore = ['\.vim$', '\~$'] " *.vim파일과 끝이'~'로 끝나는 파일들은 안보여줌
let g:lNERDTreeWinSize = 20 "NERDTree의 폭을 설정합니다.
let g:NERDTreeMinimalUI = 1 "NERDTree에서 (위에뜨는) help/bookmark 메세지를 보여주지 않습니다.
" let g:NERDTreeShowHidden = 1 "숨김파일을 보여준다고 합니다.
let g:NERDTreeShowLineNumbers=1 "라인을 보여줍니다
"  let g:NERDTreeShowFiles = 0 "0이면 파일을 보여주지 않고, 디렉토리만
" 보여줍니다.
"  let g:NERDTreeWinPos = right "이렇게 설정하면 오른쪽에 NERDTree가 나타남



/**
* @file .vimrc
* @brief my_shortCut 
* @author lkh
* @version 1.0
* @date 2016-08-02
*/

map <F9> :NERDTreeToggle<CR>
map <F10> :Tlist<CR>

