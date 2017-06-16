#!/usr/bin/perl
use strict;
use warnings;
=pod
my @arr=(1,3,2,6,9,4,7,10);
foreach(sort{$a<=>$b} @arr){
    print "$_\n";
}
=cut
=pod
my %hash=(a=>5,b=>10,c=>8,f=>3,g=>6,t=>9,w=>2);
foreach my $keys (sort {$hash{$a} <=> $hash{$b}} keys %hash){
    print "$keys:$hash{$keys}\n";
}
print "\n";
foreach my $keys (sort keys %hash){
    print "$keys:$hash{$keys}\n";
}
=cut
#{ $hash_hash{$a} <=> $hash_hash{$b}}
my %hash_hash=(a=>{5=>"C"},b=>{10=>"F"},c=>{8=>"G"},f=>{3=>"K"},g=>{6=>"A"},t=>{9=>"I"},w=>{2=>"U"});
foreach my $keys (keys %hash_hash){
    foreach(sort keys $hash_hash{$keys} ){
	print "$keys:$_:$hash_hash{$keys}{$_}\n";
#    foreach (sort {${$hash_hash{$keys}{$a}} <=> ${$hash_hash{$keys}{$a}}} keys %{$hash_hash{$keys}}){
    }
}
