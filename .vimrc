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
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set expandtab
set ts=4
set softtabstop=4
set shiftwidth=4
set hls

set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932,utf-8
set enc=utf-8

" �N���b�v�{�[�h�𗘗p����B
set clipboard+=autoselect
set clipboard+=unnamed
vnoremap y "+y
set autoindent

" �X�e�[�^�X���C���ɐF������
au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none
au InsertLeave * hi StatusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Blue ctermbg=DarkGray cterm=none

" !Memo! vim -b �ŊJ���� ':%!xxd'�ŊJ���ƃo�C�i���ҏW�\�B'%!xxd -r'�ŕۑ��B
" ctags �ł����^�O���ċA�I�Ɍ���
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
""�C���T�[�g���[�h�ŊJ�n
"let g:unite_enable_start_insert = 1
""�ŋߊJ�����t�@�C�������̕ۑ���
"let g:unite_source_file_mru_limit = 50
"
""file_mru�̕\���t�H�[�}�b�g���w��B��ɂ���ƕ\���X�s�[�h�������������
"let g:unite_source_file_mru_filename_format = ''
"
""���݊J���Ă���t�@�C���̃f�B���N�g�����̃t�@�C���ꗗ�B
""�J���Ă��Ȃ��ꍇ�̓J�����g�f�B���N�g��
"nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
""�o�b�t�@�ꗗ
"nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
""���W�X�^�ꗗ
"nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
""�ŋߎg�p�����t�@�C���ꗗ
"nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
""�u�b�N�}�[�N�ꗗ
"nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
""�u�b�N�}�[�N�ɒǉ�
"nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
""unite���J���Ă���Ԃ̃L�[�}�b�s���O
"autocmd FileType unite call s:unite_my_settings()
"function! s:unite_my_settings()"{{{
"  "ESC��unite���I��
"  nmap <buffer> <ESC> <Plug>(unite_exit)
"  "���̓��[�h�̂Ƃ�jj�Ńm�[�}�����[�h�Ɉړ�
"  imap <buffer> jj <Plug>(unite_insert_leave)
"  "���̓��[�h�̂Ƃ�ctrl+w�Ńo�b�N�X���b�V�����폜
"  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
"  "ctrl+j�ŏc�ɕ������ĊJ��
"  nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"  inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"  "ctrl+j�ŉ��ɕ������ĊJ��
"  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"  "ctrl+o�ł��̏ꏊ�ɊJ��
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
" "data_directory ��ramdisk���w��
" if has('win32')
"   let g:vimfiler_data_directory = 'R:\.vimfiler'
" elseif  has('macunix')
"   let g:vimfiler_data_directory = '/Volumes/RamDisk/.vimfiler'
" else
"   let g:vimfiler_data_directory = '/home/kondo/.vim/bundle/vimfiler'
" endif
"  
" "vim�f�t�H���g�̃G�N�X�v���[����vimfiler�Œu��������
" let g:vimfiler_as_default_explorer = 1
" "�Z�[�t���[�h�𖳌��ɂ�����ԂŋN������
" let g:vimfiler_safe_mode_by_default = 0
" "���݊J���Ă���o�b�t�@�̃f�B���N�g�����J��
" nnoremap <silent> <Leader>fe :<C-u>VimFilerBufferDir -quit<CR>
" "���݊J���Ă���o�b�t�@��IDE���ɊJ��
" nnoremap <silent> <Leader>fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
"  
" "�f�t�H���g�̃L�[�}�b�s���O��ύX
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
