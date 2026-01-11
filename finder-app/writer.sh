#!/bin/bash

if [ $# != 2 ] ; then
    echo Usage: $0 writefile writestr
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p `dirname "$writefile"` || exit 1

echo "$writestr" > "$writefile" || exit 1

