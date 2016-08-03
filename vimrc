"+-----------------------------+                                    "
"| General                     |\-----------------------------------"
"+_____________________________+ | Comment                          "
"\______________________________\|=================================="
set nocompatible                "| 오리지널 vi와 호환성 제거        "
set noexrc                      "| don't use local version of .(g)vimrc, .exerc
set fileformats=unix,dos,mac    "|    
set background=dark             "| 배경색을 어두운 색으로 설정      "
set history=1000                "| vi 편집기록을 1000까지 기억      "
set nobackup                    "| backup 파일 생성 안함            "
filetype on                     "| 파일의 종류를 자동으로 인식      "
filetype plugin on              "|                                  "
filetype plugin indent on       "|                                  "
syntax on                       "| syntax highlighting on           "
"+_______________________________|=================================="
"\_______________________________\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"+-----------------------------+                                    "
"| Vim UI                      |\-----------------------------------"
"+_____________________________+ | Comment                          "
"\______________________________\|=================================="
set title                       "| 타이틀바에 현재 편집중인 파일 표시
set lazyredraw                  "| MACRO 사용중에 화면을 다시 그리지 않음
set cursorline                  "| 현재 라인 강조                   "
"set cursorcolumn               "| 현재 컬럼 강조                   "
set laststatus=2                "| 상태 라인 항상 표시              "
set incsearch                   "| 검색(/,?)시 구문 강조            "
set hlsearch                    "| 검색어 강조                      "
set list                       "| <TAB>, <CR> 출력 서식 표시       "
set ruler                       "| 커서의 위치 항상 표시            "
set number                      "| 줄번호 표시                      "
set showmode                    "| 모드 변환시 화면에 표시          "
set showcmd                     "| 입력되는 명령 표시               "
set showmatch                   "| (), {} 일치하는 괄호의 짝을 보여줌
set mps+=<:>                    "| 괄호짝 찾기 기능에 사용자 괄호 종류 추가
"\_______________________________\
if !has("gui_running")          "|
    set t_Co=256                "|
endif                           "|
"colorscheme wombat256           "|
"+_______________________________|=================================="
"\_______________________________\
"For detail cursorline color setting
hi CursorLine    cterm=none ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"+-----------------------------+                                    "
"| Text Formatting/Layout      |\-----------------------------------"
"+_____________________________+ | Comment                          "
"\______________________________\|=================================="
set cindent                     "| C스타일의 들여쓰기               "
set autoindent                  "| 자동들여쓰기                     "
set smartindent                 "| 좀더 지능적인 들여쓰기           "
set expandtab                   "| 탭을 입력하면 공백문자로 변환    "
set paste                       "| 붙여넣기시 자동들여쓰기 하지 않음"
set ignorecase                  "| 검색시 대소문자 구별 하지 않음   "
set nowrap                      "| 자동 줄바꿈 안함                 "
set shiftwidth=4                "| >> , << 사용시 들여쓰기 간격     "
set softtabstop=4               "| <TAB>키를 눌렀을때 표시되는 간격 "
set tabstop=8                   "| '\t' 문자를 몇칸으로 보일지 결정 "
"+_______________________________|=================================="
"\_______________________________\



colorscheme koehler


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
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplSplitBelow=0   "| 미니버퍼위치 0=위, 1=아래
let g:miniBufExplMaxSize=1
let g:miniBufExplSplitToEdge=1

" CTRL-A is Select all
noremap <C-A> ggVG
"================================"
" 파일 버퍼 간 이동
"================================"
map <C-h>   :bp<CR>
map <C-l>   :bn<CR>
map <C-k>   :bf<CR>
map <C-j>   :bl<CR>
map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>
map ,9 :b!9<CR>
map ,0 :b!10<CR>
map ,w :bwipeout<CR>
"+_______________________________|
"\_______________________________\

" 버퍼 닫기

" Alt + number 맵핑

Plugin 'matchparenpp'
Plugin 'sudo.vim'
Plugin 'YankRing.vim'
"Plugin 'https://github.com/Lokaltog/vim-powerline.git'

Plugin 'c.vim'
Plugin 'DoxygenToolkit.vim'
"Plugin 'EasyMotion'
Plugin 'neocomplcache'

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

"######################ctags :add tags files###############################"
Plugin 'ctags.vim'
set tags=/usr/include/tags

if version >= 500
func! Sts()
         let st = expand("<cword>")
         exe "sts ".st
endfunc
nmap ,st :call Sts()<cr>

func! Ts()
        let st = expand("<cword>")
        exe "ts ".st
endfunc
nmap ,ts :call Ts()<cr>

func! Tj()
        let st = expand("<cword>")
        exe "tj ".st
endfunc
nmap ,tj :call Tj()<cr>

endif


let Tlist_Inc_Winwidth=0
let Tlist_WinWidth = 20
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1 
"##########################################################################"



"#######################cscope : add cscope files #########################" 
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
"##########################################################################"

Plugin 'taglist.vim' 
Plugin 'snipMate'
Plugin 'ctrlp.vim'

Plugin 'The-NERD-tree'
let g:NERDChristmasTree = 1 "colorful 효과
let g:NERDTreeAutoCenter = 1 
let g:NERDTreeChDirMode = 1
let g:NERDTreeHighlightCursorline = 1 "현재 커서 위치를 하일라이팅합니다. 기본값은 1
let g:NERDTreeSortOrder=['\.c$', '\.h$', '*'] " *.c, *.h, 기타파일 순으로 정렬합니다.
let g:NERDTreeIgnore = ['\.vim$', '\~$'] " *.vim파일과 끝이'~'로 끝나는 파일들은 안보여줌
let g:lNERDTreeWinSize = 20 "NERDTree의 폭을 설정합니다.
let g:NERDTreeMinimalUI = 1 "NERDTree에서 (위에뜨는) help/bookmark 메세지를 보여주지 않습니다.
let g:NERDTreeShowHidden = 1 "숨김파일
let g:NERDTreeShowLineNumbers=1 "라인을 보여줍니다
"let g:NERDTreeWinPos = right "이렇게 설정하면 오른쪽에 NERDTree가 나타남




" @file .vimrc
" @brief my_shortCut 
" @author lkh
" @version 1.0
" @date 2016-08-02


map <F5> :NERDTreeToggle<CR>
map <F6> :TlistToggle<CR>
map <F7> :TMiniBufExplorer<CR>

