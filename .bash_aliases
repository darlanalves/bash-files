export PATH="./node_modules/.bin:$PATH"

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

