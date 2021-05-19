fish_add_path /home/yethu/thirdparty/flutter/bin
fish_add_path /home/yethu/thirdparty/graalvm-ce-java11-21.1.0/bin
fish_add_path /usr/local/go/bin
fish_add_path /home/yethu/go/bin
fish_add_path /home/yethu/.cargo/bin

set JAVA_HOME /home/yethu/thirdparty/graalvm-ce-java11-21.1.0/bin

#set -gx PATH /home/yethu/thirdparty/flutter/bin $PATH
#set -gx PATH /usr/local/go/bin $PATH
#set -gx PATH /home/yethu/go/bin $PATH
#set -gx PATH /home/yethu/.cargo/bin $PATH
#---#
# set -gx PATH /home/yethu/miniconda3/bin $PATH  # commented out by conda initialize
bass source ~/.nvm/nvm.sh --no-use ';' nvm use node

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/yethu/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

rvm default
