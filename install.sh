

CONFIGDIR=~/.ch01-config

#Download files
git clone --recurse-submodules https://github.com/chavaone/config-files.git $CONFIGDIR

#Install oh-my-zsh
ln -s $CONFIGDIR/zsh/ch01_theme.zsh-theme $CONFIGDIR/zsh/oh-my-zsh/themes/
ln -s $CONFIGDIR/zsh/ch01_theme_root.zsh-theme $CONFIGDIR/zsh/oh-my-zsh/themes/
if test -f ~/.zshrc; then
  mv ~/.zshrc ~/.zshrc.old
fi
ln -s $CONFIGDIR/zsh/zshrc ~/.zshrc

#Install gitconfig
if test -f ~/.gitconfig; then
  mv ~/.gitconfig ~/.gitconfig.old
fi
ln -s $CONFIGDIR/git/gitconfig ~/.gitconfig

#Install vimrc
if test -f ~/.vimrc; then
  mv ~/.vimrc ~/.vimrc.old
fi
ln -s $CONFIGDIR/vim/vimrc ~/.vimrc


#Install nvim
if test -d ~/.config/nvim; then
  mv ~/.config/nvim ~/.config/nvim.old
fi
ln -s $CONFIGDIR/nvim ~/.config/nvim
