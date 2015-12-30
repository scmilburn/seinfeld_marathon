#!/bin/bash

#ranking website
URL = http://www.vulture.com/2015/06/every-seinfeld-episode-ranked.html

#output
OUT = raw.txt 
RANKS = ranks.txt

#dir for workings
DIR = /Users/Simon/Desktop/seinfeld
cd $DIR

wget $URL -O $OUT 

PERL_PATH = /usr/bin/perl/
${PERL_PATH}seinfeld.pl $OUT 

sed -i.bak 's/&eacute;/e/g' $RANKS
sed -i.bak 's/&amp;/&/g' $RANKS

#echo -n "Enter what number ranked episode you want"
#read NUM
#echo -n "you entered: $NUM"
#ARG = "$NUMq;d"

#sed $ARG $RANKS
#while (ep_num <= 169){
#    echo last episode watched was number $(i-1) on the list
#    open http://www.primewire.ag/tv-5207-Seinfeld/season-8-episode-16
    
#    ep_num++;
#}
