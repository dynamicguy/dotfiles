# Bash customisations to be syncronised between machines.
export PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '

export LANGUAGE=en_US.UTF-8
export LANG=$LANGUAGE
export LC_ALL=$LANGUAGE

export WORKON_HOME=~/Envs

# use vim as an editor
export EDITOR=vim

export M2_HOME="/usr/local/apache-maven-3.0.4"
export MAVEN_HOME=${M2_HOME}
export M2=${M2_HOME}"/bin"

export ROO_HOME=/Users/ferdous/sdks/sts/spring-roo-1.2.3.RELEASE
export ROO_OPTS="-Droo.bright=true"
# export MAGICK_HOME=/usr/local/ImageMagick
export GRADLE_HOME=/Users/ferdous/sdks/gradle-1.2

#export HADOOP_CONF_DIR=/Users/ferdous/.whirr/hdp-recommender
export HADOOP_OPTS="-Djava.security.krb5.realm=OX.AC.UK -Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk"
export HADOOP_HEAPSIZE=3000
export HADOOP_CLASSPATH="/usr/local/hadoop-lzo/build/hadoop-lzo-0.4.15/hadoop-lzo-0.4.15.jar"
export JAVA_LIBRARY_PATH="/usr/local/hadoop-lzo/build/hadoop-lzo-0.4.15/lib/native/Mac_OS_X-x86_64-64:/usr/local/hadoop/lib/native/Mac_OS_X-x86_64-64"

export HADOOP_HOME=/usr/local/hadoop
export MAHOUT_HOME=/usr/local/mahout
export MAHOUT_VERSION=0.6
export HIVE_HOME=/usr/local/hive/build/dist
export PIGDIR=/Users/ferdous/Apache/pig
export PIG_HOME=$PIGDIR
export WHIRR_HOME=/usr/local/whirr
export SCALA_HOME=/Users/ferdous/sdks/scala-2.9.2
export JBOSS_HOME=/Users/ferdous/sdks/jboss-as-7.1.1.Final

export PATH=$PATH:~/code/ruby/metasploit-framework:~/sdks/gsutil:$JBOSS_HOME/bin:$GRADLE_HOME/bin:$SCALA_HOME/bin:$HADOOP_HOME/bin:$MAHOUT_HOME/bin:$HIVE_HOME/bin:$WHIRR_HOME/bin:${PIGDIR}/bin:${ROO_HOME}/bin:$M2

# Some convenient aliases and functions for running Hadoop-related commands
unalias fs &> /dev/null
alias fs="hadoop fs"
unalias hls &> /dev/null
alias hls="fs -ls"

# If you have LZO compression enabled in your Hadoop cluster and
# compress job outputs with LZOP (not covered in this tutorial):
# Conveniently inspect an LZOP compressed file from the command
# line; run via:
#
# $ lzohead /hdfs/path/to/lzop/compressed/file.lzo
#
# Requires installed 'lzop' command.
#
lzohead () {
    hadoop fs -cat $1 | lzop -dc | head -1000 | less
}
# export MAVEN_OPTS=-Xmx1024m
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
PIG_OPTS="-Dmapred.child.java.opts=-Xmx1024m"
export PIG_OPTS

export ERL_ROOT=/usr/local/lib/erlang
export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview:$PATH
export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview/command:$PATH
export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview/jsbuilder:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export IDEA_HOME="/Applications/IntelliJ\ IDEA\ 11\ CE.app/"
export JETTY_HOME=/Users/ferdous/sdks/jetty
export PATH=$JETTY_HOME/bin:$PATH
export AS_HOME=/Users/ferdous/sdks/glassfish3
export ZOO_HOME="/Users/ferdous/code/java/zookeeper-3.4.3"
export PATH=$ZOO_HOME/bin:$PATH
export COBERTURA_HOME=/Users/ferdous/sdks/cobertura-1.9.4.1
export AKKA_HOME=/Users/ferdous/sdks/akka-2.0.3

PATH=$PATH:$HOME/.local/bin:$ROO_HOME/bin:$AKKA_HOME/bin # Add RVM to PATH for scripting
export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:$PATH
export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"

. ~/.z.sh


