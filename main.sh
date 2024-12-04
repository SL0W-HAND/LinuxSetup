#install basic aplications
sudo apt update
sudo apt upgrade

sudo apt install git
sudo apt install curl

#Customize the terminal
sudo apt install zsh

# For Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#add the theme spaceship 
# you can see more of this in https://github.com/spaceship-prompt/spaceship-prompt
# git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#change the theme in the .zshrc file
# sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/g' ~/.zshrc

#add the theme pure 
# you can see more of this in https://github.com/sindresorhus/pure
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# add the theme in the .zshrc file
# echo "fpath+=$HOME/.zsh/pure" >> ~/.zshrc
# echo "autoload -U promptinit; promptinit" >> ~/.zshrc
# echo "prompt pure" >> ~/.zshrc

# add the theme starship
# you can see more of this in https://starship.rs/
curl -sS https://starship.rs/install.sh | sh
#add the theme in the .zshrc file
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# plugins
#zsh-autosuggestions
# you can see more of this in https://github.com/zsh-users/zsh-autosuggestions/tree/master
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc

#zsh-syntax-highlighting
# you can see more of this in https://github.com/zsh-users/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#neoFetch
sudo apt install neofetch
#add the neofetch in the .zshrc file
echo 'neofetch' >> ~/.zshrc
#h-top
sudo apt install htop
#add the htop in the .zshrc file
echo 'htop' >> ~/.zshrc
