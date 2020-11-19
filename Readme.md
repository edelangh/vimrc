## Short description

### Install

1) Install [vim-plug](https://github.com/junegunn/vim-plug) !

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```
pip2.7 install neovim
```

2) Create link from your .vimrc to the one here

```
mv ~/.vimrc ~/.vimrc.old
ln -s $(path_repo)/.vimrc ~/.vimrc
```

3) Install cscope

```
sudo apt-get install -y cscope
```

4) Install plugins

```
vim +PlugInstall +qall
vim +PlugUpdate +qall
```

5) Install fonts

```
cd /tmp
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install Ubuntu
cd ..
rm -rf nerd-fonts
```

6) Enjoy !

### Shotcuts

 - Ctrp+p: (CtrlP) Search file in all subdirs
 - Ctrl+\\ + d: (Cscope) Search definition of current word
 - Ctrl+o: Open a terminal
 - Ctrl+f: Focus current file in filetree

### Usefull
 - TagBarToggle

## Screenshot

![Screenshot1](images/screenshot.png)
