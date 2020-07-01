#!/usr/bin/env bash

for file in *.txt; do
	if [ "${file}" != "sgeudim.txt" ]; then
		if grep -qcEv '^//|^$|dimwishlist:item=[0-9]+&perks=[0-9,]+|title:|description:' ${file} ; then
			echo "Syntax error on ${file} line number $(grep -nEv '^//|^$|dimwishlist:item=[0-9]+&perks=[0-9,]+|title:|description:' ${file} )"
			exit 1
		fi
	fi
done
exit 0
