#!/usr/bin/perl
#use strict;
#use warnings;

my %episodes = ();
while(<>){
    if(/"(\d+)"\sclass="show-season">/){ #\s(^<div class="tv_episode_item">\s<a href="([^"]+)")+[^-]+-\s([^<]+)/){
        print "season $1\n";
        #print "larger $2\n";
        #print "link $3\n";
        #print "episode $4\n";
    }
}
