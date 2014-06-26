ls
la
cd
la
ll
la
..
cd melroser/
cd workspace/
..
la
ln -s /home/melroser/workspace/projects/mobile_dotfiles/homedir/vim /home/melroser/.vim
la
cd .vim/
vim vimrc.vim 
..
ln -s /home/melroser/workspace/projects/mobile_dotfiles/homedir/vim/vimrc.vim /home/melroser/.vimrc
vim .vim/vimrc.vim 
cd .vim/
 git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim vimrc.vim 
vim vundles.vim 
vim vimrc.vim 
vim vundles.vim 
vim vimrc.vim 
vim
tree
vim vimrc.vim 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
vim vundles.vim 
ls
cd workspace/projects/
ls
git clone https://github.com/melroser/mobile_dotfiles.git
ls
cd mobile_dotfiles/
ls
vim setup.sh 
echo $HOME 
ls
ls
cd workspace/projects/mobile_dotfiles/
ls
git pull origin 
ls
git fetch 
git pull origin
ls
git status 
tree
ls
source setup.sh 
cd
ls
la
ls -a
cat .bashrc 
cat .bash_profile 
cat .aliases 
cat .inputrc 
cat .prompt 
ls
la
vim 
cd workspace/
cd stash/common/
git status 
make clean 
vim Makefile 
cd test/
cd cpp/
sh build.sh 
cd ../../build/cspx/
./test_utc_timestamp --gtest_output="xml:report.xml" --gtest_repeat=2
./test_utc_timestamp 
vim .backup_dotfiles/.bash_profile 
vim .backup_dotfiles/.bashrc 
ll
vim .inputrc 
fg
vim .aliases 
vim .exports 
vim .prompt 
vim .bash_profile 
ll
cd workspace/stash/common/
git fetch origin 
git pull
git pull origin
git status 
cd test/
cd cpp/
sh build.sh 
cd ../../build/cspx/
./test_utc_timestamp 
./test_utc_timestamp --gtest_output="xml:report.xml" --gtest_repeat=2
vim report.xml 
./test_utc_timestamp --gtest_output="xml:report.xml" --gtest_repeat=2 --
gtest_filter=SquareRootTest.*-SquareRootTest.Zero*
./test_utc_timestamp --gtest_output="xml:report.xml" --gtest_repeat=2 --gtest_filter=output.*-output.arg_false*
./test_utc_timestamp --gtest_output="xml:report.xml" --gtest_filter=output.*-output.arg_false*
..
cd test/
cd cpp/
touch AllTests.cpp
vim AllTests.cpp 
./build.sh 
cd ../../build/cspx/
la
rm report.xml 
cd ../../test/cpp/
vim build.sh 
cat build.sh 
vim /cspshare/opt/lib/gtest/lib
..
cd ..
..
cd gtest/
cd make/
make clean 
make all
..
ll
cd build-aux/
la
cat install-sh 
..
cd cmake/
cat internal_utils.cmake 
cd ..
cd src/
..
./configure 
tree
ll
./libtool 
./libtool clean
./libtool --mode=clean
./libtool --help --mode=clean
./libtool --mode=clean
./libtool --mode=clean /bin/rm
la
./libtool --mode=compile
./libtool --mode=compile gtest
./config
./configure 
make
ll
cd lib/
la
ll
cat libgtest_main.la 
vim libgtest_main.la 
cd /usr/local/lib
la
ls -A
cd ..
la
ls -a
cd ..
cd workspace/stash/
cd gtest/
ll
cat scripts/fuse_gtest_files.py 
ll
cd xcode/
ll
..
cd test/
ll
..
tree
cat test/gtest_break_on_failure_unittest*
ll
cd m4/
la
ll
cat gtest.m4 
..
cd ..
cd /cspshare/
cd opt/
tree
s
cd lib/
..
cd bin/
la
cd ..
cd toolchain/
la
cd ..
cd lib/
cd g
cd gtest/
tree
cd /cspshare/src/gtest/gtest-1.7.0/include/
ll
la
tree
cd ~/workspace/stash/gtest/src/
ll
..
cd test/
ll
..
cd samples/
ll
..
cd codegear/
ll
cat gtest_all.cc 
..
ll
cd codegear/
la
cd ..
cd build-aux/
la
cd ..
cd lib/
la
cd .libs/
la
ll
cat libgtest_main.a 
cat libgtest_main.la
ll
..
cd fused-src/
ll
tree
cat gtest/gtest-all.cc 
ll
la
cd gtest/
ll
cat /cspshare/src/gtest/src/main 
cls
clear
cat /cspshare/src/gtest/src/b_main.cc 
cat /cspshare/src/gtest/src/test_main.cc 
cat /cspshare/src/gtest/src/b.cc 
cat /cspshare/src/gtest/src/b.h
cat /cspshare/src/gtest/src/b_main.cc 
cat /cspshare/src/gtest/src/b_unittest.cc 
cat /cspshare/src/gtest/src/sample1.cc 
cat /cspshare/src/gtest/src/sample1.h 
cat /cspshare/src/gtest/src/sample1_unittest.cc 
cat /cspshare/src/gtest/src/test_main.cc 
cat /cspshare/src/gtest/src/b_unittest.cc 
cat /cspshare/src/gtest/make/Makefile 
cp /cspshare/src/gtest ~/bin/
cp -rf /cspshare/src/gtest ~/bin/
cd ~/bin/
cd gtest/
ll
cd make/
..
cd make/
vim Makefile 
..
tree
tree make/ src/
fg
cd make/
make clean 
ll
la
..
cd src/
cd ../make/
make all 
./b_unittest 
./a.out 
ll
..
cd src/
mkdir sample1
mv sample1.cc sample1.h sample1_unittest.cc sample1/
..
cd make/
make clean 
make all
ll
vim Makefile 
..
cd src/
s
lls
mv sample1/* .
la
rm -rf sample1/
la
../make/
make clean 
make
ll
./a.out 
./b_unittest 
./sample1_unittest 
./gtest_main.o

l
./gtest_main.o 
chmod +x gtest-all.o 
./gtest-all.o 
la
make clean 
la
cat a.out 
..
la
cd src/
la
./main 
cat b_main.cc 
..
cd make/
la
vim Makefile 
cat ../src/test_main.cc 
vim Makefile 
cd workspace/stash/common/
cd test/
cd cpp/
vim build.sh 
vim ~/bin/gtest/make/Makefile 
vim build.sh 
sh build.sh 
ll
vim build.sh 
cat /cspshare/src/gtest/gtest-1.7.0/src/gtest_man.a
cat build.sh 
cat /cspshare/opt/lib/gtest/lib/gtest_main.a 
cat /cspshare/opt/lib/gtest/lib/libgtest.a 
la
cd ~/bin/
cd gtest/
cd make/
la
make all
ll
cat gtest_main.a 
la
vim Makefile 
..
cd src/
..
cd gtest-1.7.0/
cd src/
la
vim gtest-all.cc 
vim gtest_main.cc 
la
ll
cd ~/workspace/stash/common/
cd test/
la
cd cpp/
mv AllTests.cpp test_main.cpp
la
touch test-all.cpp
vim test-all.cpp 
ll
fg
ll
vim test-all.cpp 
la
cat build.sh 
touch Makefile
vim Makefile 
ll
..
cat Makefile 
mv Makefile ../
la
mv test/cpp/Makefile .
la
cat test/cpp/build.sh 
vim Makefile 
cat test/cpp/build.sh 
ls /cspshare/opt/lib/gtest/include/
ll
fg
make clean
la
make all
vim Makefile 
make clean 
make all
vim Makefile 
cat test/cpp/build.sh 
vim Makefile 
fg
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
fg
vim Makefile 
make gtest_main.a
cd build/
la
cd cspx/
la
..
lks
la
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
make clean 
la
vim Makefile 
fg
make clean 
la
cd build/
la
cd cspx/
..
la
make all
vim Makefile 
make all
ll
la
make all
make test_utc_timestamp.o 
la
cd ./src/cpp/
la
cat utc_timestamp.h
pws
..
cd build/
cd cspx/
la
./test_utc_timestamp 
la
rm *
la
..
cd test/
la
cd cpp/
la
..
make clean 
make all
cat test/cpp/build.sh 
fg
vim Makefile 
make cleamn
make clean
make al
make all
vim Makefile 
make all
make clean 
make all
la
vim Makefile 
make clean 
make all
make gtest_main.a 
make all
la
cd build/
la
cd cspx/
la
ls -a
..
vim Makefile 
make clean
make all
make gtest_main.a
make test_utc_timestamp.o 
la
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make clean
make all
make gtest_main.a
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
make clean
make all
vim Makefile 
make all
make clean
make all
make clean
vim Makefile 
make all
vim Makefile 
make all
vim Makefile 
make all
la
vim Makefile 
la
vim Makefile 
make all
la
vim Makefile 
make all
vim Makefile 
make clean
make all
la
vim Makefile 
make all
vim Makefile 
la
ls build/cspx/
tree
cat src/cpp/utc_timestamp.h.gch 
la
rm -rf src/cpp/utc_timestamp.h.gch 
la
./utc_timestamp.o
la
chmod +x utc_timestamp.o 
la
./utc_timestamp.o 
la
make all
vim Makefile 
make all
vim Makefile 
make clean
make all
la
vim Makefile 
ll
la
make all
make clean 
make all
vim Makefile 
make all
make clean
make all
fg
vim Makefile 
make clean
make all
la
make gtest_main.a
make all
vim Makefile 
fg
vim Makefile 
make all
la
vim Makefile 
make all
la
vim Makefile 
cat test/cpp/build.sh 
vim Makefile 
fg
cat test/cpp/build.sh 
vim Makefile 
make all
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make all
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
cat test/cpp/build.sh 
vim Makefile 
make clean
make all
./build/cspx/test_utc_timestamp 
ll
vim Makefile 
make all
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
la
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
cd build/
la
cd cspx/
la
./test_utc_timestamp 
ll
..
rm cspxtest_utc_timestamp.o 
..
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
ll
cd build/
cd cspx/
la
./test_utc_timestamp 
ll
..
ll
vim Makefile 
make clean
make all
cd build/
la
cd cspx/
..
vim Makefile 
make lcean
make clean
make all
cd build/
cd cspx/
la
..
cd common/
make clean
cd build/cspx/
la
ls -a
rm *
vim ..
..
make clean
vim Makefile 
make clena
make clean
make all
cd build/
cd cspx/
..
make clean
cd build/cspx/
..
vim Makefile 
make clean
make all
cd build/cspx/
./test_utc_timestamp 
ll
..
vim Makefile 
make clean
make all
cd build/
cd cspx/
./test_utc_timestamp 
..
vim Makefile 
make clean
makea ll
make clean
ll
tree
cd build/cspx/
..
make all
vim Makefile 
make clena
make clean
make all
cd build/cspx/
./test_utc_timestamp 
..
vim Makefile 
ls test/cpp/
vim Makefile 
make clean
make all
cd build/
cd cspx/
la
..
cd common/
vim Makefile 
make clena
vim Makefile 
make clean
make all
cd build/
cd cspx/
..
cd common/
vim Makefile 
make clean
make all
vim Makefile 
ls src/cpp/
vim Makefile 
make clean
make 
l
tree
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
make
cd build/cspx/
ll
..
.
..
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make lcena
make clean
make all
vim Makefile 
make clean
make all
cd build/
cd cspx/
./test_utc_timestamp 
..
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
cd build/
cd cspx/
..
vim Makefile 
make clean
make all
cd build/
cd cspx/
..
vim Makefile 
make clean
make all
cd build/cspx/
./test_utc_timestamp 
..
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
ll
cd test/
cd cpp/
vim test_file_ops.cpp 
..
make clean
make all
vim test/cpp/test_file_ops.cpp 
..
make clean
make all
cd stash/common/
make clean
make all
vim src/cpp/file_ops.h 
..
cd stash/
cd common/
make clean
make all
vim src/cpp/file_ops.h 
cd test/
cd cpp/
..
tree
make clean
tree
rm build/cspx/test_utc_timestamp 
vim Makefile 
make clean
make all
cd src/
cd cpp/
..
cd test/
cd cpp/
vim build.sh 
make clean
..
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
cd build/
cd cspx/
./test_utc_timestamp 
..
vim Makefile 
make clean
make all
vim Makefile 
make clean
make all
cd build/
cd cspx/
./test_*
./test_utc_timestamp 
..
./build/cspx/test_utc_timestamp 
./build/cspx/test_file_ops 
vim Makefile 
make clean
vim Makefile 
make clean
make all
make test
ll
cd workspace/stash/
rm Makefile 
rm -rf gtest
rm gtest-1.7.0.zip 
ll
cd common/
git status 
git add -A
git commit -m "Working makefile with test automation"
git push origin feature/CEECSPNG-20 
ll
make clean 
make all
tree
make all
make clean 
tree
make all
make test
ll
vim Makefile 
ll
make clean 
git status 
ll
tree
rm src/cpp/utc_timestamp.h.gch 
make clean
make all
tree
make clean 
git sta
git status 
git add -A
git commit -m "removed an accitetal binary from src/cpp"
git push origin feature/CEECSPNG-20 
ll
vim Makefile 
cls
vim ~/.aliases 
cls
ll
tree
cd workspace/
cd stash/
cd common/
git status 
vim Makefile 
make test
ll
cd build/
cd cspx/
la
ls -a
..
vim Makefile 
./build/cspx/test_utc_timestamp --gtest_output="build/cspx/report.xml"
cls
ll
cd workspace/
cd stash/
cd common/
cls
ll
make all
make test
vim Makefile 
make clean
make all
make test
cls
cd workspace/stash/common/
cls
tree
vim Makefile 
make all
treew
tree
make test
ll
vim Makefile 
./build/cspx/test_utc_timestamp 
tree
vim Makefile 
cat test/cpp/test-all.cpp 
cat test/cpp/test_main.cpp 
ll
cls
ll
