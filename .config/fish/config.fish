fish_add_path /home/yethu/thirdparty/flutter/bin
fish_add_path /home/yethu/thirdparty/graalvm-ce-java11-21.1.0/bin
fish_add_path /home/yethu/thirdparty/wabt-1.0.23/bin
fish_add_path /home/yethu/thirdparty/apache-maven-3.8.1/bin
fish_add_path /usr/local/go/bin
fish_add_path /home/yethu/go/bin
fish_add_path /home/yethu/.cargo/bin

set JAVA_HOME /home/yethu/thirdparty/graalvm-ce-java11-21.1.0/bin

#---#
# set -gx PATH /home/yethu/miniconda3/bin $PATH  # commented out by conda initialize
bass source ~/.nvm/nvm.sh --no-use ';' nvm use node > /dev/null 2&>/dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/yethu/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

rvm default

set -gx WASMTIME_HOME "$HOME/.wasmtime"
set -gx GPG_TTY (tty)

#--#
# wasmtime
string match -r ".wasmtime" "$PATH" > /dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH
