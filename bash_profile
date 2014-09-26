
export PATH="$HOME/bin:$PATH";

# load other shell dotfiles
for file in ~/.{aliases,exports,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# custom prompt
export PS1="\[\033[02;34m\]\u@\h: \[\033[02;32m\]\W\$\[\033[00m\] ";
