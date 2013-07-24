#===============================================================================
#
#      PODNAME:  CLI::Gwrap::Opt.pm
#     ABSTRACT:  a single CLI option item for CLI::Gwrap
#
#       AUTHOR:  Reid Augustin
#        EMAIL:  reid@LucidPort.com
#      CREATED:  07/08/2013 11:58:12 AM
#===============================================================================

use 5.008;
use strict;
use warnings;

package CLI::Gwrap::Opt;

use Moo;
use Types::Standard qw( Int Str ArrayRef HashRef CodeRef );

our $VERSION = '0.027'; # VERSION

has 'type'        => (is => 'ro', isa => Str);
has 'name'        => (is => 'ro', isa => ArrayRef, trigger => sub {
        my ($self, $new) = @_;

        if (not exists $self->{joiner}) {
            $self->{joiner} = $new->[0] =~ m/\A-?.\z/
                ? ' '       # single letter options, joiner defaults to space
                : '=';      # otherwise, use equals sign
            }
    },
);
has 'description' => (is => 'ro', isa => Str);
has 'state'       => (is => 'ro');
has 'label'       => (is => 'ro', isa => Str);
has 'choices'     => (is => 'ro', isa => ArrayRef[Str]); # for radio buttons
has 'width'       => (is => 'ro', isa => Int);
has 'joiner'      => (is => 'ro', isa => Str);
has 'widget'      => (is => 'rw');
has 'retriever'   => (is => 'rw', isa => CodeRef);

sub name_for_display {
    my ($self, $verbatim) = @_;

    return $self->label if (defined $self->label);  # override

    my $unaliased = $self->name_for_CLI;
    my $aliased = $self->name->[1];

    if ($aliased
        and $unaliased
        and $self->name->[0] ne $aliased) {
        return "$unaliased ($aliased)";
    }
    return $unaliased || $aliased;
}

sub name_for_CLI {
    my ($self, $verbatim) = @_;

    my $unaliased = $self->name->[0];     # unaliased
    return $unaliased if ($verbatim or not $unaliased);
    return "-$unaliased" if (length $unaliased == 1);
    return "--$unaliased";
}

1;

__END__

=pod

=head1 NAME

CLI::Gwrap::Opt.pm - a single CLI option item for CLI::Gwrap

=head1 VERSION

version 0.027

=head1 DESCRIPTION

CLI::Gwrap::Opt encapsulates individual options for CLI::Gwrap.

=head2 ATTRIBUTES

=over

=item type => 'string'
A string naming the type of option (check, radio, string, etc).

=item name => 'string'
This is the name of the option as used on the command line.  When this
option is set, the defaultjoiner is also determined, unless the joiner has
already been set.

=item description' => (is => 'ro', isa => Str);
A short, (possibly) more useful description of the option.

=item state => 'string'
Initial state of the option.

=item label => 'string'
Overrides the normal name/description rules for the option label in the
GUI.

=item choices => [ 'choices' ]
Reference to an array of the choices for a radio option.

=item width => number
The number of pixels for input widgets for which a width might make sense
(string, integer, etc)

=item joiner => 'string'
How to join the option name to the opion value.  Default for short
(single-letter) options is a space, and for long options is an equals sign.

=item widget => object
Used by the GUI wrapper to store a pointer to the widget for this option.

=item retriever => coderef
Used by the GUI wrapper to store a reference to a subroutine that can read
back the value of the option widget.

=back

=head1 SEE ALSO
CLI::Gwrap

=head1 AUTHOR

Reid Augustin <reid@hellosix.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Reid Augustin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
