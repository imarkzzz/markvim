rm -rf ~/.vim_back .vimrc_back
mv ~/.vim ~/.vim_back
mv ~/.vimrc ~/.vimrc_back
cp ./vim.config ~/.vimrc
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone git://github.com/godlygeek/tabular.git
cd tabular
cp -r after autoload doc plugin ~/.vim
cd ~/.vim/bundle/
git clone https://github.com/easymotion/vim-easymotion.git

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py
# ./install.py --clang-completer 下载太久

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git
curl -fLo ~/.vim/plugin/NERD_Commenter.vim --create-dirs \
  https://raw.githubusercontent.com/scrooloose/nerdcommenter/master/plugin/NERD_commenter.vim
curl -fLo ~/.vim/doc/NERD_Commenter.txt --create-dirs \
  https://raw.githubusercontent.com/scrooloose/nerdcommenter/master/doc/NERD_commenter.txt

git clone https://github.com/Raimondi/delimitMate.git ~/.vim/bundle/delimitMate
cd ~/.vim/bundle/delimitMate
make

git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

git clone https://github.com/powerline/powerline.git ~/.vim/bundle/powerline
