# dotfiles

```
sudo apt update -y && sudo apt upgrade -y
```
might need a reboot


```
sudo apt install -y git \
                    stow \
                    build-essential \
                    neovim \
                    zsh \
                    curl \
                    zoxide \
                    tmux \
```

Clone dotfiles

```
git clone git@github.com:ramos21rodrigo/dotfiles.git
cd dotfiles
stow .
```

[oh-my-zsh](https://ohmyz.sh/) + [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) + [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
```

[Gogh](https://gogh-co.github.io/Gogh/) for themes

``` 
themes
```
