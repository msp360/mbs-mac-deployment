#! /bin/sh
url="$2"
filename=$(basename "$url")
workpath=$(dirname $(readlink -f $0))
curl $url -o $workpath/$filename -s
installer -pkg $workpath/$filename -target /Applications
