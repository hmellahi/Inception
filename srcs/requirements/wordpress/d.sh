# if [ -d "wordpress" && !$(ls -A wordpress)" ]; then
#     echo "yes"
# else
#     echo "reading from cache"
# fi

FILE=""
DIR="tmp"
# init
# look for empty dir 
if [ "!$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
else
    echo "$DIR is Empty"
fi

if [ -d $DIR ] 
then
    if [ "!$(ls -A $DIR)" ]; then
        echo "yes"
    fi
else
    echo "Error: Directory /path/to/dir does not exists."
fi

target=$1
if [ "$(find "$target" -mindepth 1 -print -quit 2>/dev/null)" ]; then
    echo "Not empty, do something"
else
    echo "Target '$target' is empty or not a directory"
fi