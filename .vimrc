execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on
colorscheme desert
set hlsearch

nmap <silent> <C-N> :NERDTreeToggle<CR>
nmap <silent> <C-T> :TlistToggle<CR>
"insert and remove comments in visual and normal mode
vmap ,ic :s/^/#/g<CR>:let @/ = ""<CR>
map  ,ic :s/^/#/g<CR>:let @/ = ""<CR>
vmap ,rc :s/^#//g<CR>:let @/ = ""<CR>
map  ,rc :s/^#//g<CR>:let @/ = ""<CR>


set backup

"
"#This line declares a new auto command group named backups.
augroup backups

"#Erase any extra garbage commands that might be lying around.
 au!

autocmd BufWritePost,FileWritePost ~/.vimrc !diff -d ~/.vimrc ~/.vimrc~ &> /dev/null;if [[ $? == 1 ]];then touch ~/.vimrc~ ;mv ~/.vimrc~ ~/.vim/.vimrc;fi

"
"# Of course, this is the end of our one-liner augroup statement.
augroup END
