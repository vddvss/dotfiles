PROFILED_DIR=$HOME/.local/etc/profile.d
PROFILED_FILES=$(find $PROFILED_DIR/ -regex ".*\.sh\(\.local\)?$" | sort)

for f in $PROFILED_FILES ; do
    . $f
done

unset f PROFILED_FILES PROFILED_DIR

