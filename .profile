function bash_git_branch
{
  git branch 2> /dev/null | grep \* | python -c "print '['+raw_input()[2:]+']'" 2> /dev/null
}
export PS1="\w \[\033[32m\]\$(bash_git_branch)\[\033[00m\] $ "
. `brew --prefix`/etc/profile.d/z.sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS="--R"
#export LEIN_JAVA_CMD=drip
alias ls="ls -G"
alias pgstart='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias pgstop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias pglog='tail -100f /usr/local/var/postgres/server.log'
alias ftpload='sudo launchctl load -w /System/Library/LaunchDaemons/ftp.plist'
alias ftpunload='sudo launchctl unload /System/Library/LaunchDaemons/ftp.plist'
alias ftpstart='sudo launchctl start com.apple.ftpd'
alias ftpstop='sudo launchctl stop com.apple.ftpd'
alias rd='mvn clean install tomcat:redeploy -Dmaven.test.skip=true'
alias jf='python -mjson.tool'
alias c=clear
alias mcp='mvn clean package -DskipTests=true'
# ec2
alias ec2='ssh -i /Users/lokeshwaran/work/others/aws/ec2/test-amazon-linux-hosts.pem ec2-user@ec2-54-251-18-20.ap-southeast-1.compute.amazonaws.com'
alias ubuntu='ssh -i /Users/lokeshwaran/work/others/aws/ec2/lokesh-standford-edu.pem ubuntu@ec2-54-254-115-161.ap-southeast-1.compute.amazonaws.com'
alias dnsclear='sudo killall -HUP mDNSResponder'
#alias ssh=/Users/lokeshwaran/bin/ssh-host-color.sh
alias tcpmon='java -cp /Users/lokeshwaran/bin/axis.jar org.apache.axis.utils.tcpmon'
alias e='emacsclient -t'
alias ec='emacsclient -c'
