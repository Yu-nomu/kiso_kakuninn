#!/usr/bin/perl
package Unix;
sub print_x{
    print "Unix!\n";
}
package Linux;
@ISA=qw(Unix);
sub new{ 
    bless{}
}
sub print_x{
    print "Linux\n";
}

package main;
my $obj=new Linux;
$obj->print_x;
