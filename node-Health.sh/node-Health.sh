################## Meta Data ##################

# Author name : Rashid
# Date : 25/05/2024
# Description : This scripts output the node health

###############################################

set -x   # This command enables the Debug mode
set -e   # this commands exit the scripts when there is an error
set -o pipefail
df -h
free -g
nrpoc   # this command is for cpu check

ps -ef | grep amazon | awk -F" " '{print $2}'
