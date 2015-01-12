#!/bin/bash
#
# setup.sh
#

dir=`pwd`/homedir                   # dotfiles directory
time_stamp=$(date +%Y-%m-%d-%T)
backup="${HOME}/.backup_dotfiles/${time_stamp}"             # old dotfiles backup directory
dotfiles=" aliases  bash_profile  bashrc dir_colors  exports  functions  inputrc  prompt  vim "    # list of files/folders to symlink in homedir

########## Backup & Install Custom Dotfiles
#
# create folder for the backup
echo "Creating $backup for backup of any existing dotfiles in ~ ..."
mkdir -p $backup
echo "done"

# cd to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in user's home to dotfiles_old, then symlink
# every file inside ./homedir/
for file in $dotfiles; do
    echo "Moving  ~/.$file to $backup ..."
    mv ~/.$file $backup
    echo "Creating symlink $dir/$file --> ~/.$file ..."
    ln -s $dir/$file ~/.$file
    echo "linked $file"
done

########## Vim Configuration Files
#
# backup vim configuration files if any
echo "Moving ~/.vimrc to $backup ..."
mv $HOME/.vimrc $backup

# link the new vimrc.vim file to ~/.vimrc
echo "Creating symlink  $dir/vim/vimrc.vim --> ~/.vimrc ..."
ln -s $dir/vim/vimrc.vim ~/.vimrc
echo "done"

# create a file for command history
touch ~/.bash_history

# install vundle
source ./scripts/vundle_setup.sh
