1. ��װ��Ҫ�������( Ҫ��װvim-py2���Ƶİ汾�������������)

Ubuntu��
sudo apt-get update -y vi

sudo apt-get install -y vim ctags cscope build-essential cmake python-dev
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

Yum��
sudo apt-get update -y vi

sudo yum install -y gcc vim ctags cscope cmake gcc-c++ python-devel

sudo yum groupinstall -y "Development Tools"
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

2. ��װclang(version >= 3.3)
Ubuntu:
sudo apt-get install clang

Yum:(centos����ֻ��Դ�밲װ)
sudo yum install clang

3. ����vim��
(1) ɾ��ԭ����vim���ã�rm -Rf ~/.vim*
(2) ��vimĿ¼������ļ�������.vimĿ¼��
mkdir ~/.vim

cp -R ./vim/* ~/.vim
(3) ��.vimrc�������û��ĸ�Ŀ¼��
cp ./.vimrc ~/

4. ���밲װYouCompleteME
cd ~/.vim/bundle/YouCompleteMe
sudo chmod +x ./install.sh
sudo chmod +x ./third_party/ycmd/build.sh
./install.sh --clang-completer --system-libclang
