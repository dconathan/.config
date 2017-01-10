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
    alias ls='ls --color=auto'
fi

pdf() { zathura $1 & exit; }

#PS1='[\u@\h \W]\$ '

export SPARK_HOME=/opt/apache-spark/
#export SCALA_HOME=/usr/share/scala/
export CLASSPATH=$HOME/.jars/*
export PYSPARK_PYTHON=ipython
export EDITOR=vim
export PYTHONPATH="${PYTHONPATH}:$HOME/code"
export PYOPENCL_CTX=0
export PATH=$PATH:/home/devin/.gem/ruby/2.3.0/bin/:/home/devin/.bin/
export GRB_LICENSE_FILE=/home/devin/.gurobi/gurobi.lic
export NLTK_DATA=~/.nltk_data
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"
export CUDA_HOME=/opt/cuda

# aliases
alias matlab='wmname LG3D && matlab -nosoftwareopengl -nosplash'
alias matlabc='matlab -nodisplay -nosplash'
alias connectCS='ssh -XY conathan@tdc1.cs.wisc.edu'
alias mountCS='sshfs conathan@tdc1.cs.wisc.edu: /home/devin/.cshome -o idmap=user -o allow_other'
alias powersave='sudo cpupower frequency-set -g powersave'
alias performance='sudo cpupower frequency-set -g performance'
alias python='ipython'
alias gameboy='visualboyadvance-m'
# alias vim='nvim'
alias pac='sudo pacman -S'
alias PAC='makepkg -sric'
alias mountPhone='go-mtpfs ~/mnt/phone'
alias unmountPhone='fusermount -u ~/mnt/phone'
alias CP='rsync --progress'
alias MV='rsync --progress --remove-source-files'
alias du='du -hs'
alias copy='xclip -selection c'
alias rm='trash'
alias vimide='nvim -u ~/.vimiderc'
