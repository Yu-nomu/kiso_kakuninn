#!/usr/bin/perl                                                             
use strict;
use warnings;
use Array::Uniq;

my $a="1|2|3|4,5|6|7|8|9|10";
my $b="1;2;3;4,5|6|7|8|9|10";
#my @b=split(/,/,$a);
#my @c=split(/,|\|/,$a);

my ($A,$B)=split(/,/,$b);
my @C=split(/;/,$A,3);

print "$a\n";
#print "@b\n";
#print "@c\n";
#print "$A\n";
#print "$B\n";
print "@C\n";
