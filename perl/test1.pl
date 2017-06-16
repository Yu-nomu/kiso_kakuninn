#!/usr/bin/perl 
use strict;
use warnings;
use Array::Uniq;

my $test1='/Users/nomura/Desktop/test1.txt';
unless(open(FIN1,$test1)){
    print "Cannot open file\n";
    die;
}
my $test2='/Users/nomura/Desktop/test2.txt';
unless(open(FIN2,$test2)){
    print "Cannot open file\n";
    die;
}
my @AA=<FIN1>;
my @BB=<FIN2>;
my $A;
my $B;
my %AAA;
my %BBB;


chomp @AA;
chomp @BB;
my @tekitou=(@AA,@BB);
my @sort_tekitou= uniq sort @tekitou;

foreach $A(@AA){
    chomp $A;
    $AAA{$A}=$A;
}
foreach $B(@BB){
    chomp $B;
    $BBB{$B}=$B;
}
my $ele;
my @tekiteki;
foreach $ele (@sort_tekitou){
    if($AAA{$ele}){
	print "$ele\t$ele";
    }else{
	print "$ele\t";
    }
    if($BBB{$ele}){
	print "\t$ele";
    }else{
        print "\t";
    }
    print "\n";
}
