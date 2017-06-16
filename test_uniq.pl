#!/bin/perl
use strict;
use warnings;
use Array::Uniq;

my $num="0,1,2,3,4,5,6,7,8,9,10";
my @arr_num=split(/,/,$num);
foreach (@arr_num){
    chomp $_;
    my $aaa=&test($_);
    print "$aaa\n";
}

sub test{
    my ($numnum)=@_;
    my $num1;
    if($numnum < 5){
       $num1="$numnum+a";
    }else{
	$num1=$numnum;
    }
    return $num1;    
}

