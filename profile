alias ec2='ssh ubuntu@50.112.249.64'
alias vps='ssh -A x61@vps363138.ovh.net'
alias ovh='ssh -A osmoz@ftp.240plan.ovh.net'
alias iris='ssh -A ec2-user@ec2-35-180-114-209.eu-west-3.compute.amazonaws.com'

### Added by the Heroku Toolbelt
export PATH="/Users/arnaud/bin:/usr/local/heroku/bin:/Users/arnaud/.rvm/bin:$PATH"

PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
PATH="$PATH:$HOME/bin/node-v8.6.0-darwin-x64/bin" # Add node to PATH
PATH="$PATH:$HOME/emsdk/emscripten/1.38.10" # Add emscripten to PATH

# Ensures homebrew packages are seen first
PATH=/usr/local/bin:$PATH

# Rust
[[ -s "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
hash rbenv 2>/dev/null && eval "$(rbenv init -)"

# JS
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
