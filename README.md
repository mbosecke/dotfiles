#Description
My own dotfiles. 

#Installation

* Clone the git repository to your home folder.
* Run `bootstrap.sh`. This will create symlinks in your home folder that 
link to the contents of the new dotfiles directory. It will store backups
of your existing dotfiles in a new directory called dotfiles_old


## Adding New Vim Plugin
```
cd ~/dotfiles
git submodule add git://github.com/altercation/vim-colors-solarized.git ~/dotfiles/vim/bundle/vim-colors-solarized
```



