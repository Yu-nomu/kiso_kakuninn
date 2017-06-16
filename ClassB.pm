#!/usr/bin/perl
package ClassB;
use ClassA;
@ISA=qw(ClassA);

sub new{
    my $class=shift;
    my $self=new ClassA;
    return bless $self;
}
1
