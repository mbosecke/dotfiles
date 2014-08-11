#
# author: Mitchell Bosecke
#


####### Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="bash_profile aliases exports functions vimrc gitconfig"
directories="vim"

#######


# create backup folder
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles dir
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# handle files
for file in $files; do
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory"
    ln -s $dir/$file ~/.$file
done

# handle directories
for directory in $directories; do
    echo "Creating symlink to $directory"
    test -d ~/.$directory || ln -s "$dir/$directory" ~/.$directory
done

echo "Complete"
