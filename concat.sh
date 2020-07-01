#!/usr/bin/env bash
URLS=( https://raw.githubusercontent.com/48klocs/dim-wish-list-sources/master/voltron.txt )

for url in ${URLS}; do
	curl ${url}
done > output$$.tmp

cat *.txt >> output$$.tmp
mv output$$.tmp sgeudim.txt
