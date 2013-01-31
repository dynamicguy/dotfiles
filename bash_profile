# export AWS_ACCESS_KEY_ID=AKIAJDL7XR4FVC3YO6VQ
# export AWS_SECRET_ACCESS_KEY=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
export AWS_ACCESS_KEY_ID="AKIAJC6B7HOXOEBS2VDQ"
export AWS_SECRET_ACCESS_KEY="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"
export EC2_ACCOUNT=tasawr
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/$EC2_ACCOUNT/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/$EC2_ACCOUNT/cert-*.pem`

export PATH=/usr/local/pgsql-9.1/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mongodb/bin:/Users/ferdous/sdks/android-sdk-mac_x86/tools:/usr/local/mysql/bin:/Users/ferdous/bin:/Users/ferdous/sdks/android-sdk-mac_x86/platform-tools:${PATH}


export HSQLDB_HOME=/Users/ferdous/sdks/hsqldb
export PATH=$PATH:$HSQLDB_HOME/bin

# export GRAILS_HOME=/Users/ferdous/sdks/grails-2.0.0
export GRAILS_HOME=/Users/ferdous/Documents/sts/Documents/grails-1.3.7
export PATH=${GRAILS_HOME}/bin:${PATH}
export GRAILS_VERSION=1.3.7

export JAVA_HOME=$(/usr/libexec/java_home)

# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
# export LD_RUN_PATH=$LD_RUN_PATH:/usr/local/lib
# export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/mysql/lib
export PREFIX=/usr/local
export TERM='xterm-color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

PROMPT_HOSTNAME=$HOSTNAME
PROMPT_COLOR='0;34m'

# If I am root, set the prompt to bright red
if [ ${UID} -eq 0 ]; then
	PROMPT_COLOR='1;31m'
fi

case ${TERM} in
        xterm*)
PS1='\[\e]1;${PROMPT_HOSTNAME}\a\e]2;${PROMPT_HOSTNAME}:${PWD}\a\
\e[${PROMPT_COLOR}\][\u@${PROMPT_HOSTNAME} \w]\n \#\$ \[\e[m\]'
        ;;
        vt100)
PS1='[\u@${PROMPT_HOSTNAME} \w]\n \#\$ '
        ;;
        *)
PS1='\[\e[${PROMPT_COLOR}\][\u@${PROMPT_HOSTNAME} \w]\n \#\$ \[\e[m\]'
        ;;
esac
 
# Set the default editor to vim.
export EDITOR=vim
 
# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
export HISTSIZE=10000
export HISTFILESIZE=20000
PROMPT_COMMAND='history -a'

if [ -f ~/.bash_variables ]; then
	. ~/.bash_variables
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview:$PATH
export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview/command:$PATH
export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview/jsbuilder:$PATH

export RABBITMQ_HOME=/Users/ferdous/sdks/rabbitmq_server-2.8.1
export PATH=$RABBITMQ_HOME/sbin:$PATH
export PATH=/Users/ferdous/sdks/elasticsearch-0.19.4/bin:$PATH
export ES_MIN_MEM=2000MB
export ES_MAX_MEM=2000MB
function pgrep() {
    ps aux | grep $1 | grep -v grep
}

function pkill() {
    local pid
    pid=$(ps ax | grep $1 | grep -v grep | awk '{ print $1 }')
    kill -9 $pid
    echo -n "Killed $1 (process $pid)"
}

source /usr/local/bin/virtualenvwrapper.sh

has_virtualenv() {
    if [ -e .venv ]; then
        workon `cat .venv`
    fi
}
venv_cd () {
    cd "$@" && has_virtualenv
}
alias cd="venv_cd"

echo -e ""
echo -ne "Today is "; date
echo -e ""; cal;
echo -ne "Up time: ";uptime | awk /'up/ {print $3,$4}'
echo "";

# export PATH=/Users/ferdous/sdks/sencha:$PATH
# export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:$PATH
# export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"
