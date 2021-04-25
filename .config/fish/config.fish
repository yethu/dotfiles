fish_add_path /home/yethu/thirdparty/flutter/bin
fish_add_path /usr/local/go/bin
fish_add_path /home/yethu/go/bin
fish_add_path /home/yethu/.cargo/bin

bass source ~/.nvm/nvm.sh --no-use ';' nvm use node

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/yethu/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

rvm default
