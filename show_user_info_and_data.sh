#/bin/bash

USERNAME=$1
DIR_PATH=$2

#if [[ '$1' == "root" ]]; then
#echo "Ошибка"
#elif [[ '$1' != "root" ]]; then
#echo "all good"
#fi;
case $1 in
root)
echo "Ошибка-пользователь root"
exit 42 ;;
*)
echo "Директории пользователя" $1
esac 
find $2 -user $1
echo "Процессы пользователя"  $1
ps -u "$1" -o pid,user,comm
