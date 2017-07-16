#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

if [[ -x $BASE16_SHELL/scripts/$COLOR_THEME.sh ]] ; then
    . $BASE16_SHELL/scripts/$COLOR_THEME.sh
fi

if [[ -n "dircolors" ]] && [[ -f $HOME/.dircolors ]] ; then 
    eval `dircolors $HOME/.dircolors`
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

# CONDA BASH COMPLETION
eval "$(register-python-argcomplete conda)"

# ENV VARIABLES
export SPARK_HOME=/opt/apache-spark/
export SCALA_HOME=/usr/share/scala/
export PYSPARK_PYTHON=ipython
export EDITOR=vim
export PYTHONPATH=$PYTHONPATH:/home/devin/.pythonpath
export PYOPENCL_CTX=0
export PATH=$PATH:/home/devin/.gem/ruby/2.3.0/bin/:/home/devin/.bin/:/home/devin/.config/yarn/global/node_modules/.bin
export GRB_LICENSE_FILE=/home/devin/.gurobi/gurobi.lic
export NLTK_DATA=/home/devin/.nltk_data
export CLASSPATH=/home/devin/.jars:$NLTK_DATA/custom_models/stanford-parser-full-2016-10-31

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"
export CUDA_HOME=/opt/cuda
export BUILD_HOME=/tmp/
export BROWSER=inox
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export IDEA_HOME=${HOME}/idea

export XDG_CURRENT_DESKTOP=gnome 
export DESKTOP_SESSION=gnome 
export DE=gnome 
export QT_QPA_PLATFORMTHEME=gtk3

# ALIASES
alias powersave='sudo cpupower frequency-set -g powersave'
alias performance='sudo cpupower frequency-set -g performance'
alias pac='sudo pacman -S'
alias copy='xclip -selection c'
alias rm='trash'

# BASH COMPLETIONS
. <(kubectl completion bash)
