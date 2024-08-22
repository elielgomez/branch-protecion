git log --oneline --cherry $1...$2

if [ $? -ne 0 ];
then
	echo "Cant't merge"
	exit 1
else
    output=$(git log --oneline --cherry $1...$2)
    if  [ -n "$output" ]; then
        echo "Can't merge"
        exit 1
    else
        echo "You can merge"
        exit 0
    fi
fi
