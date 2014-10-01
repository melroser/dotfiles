dotfiles
========

Customized dotfiles for quickly and easily setting up a development environment from the shell.

Install Guide
-------------

Begin by chosing where you would like to keep your new dotfiles. When you run the setup script all the dotfiles in homedir will be symlinked to your home folder. I typically use ~/Workspace/util

cd into the install directory:

    cd ~/Workspace/util
    git clone https://github.com/melroser/dotfiles.git
    cd dotfiles
    sh setup.sh

Hit the ENTER key when vundle begins installing your vim addons.

Now re-init your bash shell.

When its all finished cd into the YouCompleteMe plugin folder which should be located in:

    cd ~/.vim/bundle/YouCompleteMe

Run the tests to check for the dependencies for clang, nose, pep8, pyflakes, etc. 

    sh run_tests.sh

If all goes well:

    sh install.sh

Now re-init your bash shell one last time.

Enjoy!
