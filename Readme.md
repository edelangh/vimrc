## Short description

### Install

1) Install [vim-plug](https://github.com/junegunn/vim-plug) !

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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

3) close and open vim and do :PluginInstall<cr>

4) Enjoy !

### Shotcuts

 - Ctrp+p: (CtrlP) Search file in all subdirs
 - Ctrl+\\ + d: (Cscope) Search definition of current word
 - Ctrl+o: Open a terminal
 - Ctrl+f: Focus current file in filetree

### Usefull
 - TagBarToggle

## Screenshot

![Screenshot1](images/screenshot.png)
