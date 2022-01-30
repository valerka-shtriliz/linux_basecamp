#/bin/bash

USERNAME=$1
DIR_PATH=$2

if [ $# -eq 0 ]; then
echo "No arguments"
exit
fi

if [ -z "$2" ]; then
echo "No argument 2"
exit
fi

case $1 in
root)
echo "Finding “root” user data is not allowed!"
exit 42 ;;
*)
echo "Директории пользователя" $1
esac 
DIR=$(find $2 -user $1)
#echo $DIR is found!

for DIR2 in $DIR 
do 
echo "$DIR2 is found!"
done
echo "Процессы пользователя"  $1

ps -u "$1" -o pid,user,comm

