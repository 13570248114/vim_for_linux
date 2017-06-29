1. 安装必要的软件：( 要安装vim-py2类似的版本，否则后面会出错)

Ubuntu：
sudo apt-get update -y vi

sudo apt-get install -y vim ctags cscope build-essential cmake python-dev
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

Yum：
sudo apt-get update -y vi

sudo yum install -y gcc vim ctags cscope cmake gcc-c++ python-devel

sudo yum groupinstall -y "Development Tools"
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

2. 安装clang(version >= 3.3)
Ubuntu:
sudo apt-get install clang

Yum:(centos好像只能源码安装)
sudo yum install clang

3. 配置vim：
(1) 删除原本的vim配置：rm -Rf ~/.vim*
(2) 将vim目录里面的文件拷贝到.vim目录下
mkdir ~/.vim

cp -R ./vim/* ~/.vim
(3) 将.vimrc拷贝到用户的根目录：
cp ./.vimrc ~/

4. 编译安装YouCompleteME
cd ~/.vim/bundle/YouCompleteMe
sudo chmod +x ./install.sh
sudo chmod +x ./third_party/ycmd/build.sh
./install.sh --clang-completer --system-libclang
