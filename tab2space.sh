if [ $# -ne 1 ]; then
    echo "Usage: $0 dir spacenum"
    exit 1
fi

if [ -d $1 ]; then

    for file in `find $1 -name *.c`; do
        sed -i "s/\t/    /g" $file
    done

    for file in `find $1 -name *.h`; do
        sed -i "s/\t/    /g" $file
    done
else
    echo "$1 is not a dir"
fi