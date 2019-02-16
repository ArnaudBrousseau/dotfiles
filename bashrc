alias ec2='ssh ubuntu@50.112.249.64'
alias vps='ssh -A x61@vps363138.ovh.net'
alias ovh='ssh -A osmoz@ftp.240plan.ovh.net'
alias iris='ssh -A ec2-user@ec2-35-180-114-209.eu-west-3.compute.amazonaws.com'

# Downloaded that from
# https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
# It gives the magic __git_ps1 bash function for PS1 integration.
source ~/.git-prompt.sh


#  Customize BASH PS1 prompt to show current GIT repository and branch.

#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time24h="\t"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

__git_ps1_custom () {
  echo '$(git branch &>/dev/null; \
  if [ $? -eq 0 ]; then \
    git status | grep "nothing to commit" > /dev/null; \
    if [ "$?" -eq "0" ]; then \
      # @4 - Clean repository - nothing to commit \
      echo "'$IBlack'"$(__git_ps1 " {%s}")'$Color_Off'; \
    else \
      # @5 - Changes to working tree \
      echo "'$IRed'"$(__git_ps1 " {* %s}")'$Color_Off'; \
    fi
fi)'
}

export PS1="$IBlack$Time24h$Color_Off $BBlue\u\[\e[0;39m\]@$BGreen\h$Color_Off:$BYellow$PathShort$Color_Off$(__git_ps1_custom '%s')\n$BGreen=>$Color_Off "

### Added by the Heroku Toolbelt
export PATH="/Users/arnaud/bin:/usr/local/heroku/bin:/Users/arnaud/.rvm/bin:$PATH"

PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
PATH="$PATH:$HOME/bin/node-v8.6.0-darwin-x64/bin" # Add node to PATH
PATH="$PATH:$HOME/emsdk/emscripten/1.38.10" # Add emscripten to PATH

# Ensures homebrew packages are seen first
PATH=/usr/local/bin:$PATH

# Rust
[[ -s "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# assume-role
source `which assume-role`
export SAML_IDP_ASSERTION_URL="https://sso.cbhq.net/api/v1/saml/sso"
export AWS_ASSUME_ROLE_AUTH_SCHEME="saml"
export SAML_IDP_REQUEST_BODY_TEMPLATE='{"service": "aws", "email": "$saml_user", "password": "$saml_password"}'
export SAML_IDP_NAME='saml-idp'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
