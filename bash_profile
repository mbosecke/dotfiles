
export PATH="$HOME/bin:$PATH";

# load other shell dotfiles
for file in ~/.{aliases,exports,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
