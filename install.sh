if [ -e ~/.vimrc ]
then
  mv -f ~/.vimrc ~/.vimrc-before-samuel-vimfiles
fi

touch ~/.vimrc

echo "source ~/.vim/vimrc" > ~/.vimrc

if [ -e ~/.vim ]
then
  mv -f ~/.vim ~/.vim-before-samuel-vimfiles
fi

git clone https://github.com/samuelsimoes/vimfiles ~/.vim

cd ~/.vim

git submodule init bundle/neobundle.vim

git submodule update

vim +NeoBundleInstall +qall
