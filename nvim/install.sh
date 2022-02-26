if [ ! -L $HOME/.config/nvim ]; then
  ln -sv $HOME/.dotfiles/nvim $HOME/.config/nvim
fi

if [ ! -f $HOME/.local/share/nvim/site/autoload/plug.vim ]; then
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

if [ ! -d $HOME/.nvimenv ]; then
	if hash python3.10 2>/dev/null; then
		sudo apt install python3.10 python3.10-dev python3.10-venv
	fi

	sh -c 'python3.10 -m venv $HOME/.nvimenv'
	sh -c '~/.nvimenv/bin/pip install --upgrade pip'
fi

sh -c '~/.nvimenv/bin/pip install pynvim flake8 isort black'
