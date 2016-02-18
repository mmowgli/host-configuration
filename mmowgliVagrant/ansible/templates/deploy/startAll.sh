#
# This is using some trickiness with piped input. I don't want to
# have scripts on N compute nodes because it's a pain to distribute
# them and keep them in sync. I want one copy of the script on the
# front end. This opens a bash session on the remote machine, then
# asks that session to read from stdin. We then pipe the contents
# of the script from the front end to the remote bash script. The
# @ sign handles the arguments passed to the script. In this case
# the startComputeNodeTomcat.sh script in the local directory
# is piped to the remote host, with the argments listed.
#
# DMcG

source settings.txt

ssh root@web1 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
#ssh root@web2 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
#ssh root@web3 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
#ssh root@web5 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
#ssh root@web6 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
#ssh root@web7 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
#ssh root@web8 'cat | bash /dev/stdin' "$@" < startComputeNodeTomcat.sh $TOMCAT
