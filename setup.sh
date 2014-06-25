
mkdir $HOME/.backup_dotfiles

mv $HOME/.bash* $HOME/.backup_dotfiles/
mv $HOME/.vim* $HOME/.backup_dotfiles/

export MOBILE_DOTFILES=`pwd`/homedir/

ln -s $MOBILE_DOTFILES/bashrc.sh $HOME/.bashrc
ln -s $MOBILE_DOTFILES/bash_profile.sh $HOME/.bash_profile
ln -s $MOBILE_DOTFILES/bash_history.sh $HOME/.bash_history
ln -s $MOBILE_DOTFILES/aliases.sh $HOME/.aliases
ln -s $MOBILE_DOTFILES/inputrc.sh $HOME/.inputrc
ln -s $MOBILE_DOTFILES/prompt.sh $HOME/.prompt
ln -s $MOBILE_DOTFILES/exports.sh $HOME/.exports
