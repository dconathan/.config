

all: vim tmux


### vim ###

vim: ~/.vimrc ~/.vim/autoload/plug.vim
	vim +PlugInstall +qall
~/.vimrc:
	curl -fLo ~/.vimrc https://raw.githubusercontent.com/dconathan/dotfiles/master/vimrc
~/.vim/autoload/plug.vim:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

###########

### tmux ###

tmux: ~/.tmux.conf
~/.tmux.conf:
	curl -fLo ~/.tmux.conf https://raw.githubusercontent.com/dconathan/dotfiles/master/tmux.conf

############
