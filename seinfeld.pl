#!/usr/bin/perl
#use strict;
#use warnings;

my %episodes = ();
while(<>){
    if(/(\d+)\.(\s|<\/b>\s<b>)"?((The|Male)\s[^"]+)"/){
        #print "1: $1 2: $2 3: $3 4: $4\n";
        $episodes{$1} = $3;
    }
}

print "~RANKED EPISODES~\n";
my $counter = 1;
my $ep_ct = scalar keys %episodes;
my $ranks = 'rank.txt';

open (my $fh, '>>', $ranks) or die "Could not open $ranks";
while ($counter <= $ep_ct){
    print "$counter. $episodes{$counter}\n";
    print $fh "$counter. $episodes{$counter}\n";
    $counter++;
}
close $fh;
