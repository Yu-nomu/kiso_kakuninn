#!/usr/bin/perl
use Array::Uniq;

my @test = qw (1 2 3 4 5 5 7 9 2 4 5 1 10);
print "@test\n";
my @sorted = sort @test;
print @sorted,"\n";
my @uniq = uniq @sorted;
print "@uniq","\n";

exit;
