# Setup neovim

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

if [ ! -L $HOME/.config/nvim ]; then
  ln -sv $HOME/.dotfiles/nvim $HOME/.config/nvim
fi

if [ ! -f $HOME/.local/share/nvim/site/autoload/plug.vim ]; then
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

if [ ! -d $HOME/.nvimenv ]; then
	if hash python3 2>/dev/null; then
		sudo apt install python3 python3-dev python3-venv
	fi

	sh -c 'python3 -m venv $HOME/.nvimenv'
	sh -c '~/.nvimenv/bin/pip install --upgrade pip'
fi

sh -c '~/.nvimenv/bin/pip install pynvim flake8 isort black'
