export TERM=xterm-256color
 
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/duythinht/.zshrc'
 
autoload -Uz compinit colors && colors
compinit
# End of lines added by compinstall
 
# Enable prompt themes
autoload -U promptinit
promptinit
PROMPT="[%B%F{172}%n@%m%f %F{29}%c%f%b]$ "
# Fix ls colors Mac OS X
LSCOLORS="Gxfxcxdxbxegedabagacad"
# End of prompt theme
 
# Run commands alias
[ -f ~/.alias ] && while read line; do eval "alias $line"; done < ~/.alias
 
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
