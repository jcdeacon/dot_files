location=$(pwd)

if [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi
if [ -f ~/.tmux.conf ]; then
    rm ~/.tmux.conf
fi

cd ~

ln -s "$location"/.vimrc .vimrc
ln -s "$location"/.tmux.conf .tmux.conf
