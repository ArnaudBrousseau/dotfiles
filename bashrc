if [[ -e /nail/scripts/aliases.sh ]]; then
	# work-specific stuff
	. /nail/scripts/aliases.sh
	PATH="$PATH:$BT/tools:$BT/aws/bin"

	source /etc/profile
fi

source ~/mypy/bin/activate

# Fixes tmux permission issue
alias tmux-env='eval `~/bin/tmux-env`'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias h='history'
alias j='jobs -l'
alias type='type -a'
alias ..='cd ..'
alias play='cd ~/pg/loc'

alias waf_clean='rm -rf build/ && waf configure --languages=en_US && waf'

alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

alias fuckmemcache='memcached -p 23454'

alias nukefromorbit='cp -n ~/pg/loc/config/custom.py ~/custom.back && git clean -xfd && git submodule update --init && git submodule foreach git clean -xfd && make && cp -n ~/custom.back ~/pg/loc/config/custom.py && pgctl stop && pgctl start'

alias prod_client_errors='tools/scribereader -fe prod client_errors | grep "new_mobile" | grep -v "Service Unavailable" | grep -v ajaxError | pprint-json'
alias prod_errors='tools/scribereader -fe prod apperror | grep "mobile" | pprint-json'

alias bam='ipython ~/pg/loc/tools/interactive.py'
export PYTHONPATH=$PYTHONPATH:~/py-lib:~/bin
export PATH=~/scripts:$PATH

export HISTIGNORE="waf:ls:ll:cd:pwd"
export HISTFILESIZE=1000000
export HISTSIZE=1000000
