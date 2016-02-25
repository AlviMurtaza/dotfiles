oh-my-dotfiles
==============

- Install xcode cli
  - `xcode-select --install`
- setup google dns
  - 8.8.8.8
  - 8.8.4.4
- install homebrew
  - install brewfile `brew bundle`
- change shell to zsh
  - sudo sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
  - chsh -s /usr/local/bin/zsh
- setup dotfiles
  - clone dotfiles
  - rcm
    - `cd ~/.dotfiles`
    - `rcup -x theme`
- nvm
  - `mkdir ~/.nvm`
  - export NVM_DIR=~/.nvm
  - . $(brew --prefix nvm)/nvm.sh
  - nvm install stablw
  - nvm alias default stable
- rbenv
  - rbenv install 2.3.0
  - rbenv global 2.3.0
