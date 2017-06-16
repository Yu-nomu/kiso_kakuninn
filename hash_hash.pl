#!/usr/bin/perl -w
use strict;
use warnings;
my %hash;
# 2次元ハッシュに値を格納
$hash{'mala'}{'livedoor'} = 'perl';
$hash{'makotowrold'}{'orz'} = 'perl';

# 2次元ハッシュの中身を出力
foreach my $list( keys %hash ){
    foreach( keys %{ $hash { $list } } ){
        print 'username:' . "$list\n";
        print 'office:' . "$_\n";
        print 'programing:' . "$hash{$list}->{$_}\n";
    }
}
