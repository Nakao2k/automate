#!/bin/bash

# isoファイルを解凍するディレクトリ
isofile=`ls -1 ubuntu*.iso | head -n 1 | sed -e 's/\.iso$//'`

# isoファイルを解凍
7z -y x ${isofile}.iso -o${isofile}

