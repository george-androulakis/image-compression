#! /bin/bash

BASE_DIR="/uploads/"

declare -a JPEGS=$(find ${BASE_DIR}* -type f -name *.jpg);

for inputfile in ${JPEGS[@]}; do
	echo "converting image $inputfile ..."
	convert $inputfile -quality 50 $inputfile
done
