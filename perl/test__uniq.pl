#!/usr/bin/perl -w
use strict;
use warnings;

use Array::Uniq;

my $f1 = 'data1';
my $f2 = 'data2';
my $f3 = 'data3';

my $refar_data1 = ofr($f1);
my $refar_data2 = ofr($f2);
my $refar_data3 = ofr($f3);

my @all;
push(@all,@$refar_data1,@$refar_data2,@$refar_data3);

my @sorted_all = sort by_number @all;
my @nr_sorted_all = uniq @sorted_all;

# make hash
my $refhh_key_data1 = make_hash(\@nr_sorted_all,$refar_data1);
my $refhh_key_data2 = make_hash(\@nr_sorted_all,$refar_data2);
my $refhh_key_data3 = make_hash(\@nr_sorted_all,$refar_data3); ##############
foreach (@nr_sorted_all){
    print "$_\t$$refhh_key_data1{$_}\t$$refhh_key_data2{$_}\t$$refhh_key_data3{$_}\n"; ######
}
exit;
sub make_hash{
    my ($refar_keys,$refar_targets) = @_;
    my %hash;
    foreach my $key (@$refar_keys){
	my $flag_element_in_array = check_element_in_array($key,$refar_targets);
	if($flag_element_in_array == 1){
	    $hash{$key} = $key;
	}else{
	    $hash{$key} = ",";
	}
    }
    return \%hash;
}
sub check_element_in_array{
    my ($x,$refar) = @_;
    foreach (@$refar){
	if($_ == $x){
	    return 1;
	}
    }
    return 0;
}
sub ofr{
    my $fin = $_[0];
    unless(open(IN,$fin)){
	die;
    }

    my @data;
    while(<IN>){
	chomp($_);
	push(@data,$_);
    }
    return \@data;
}
sub by_number {  
    if ($a < $b) {
	return -1;
    } elsif ($a == $b) {
	return 0;
    } elsif ($a > $b) {
	return 1;
    }
}
