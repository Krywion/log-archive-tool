#/bin/bash

archive_log() {
    local path=$1
    local file_name=logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz
    tar -czf $file_name $path
}

case "$#" in 
    0)
        echo "Error: No path specified"
	echo "Usage: $0 path"
	exit 1
	;;
    1)
        path="$1"

	if [ -e "$path" ]; then
	    archive_log $1
	    
	else
	    echo "Error: Path $1 not found"
	    exit 1
	fi
	;;
    *)
	echo "Error: to many arguments"    
	echo "Usage: $0 path"
        exit 1
	;;
esac
