CONFIGDIR=~/.ch01-config

#Download files
git clone --recurse-submodules https://github.com/chavaone/config-files.git $CONFIGDIR

#Install programs (COPR Repos)
sudo dnf copr enable -y atim/lazygit
sudo dnf copr enable -y che/nerd-fonts
sudo dnf copr enable -y phracek/PyCharm

#Install programs (DNF)
sudo dnf install \
  texstudio \
  syncthing \
  terminator \
  vim \
  nvim \
  gimp \
  inkscape \
  pdfmod \
  xournalpp \
  gscan2pdf \
  kdenlive \
  nerd-fonts \
  zsh \
  lazygit

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install org.videolan.VLC/x86_64/stable
sudo flatpak install app/com.spotify.Client/x86_64/stable
sudo flatpak install app/com.logseq.Logseq/x86_64/stable
sudo flatpak install app/com.github.arminstraub.krop/x86_64/stable

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
ln -s $CONFIGDIR/neovim ~/.config/nvim
