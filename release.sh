#!/bin/sh

version=v0.3.1
if [[ $# -gt 0 ]]; then
	version="$1"
fi


declare -a goos=(
	linux
	darwin
)

for os in "${goos[@]}"; do
	export GOOS=$os GOARCH=amd64
	echo building $GOOS-$GOARCH
	sh build.sh
	mv dist cron-$version
	7z a cron-$version-$GOOS-$GOARCH.zip cron-$version
	rm -rf cron-$version
	echo
done
