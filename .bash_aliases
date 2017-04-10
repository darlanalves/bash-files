export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_BIN="$JAVA_HOME/bin"
export M2_HOME=/path/to/maven
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"

SUBL="/Applications/Sublime Text.app/Contents/SharedSupport/bin"

export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

export PATH="./node_modules/.bin:$PATH:$JAVA_BIN:$M2:$SUBL"

# enable colors on ls command
export CLICOLOR=1

alias l1="ls -1"
alias la="ls -a"
alias ll="ls -al"
alias l="ls -al"
alias rimraf="rm -rf"

killport() {
    lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}

