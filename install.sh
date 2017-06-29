#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"

echo "正在安装必备的软件^_^"
if which apt-get >/dev/null; then
    sudo apt-get update -y vi
    sudo apt-get install -y vim ctags cscope build-essential cmake python-dev
elif which yum >/dev/null; then
    sudo apt-get update -y vi
    sudo yum install -y gcc vim ctags cscope cmake gcc-c++ python-devel
    sudo yum groupinstall -y "Development Tools"	
fi
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

echo "正在编译安装libclang3.3，大约二十分钟..."
cd ./libclang3.3
sudo chmod +x ./install.sh
./install.sh
echo "libclang3.3安装完成。^_^"
cd ..

echo "正在拷贝vim的插件和配置文件..."
rm -Rf ~/.vim*
mkdir ~/.vim
cp -R ./vim/* ~/.vim
cp ./.vimrc ~/
echo "vim插件和配置文件拷贝完成^_^"

echo "正在安装YouCompleteMe插件..."
cd ~/.vim/bundle/YouCompleteMe
sudo chmod +x ./install.sh
sudo chmod +x ./third_party/ycmd/build.sh
./install.sh --clang-completer --system-libclang
echo "YouCompleteMe安装完成"

echo "安装成功^_^"
