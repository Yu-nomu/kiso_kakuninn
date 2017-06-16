#!/usr/bin/perl -w
use warnings;
use strict;

my $file= $ARGV[0];
unless(open(FIN,"$file")){
    print"Cannot open $file\n";
    die;
}


while(<FIN>){
    chomp;
    my@array = split(/\t/,$_);
    for(my$i = 1; $i <= 22; $i++){
	if($i eq $array[2]){
	    my$i .= ".sam";
	   # my$gpcr_fasta = "gpcr_fasta_and_template_homo";
	    open (OUT, ">>$i") or die "$!";
	    print OUT "$_\n";
	}
    }
}
