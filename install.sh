# Create symbolic links for the dotfiles.
dotfiledir=~/.dotfiles
filenames=(
  .bashrc
  .gitconfig
  .screenrc
  .vim
  .vimrc
)

# delete files in home if they already exist and create new symlinks
for file in ${filenames[@]}; do
  if [ -f ~/$file ] || [ -d ~/$file ]; then
    rm -v ~/$file
  fi
  ln -v -s $dotfiledir/$file ~/
done
