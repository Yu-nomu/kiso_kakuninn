#!/usr/bin/perl                                                             
use strict;
use warnings;

my @A=(1,3,5,7,9,11);
my @B=(1,5,9);
=pod
foreach my $a (@A){
    foreach my $b (@B){
   # print "$_\n\n";
	if ($a =~ $b){
	    print "$a:$b\n";
	}
    }
}
=cut
foreach $a (@A){
    if ($a =~ @B){
	print "$a\n";
    }
}

