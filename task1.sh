if [[ -z $1 ]] ; then
    echo "usage: $0 <file_name> "
    exit 1
fi
awk -F= '/10.1.192.38/ {print $2}' $1 | awk -F\& '{print $1}' | sed -r 's/^\/+//g; s/\/$//g' | sort
