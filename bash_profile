if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export HOMEBREW_GITHUB_API_TOKEN=180d5050fc7be83dfe7d2409683fffb847a74d91

export PATH="$HOME/.cargo/bin:$PATH"
