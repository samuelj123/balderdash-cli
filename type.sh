#!/bin/bash
clear
Red='\033[0;31m'
Yellow='\033[1;33m'
# shuf -i1-6 -n1
CT=$(shuf -e 'WW' 'PP' 'II' 'MM' 'LL' -n1)
if [ $CT = 'WW' ]
	then 
		CTA="WEIRD WORDS\n"
	elif [ $CT = 'PP' ]
	then
		CTA="PECULIAR PEOPLE\n"
	elif [ $CT = 'II' ]
	then
		CTA="INCREDIBLE INITIALS\n"
	elif [ $CT = 'MM' ]
	then
		CTA="MARVELLOUS MOVIES\n"
	elif [ $CT = 'LL' ]
	then
		CTA="LAUGHABLE LAWS\n"
fi
NUM="$(shuf -i1-20 -n1)"
# NUM=1
# CARD=$(cat cards.csv | grep ${CT} )
cat cards.csv | grep ${CT}|sed -n "${NUM}"p| while IFS=, read -r col1 col2 col3

do 

CARD="\n$col2
\n$col3\n" 
echo -ne $CTA
echo -ne '-----------------'
echo -ne $CARD
done 
