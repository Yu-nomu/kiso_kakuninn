#!/usr/bin/perl
use strict;
use warnings;

package Unix;
sub unix{
    print "UNIX\n";
}
package Linux;
@Linux::ISA=qw(Unix);
sub linux{
    print "Linux\n";
}
package BSD;
sub bsd{
    print "BSD!\n";
}

package Foo;
@Foo::ISA=qw(Linux BSD);
@Foo::Inherit::ISA=@Foo::ISA;
sub new{
    bless[]
}
sub unix{
    my $self=shift;
    $self->Foo::Inherit::unix();
}
sub linux{
    my $self=shift;
    $self->Foo::Inherit::linux();
}
sub bsd{
    my $self=shift;
    $self->Foo::Inherit::bsd();
}
sub os_x{
    print "OS X\n";
}

package main;
my $foo=new Foo;
$foo->linux;
$foo->bsd;
$foo->os_x;
