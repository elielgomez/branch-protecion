git fetch
output=$(git log --oneline --cherry $1...$2)

if [ -n "$output" ]; then
	echo "Cant't merge"
	exit 1
else
	echo "You can merge"
	exit 0
fi
