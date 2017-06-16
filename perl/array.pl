#!/usr/bin/perl

my @test=(1,2,3,4,5,6,7);
print "@test\n";
print "$test[4],[4]\n";
print "$test[4-1],[4-1]\n";
print "$test[4-7],[4-7]\n";
print "$test[4-8],[4-8]\n";
print "$test[$#test],\$\#\n"
