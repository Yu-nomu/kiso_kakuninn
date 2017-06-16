#!/usr/bin/perl
package ClassA;
sub new{
    my $class=shift;
    my $self={x=>10};
    bless $self,$class;    
}
sub print_x{
    my $self=shift;
    print "$self->{x},\n";
}
1
