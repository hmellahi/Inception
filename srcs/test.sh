DIR="/var/at/spool/";
if [ "$(ls $DIR | wc -l)" -le 2 ]; then
    echo "empty"
else
     echo "nope"
fi