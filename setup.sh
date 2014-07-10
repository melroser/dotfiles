#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=`pwd`/homedir                   # dotfiles directory
time_stamp=$(date +%Y-%m-%d-%T)
backup="${HOME}/.backup_dotfiles/${time_stamp}"             # old dotfiles backup directory

dotfiles=" aliases  bash_profile  bashrc dir_colors  exports  functions  inputrc  prompt  vim "    # list of files/folders to symlink in homedir

##########

# create backup in homedir
echo "Creating $backup for backup of any existing dotfiles in ~ ..."
mkdir -p $backup
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $dotfiles; do
    echo "Moving  ~/.$file to $backup ..."
    mv ~/.$file $backup
    echo "Creating symlink $dir/$file --> ~/.$file ..."
    ln -s $dir/$file ~/.$file
    echo "linked $file"
done

echo "Moving ~/.vimrc to $backup ..."
mv $HOME/.vimrc $backup
echo "Creating symlink  $dir/vim/vimrc.vim --> ~/.vimrc ..."
ln -s $dir/vim/vimrc.vim ~/.vimrc
echo "done"

# Install Vundle
echo "clean bundle dir"
rm -rf ~/.vim/bundle/*
echo "Installing Vundle to ~/.vim/bundles"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "done"

# Create Bash History File
touch ~/.bash_history
