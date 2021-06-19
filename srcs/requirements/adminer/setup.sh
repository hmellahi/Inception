DIR="/usr/share/adminer/";
if ! [ "$(ls -A $DIR)" ]; then
    echo "empty, do something" > 0
    apt-get install adminer
else
    echo "reading from cache" > 1
fi

tail -f