mobile_dotfiles
===============

Simplified dotfiles for setting up a remote development over ssh

Install Guide
-------------

Begin by chosing where you would like to keep your new dotfiles. When you run the setup script they 
will by symlinked to your home folder. I use ~/Workspace/util

cd into that directory:

    cd ~/Workspace/util

    git clone https://github.com/melroser/mobile_dotfiles.git

    cd mobile_dotfiles

    sh setup.sh

Hit the ENTER key when it starts installing vim addons.

Now re-init your bash shell.

When its all finished cd into the YouCompleteMe plugin folder which should be located:

    cd ~/.vim/bundle/YouCompleteMe

Run the tests to check for the dependencies for clang, nose, pep8, pyflakes, etc. 

    sh run_tests.sh

If all goes well:

    sh install.sh


Now re-init your bash shell one last time.

Enjoy!
