location=$(pwd)

rm ~/.vimrc
rm ~/.tmux.conf

cd ~

ln -s "$location"/.vimrc .vimrc
ln -s "$location"/.tmux.conf .tmux.conf
