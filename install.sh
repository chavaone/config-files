

CONFIGDIR=~/.ch01-config

#Download files
git clone --recurse-submodules git@github.com:chavaone/config-files.git $CONFIGDIR

#Install oh-my-zsh
ln -s $CONFIGDIR/zsh/ch01_theme.zsh-theme $CONFIGDIR/zsh/oh-my-zsh/themes/
ln -s $CONFIGDIR/zsh/ch01_theme_root.zsh-theme $CONFIGDIR/zsh/oh-my-zsh/themes/
ln -s $CONFIGDIR/zsh/zshrc ~/.zshrc

#Install gitconfig
ln -s $CONFIGDIR/git/gitconfig ~/.gitconfig



