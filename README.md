# Personal `.vimrc` file
1. Clone the repo, and move into it
2. Copy the file inside the home folder `cp .vimrc ~/.vimrc`
3. Install `homebrew` if not present
4. Install node with `brew install node` (coc plugins require node)
5. Install the plugin manager
 ```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
4. Install the plugins, open vim and type `:PlugInstall`
