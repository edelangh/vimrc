""" Knowed issie
" bookmarks win is limited
" 'cscope find g' go to next tab after find => look tabnext
" Color Error:   #want an updater but don't 

" NEED: :w !sudo tee %
set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=UTF-8
set mouse=a
set list

set noswapfile
" TODO: http://vim.wikia.com/wiki/Search_and_replace_in_multiple_buffers

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Open file to line given in cmdline 'vim main.c:42'
Plugin 'bogado/file-line'

" Move to root directory
Plugin 'airblade/vim-rooter'
" directories and all files (default)
let g:rooter_targets = '/,*'
let g:rooter_resolve_links = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['.git/', 'alchemy/', 'Cargo.toml', 'node_modules/']

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" GIT
Plugin 'tpope/vim-fugitive'
" blame: Gblame

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_max_files=0
"" search: <ctrl-p>

" CompletionStuff
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_error_symbol = 'X('
let g:ycm_warning_symbol = ':|'

" Allowing rename current file :/
Plugin 'danro/rename.vim'

" Syntax checking
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_c_checkers=['gcc', 'checkpatch']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
" let g:syntastic_c_include_dirs

" Light line
" Plugin 'itchyny/lightline.vim'
" Disable because of vim-airline

" Cscope
Plugin 'chazy/cscope_maps'
"find . -name '*.[ch]' | grep -v volvo > cscope.files        
"find ../diven -name '*.[ch]' >> cscope.files
"cscope -i cscope.files -Rb                                  

"" http://vim.wikia.com/wiki/Cscope
"" C CallTree
" Plugin 'hari-rangarajan/CCTree'

":CCTreeLoadDB cscope.out
"<C-\><
"<C-\><
Plugin 'hari-rangarajan/CCTree'

" Tarbar
Plugin 'majutsushi/tagbar'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='deus'

" ColorSchenes
Plugin 'flazz/vim-colorschemes'

" Toggle-Bool
Plugin 'sagarrakshe/toggle-bool'
noremap = :ToggleBool<CR>

" Multicursors
" Plugin 'terryma/vim-multiple-cursors'
"" https://github.com/terryma/vim-multiple-cursors#mapping
"" Error: incompatible with an other plugins :/

" Unite
" Plugin 'Shougo/unite.vim'

" Mark
"" Using Unit
Plugin 'MattesGroeger/vim-bookmarks'
" call unite#custom#profile('source/vim_bookmarks', 'context', {
" 	\   'winheight': 13,
" 	\   'direction': 'botright',
" 	\   'start_insert': 0,
" 	\   'keep_focus': 1,
" 	\   'no_quit': 1,
" 	\ })

"" Put bm: mm
"" Put bm with annotation: mi
"" Next bm: mn
"" All bm: ma
"" Clear bm: mx
"" Save bm: BookmarkSave <file_path>

" vim-gutter: Git diff in file
Plugin 'airblade/vim-gitgutter'

" Use GDB !!! https://vimawesome.com/plugin/neogdb-vim#features
Plugin 'huawenyu/neogdb.vim'
let g:neobugger_leader = ';'
let g:neogdb_window = ['backtrace', 'breakpoint']

" NERDTree
Plugin 'scrooloose/nerdtree'
" ?: ToggleHelp
let g:NERDTreeWinSize=27
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <C-f> :NERDTreeTabsOpen<cr><C-w><right>:NERDTreeFind %<cr><C-w><right>

Plugin 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup=0
"let g:nerdtree_tabs_open_on_gui_startup=1
Plugin 'ryanoasis/nerd-fonts'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" async jobs !
Plugin 'prabirshrestha/async.vim'

" //// My plugins ////
Plugin 'edelangh/vim-termopen'

nnoremap <F9> :!rg -I "\#define.*".<cword><cr>
vmap <C-C> "+y
vmap q :s/^/\/\//<cr>:let @/ = ""<cr>


" //// End ////
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
" Reload vim config: :so %
nmap <tab> :tabnext<cr>
nmap <S-tab> :tabprev<cr>
" Terminal
"Open: vsplit term://bash
tnoremap <Esc> <C-\><C-n>
tnoremap <S-PageDown> <C-\><C-n><PageDown>
tnoremap <S-PageUp> <C-\><C-n><PageUp>
tnoremap <C-p> <C-\><C-n>pif 
tnoremap <C-w><left> <C-\><C-n><C-w><left>i
tnoremap <C-w><right> <C-\><C-n><C-w><right>i
tnoremap <C-w><up> <C-\><C-n><C-w><up>i
tnoremap <C-w><down> <C-\><C-n><C-w><down>:startinsert
nnoremap <C-c> :startinsert<cr>
hi! TermCursorNC ctermfg=15 guifg=#fdf6e3 ctermbg=14 guibg=#93a1a1 cterm=NONE gui=NONE

noremap <C-o> :tabnew term://zsh<cr>i

" //// My plugin shortcut
vnoremap <C-o> :<C-U>TOOpenTab<cr>
command! TOEnter :startinsert
nnoremap <cr> :TOEnter<cr>
" ////

fu! s:jobDevNull(job_id, data, event_type)
endfunction

function! s:jobErr(job_id, data, event_type)
	"echo a:job_id . ' ' . a:event_type
	echo join(a:data, "\n")
endfunction

fu! s:jobEnd(job_id, data, event_type)
	silent! cscope add cscope.out
	echom 'cscope database added'
endfunction

fu! g:RooterPostChangeDirectory()
	if !exists("g:cscopeScanRunning") && (match(@%, '.*\.[ch]') == 0 || match(@%, '.*\.cpp') == 0 || match(@%, '.*\.cc') == 0)
		let cmd = "find -regex '.*/.*\.\\(c\\|cpp\\|h\\|hh\\)$' > cscope.files && cscope -b -icscope.files"
		let argv = ['bash', '-c', cmd]
		let jobid = async#job#start(argv, {
		    \ 'on_stdout': function('s:jobDevNull'),
		    \ 'on_stderr': function('s:jobDevNull'),
		    \ 'on_exit': function('s:jobEnd'),
		\ })
		if jobid > 0
			let g:cscopeScanRunning = 1
			echom 'job started'
			let pid = async#job#pid(jobid)
		else
			echom 'job failed to start'
		endif
		" TODO: We catch all error of cscope, but we should only catch
	endif
endfu
