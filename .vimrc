" Plugins i installed.
" unite.vim
" drawit

set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'neocomplcache'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/vim-scripts/QuickBuf.git'
Bundle 'https://github.com/fuenor/qfixgrep.git'

filetype plugin indent on

autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
autocmd FileType html setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
    
set nu
set list
set listchars=tab:ﾂｻ-,trail:-,eol:竊ｲ,extends:ﾂｻ,precedes:ﾂｫ,nbsp:%
set expandtab
set ts=4
set softtabstop=4
set shiftwidth=4
set hls

set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932,utf-8
set enc=utf-8

" クリップボードを利用する。
set clipboard+=autoselect
set clipboard+=unnamed
vnoremap y "+y
set autoindent

" ステータスラインに色をつける
au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none
au InsertLeave * hi StatusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Blue ctermbg=DarkGray cterm=none

" !Memo! vim -b で開いて ':%!xxd'で開くとバイナリ編集可能。'%!xxd -r'で保存。
" ctags でつけたタグを再帰的に検索
:set tags=tags;

"""""""""""
"" unite
"""""""""""
"
""unite prefix key.
"nnoremap [unite] <Nop>
"nmap <Space>f [unite]
"
""unite general settings
""インサートモードで開始
"let g:unite_enable_start_insert = 1
""最近開いたファイル履歴の保存数
"let g:unite_source_file_mru_limit = 50
"
""file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
"let g:unite_source_file_mru_filename_format = ''
"
""現在開いているファイルのディレクトリ下のファイル一覧。
""開いていない場合はカレントディレクトリ
"nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
""バッファ一覧
"nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
""レジスタ一覧
"nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
""最近使用したファイル一覧
"nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
""ブックマーク一覧
"nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
""ブックマークに追加
"nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
""uniteを開いている間のキーマッピング
"autocmd FileType unite call s:unite_my_settings()
"function! s:unite_my_settings()"{{{
"  "ESCでuniteを終了
"  nmap <buffer> <ESC> <Plug>(unite_exit)
"  "入力モードのときjjでノーマルモードに移動
"  imap <buffer> jj <Plug>(unite_insert_leave)
"  "入力モードのときctrl+wでバックスラッシュも削除
"  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
"  "ctrl+jで縦に分割して開く
"  nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"  inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"  "ctrl+jで横に分割して開く
"  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"  "ctrl+oでその場所に開く
"  nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
"  inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
"endfunction"}}}
"
"""""""""""
"" vimfiler
"""""""""""
"command Vf VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit
" " Like Textmate icons.
"let g:vimfiler_tree_leaf_icon = ' '
"let g:vimfiler_file_icon = '-'
"let g:vimfiler_marked_file_icon = '*'
"
""vimfiler {{{
" 
" "data_directory はramdiskを指定
" if has('win32')
"   let g:vimfiler_data_directory = 'R:\.vimfiler'
" elseif  has('macunix')
"   let g:vimfiler_data_directory = '/Volumes/RamDisk/.vimfiler'
" else
"   let g:vimfiler_data_directory = '/home/kondo/.vim/bundle/vimfiler'
" endif
"  
" "vimデフォルトのエクスプローラをvimfilerで置き換える
" let g:vimfiler_as_default_explorer = 1
" "セーフモードを無効にした状態で起動する
" let g:vimfiler_safe_mode_by_default = 0
" "現在開いているバッファのディレクトリを開く
" nnoremap <silent> <Leader>fe :<C-u>VimFilerBufferDir -quit<CR>
" "現在開いているバッファをIDE風に開く
" nnoremap <silent> <Leader>fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
"  
" "デフォルトのキーマッピングを変更
" augroup vimrc
" autocmd FileType vimfiler call s:vimfiler_my_settings()
" augroup END
" function! s:vimfiler_my_settings()
" nmap <buffer> q <Plug>(vimfiler_exit)
" nmap <buffer> Q <Plug>(vimfiler_hide)
" endfunction
"       "}}}

"NerdTree"
nmap <silent> <C-e> :NERDTreeToggle<CR>
"Qbuf"
let g:qb_hotkey="<C-b>"
"qgrep"



let g:neocomplcache_enable_at_startup = 1
