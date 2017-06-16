#!/usr/bin/perl -w
use strict;
use warnings;

my $fin = 'data';
open(IN,$fin);

my @chouhukuari_sites;
whlie(<IN>){
    my @line = split(/:/,$_);
    my $site = $line[1];
    push(@chouhukuari_sites,$site);
}

close(IN);

my @uniq_sites = uniq(@chouhukuari_sites);
my @chouhukunomi_sites = sabun(\@chouhukuari_sites,\@uniq_sites);
my @uniq_chouhukunomi_sites = uniq(@chouhukunomi_sites);

foreach my $target_site (@uniq_chouhukunomi_sites){
    open(IN,$fin);
    my @target_lines;
    while (<IN>){
	my @line = split(/:/,$_);
	if($line[1] == $target_site){
	    push(@target_lines,$line);
	}
    }
    close(IN);




}


exit;
