#!/usr/bin/perl -w
use strict;
use warnings;
use Array::Uniq;

my $file='/Users/nomura/Desktop/基礎・確認スクリプト/foreach.txt';
unless(open(IN,$file)){
    print "Cannot\n";
    die;
}

while(<IN>){
    chomp($_);
    my @tekitou=split(/ /,$_);
     print "@tekitou\n";
    foreach my $teki(@tekitou){
	print "$teki\n";  
    }
}
