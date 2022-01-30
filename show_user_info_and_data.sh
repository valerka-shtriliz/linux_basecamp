#/bin/bash

USERNAME=$1
DIR_PATH=$2

case $1 in
root)
echo "Finding “root” user data is not allowed!"
exit 42 ;;
*)
echo "Директории пользователя" $1
esac 
PROC=$(find $2 -user $1)
echo $PROC is found!
echo "Процессы пользователя"  $1

ps -u "$1" -o pid,user,comm

