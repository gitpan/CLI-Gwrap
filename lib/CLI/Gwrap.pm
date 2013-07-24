#===============================================================================
#
#      PODNAME:  CLI::Gwrap.pm
#     ABSTRACT:  GUI wrapper for command line scripts and programs
#
#       AUTHOR:  Reid Augustin (REID), <reid@lucidport.com>
#        EMAIL:  reid@LucidPort.com
#      CREATED:  07/06/2013 07:38:28 PM
#===============================================================================

use 5.008;
use strict;
use warnings;

package CLI::Gwrap;
use Moo;
use Types::Standard qw( Str Int Bool ArrayRef InstanceOf );
use Carp;

our $VERSION = '0.026'; # VERSION

use CLI::Gwrap::Opt;
use Exporter 'import';
# export the widget builder functions
our @EXPORT_OK = qw(
    check
    radio
    string
    hash
    integer
    float
    incremental
    label
);

has 'command'       => (is => 'ro', trigger => sub {
        my ($self, $new) = @_;
        $self->{command} = _normalize_name($new);
    } );
has 'main_opt'      => (is => 'ro', isa => InstanceOf['CLI::Gwrap::Opt']);
has 'description'   => (is => 'ro', isa => Str);
has 'gwrapper_name' => (is => 'ro', isa => Str, default => sub { 'wxGrid' });
has 'gwrapper'      => (is => 'rw');
has 'columns'       => (is => 'rw', isa => Int, default => 3);
has 'verbatim'      => (is => 'ro', isa => Bool);
has 'help'          => (is => 'ro', isa => Str);
has 'persist'       => (is => 'ro', isa => Bool);
has 'opts'          => (is => 'ro', isa => ArrayRef[InstanceOf['CLI::Gwrap::Opt']]);
has 'advanced'      => (is => 'ro', isa => ArrayRef[InstanceOf['CLI::Gwrap::Opt']]);
has 'timeout'       => (is => 'ro', isa => Int);

sub BUILD {
    my ($self, $params) = @_;

    croak "No command to Gwrap!\n" if(not $self->command);

    my $plugin = "CLI/Gwrapper/$self->{gwrapper_name}.pm";
    require $plugin;
    $plugin = "CLI::Gwrapper::$self->{gwrapper_name}";

    my %opts = (
        title         => $self->command->[0],
        help_callback => \&help_callback,
        exec_callback => \&exec_callback,
    );
    for my $opt ( qw(
        command
        main_opt
        description
        verbatim
        help
        persist
        columns
        opts
        advanced
        timeout
    ) ) {
        $opts{$opt} = $self->$opt if (defined $self->$opt);
    }
    $self->gwrapper( $plugin->new(%opts) );
}

sub title {
    my ($self, $new) = @_;

    if (@_ > 1) {
        $self->gwrapper->title($new);
    }
    return $self->gwrapper->title;
}

sub run {
    my ($self) = @_;

    $self->gwrapper->run;
}

#
# Functions (not methods!) to create specific CLI program option types
#
BEGIN {

    # convert NAME into [ 'name', 'alias' ] form for simplicity
    sub _normalize_name {
        my ($name) = @_;

        $name = $_[1] if (ref $name eq __PACKAGE__);
        if (ref $name) {
            return $name if (ref $name eq 'ARRAY');
            carp "NAME must be a string or a ref to an array with two elements, not $name\n";
        }
        return [$name, $name];  # name and alias the same
    }

    # create the CLI::Gwrap::Opt generators:
    for my $func (qw(
            check
            radio
            string
            hash
            integer
            float
            incremental
            label
        )) {
        my $func_string = qq{
            sub $func {
                my (\$name, \$description, \%opts) = \@_;

                return CLI::Gwrap::Opt->new(
                    type        => '$func',
                    name        => _normalize_name(\$name),
                    description => \$description,
                    %opts,
                );
            }
        };
        eval $func_string; ## no critic
        die $@ if $@;
    }
}

1;

__END__

=pod

=head1 NAME

CLI::Gwrap.pm - GUI wrapper for command line scripts and programs

=head1 VERSION

version 0.026

=head1 SYNOPSIS

 use CLI::Gwrap;

 CLI::Grawp->new(
    command     => 'ls'             # the CLI name
    description => 'List info ...', # from the man page
    ...                             # see Example below
 );

=head1 DESCRIPTION

CLI::Gwrap builds a GUI wrapper around a Command Line Interface (CLI)
script or program.  The GUI presents the CLI options to the user and then
runs the CLI program.

The specific GUI is chosen with a plugin system.  To write a new Gwrapper,
follow the default CLI::Gwrapper::wxGrid as an example.

=head2 Methods

=over

=item CLI::Gwrap->new( %hash )

Creates and runs a new GUI Wrapper.  B<%hash> describes the particulars of
how the GUI should look and behave for the CLI command.

CLI::Gwrap is intended to make traditionally difficult CLI programs more
easily accessible.  To help, there are places where CLI::Gwrap accepts
either a simple name string, or a two-element array reference where the
first element is the 'actual' name (as used by the CLI program) and the
second element is a more descriptive alias.  In the following
documentation, those places are denoted by 'NAME'.

Most CLI programs have at least one option that is not explicitly named.
For example:

    ls foo*

The "foo*" option is not 'named', but 'ls' expects it to be a file glob.
In CLI::Gwrap, this option should be denoted by B<main_opt> in the call
to CLI::Gwrap->new().  The NAME should be set to the empty string
(''), or more helpfully, aliased to an empty string:

    [ '', 'file or directory GLOB pattern' ]

which shows the explanation in the GUI, but adds no explicit option on the
CLI program command line.

B<%hash> keys available to B<new()> are:

=over

=item command => NAME

The CLI program name.

=item main_opt => OPTION

Most CLI programs take one (or more) unnamed options.  Specify that option
here.  For a description of OPTION, see OPTION FUNCTIONS below.

=item description => 'text'

A description of the CLI program, possibly taken from the man page.  This
is typically displayed by the GUI when the mouse hovers over the CLI
program name.

=item gwrapper_name => 'Wrapper_Name'

Select a different Graphic Wrappers pluggin.  The default wrapper is
'wxGrid'.  Wrappers are installed in the CLI/Gwrapper directory.

=item verbatim => true

Most CLI programs take options with either a single dash (single
letter) or double dash preceding them.  CLI::Gwrap by default automatically
prepends a single dash to single letter options, and a double dash to
longer options.  Setting a true B<verbatim> option suppresses this
behavior, options must then be entered exactly as the CLI program expects
them.

=item help => 'help_option'

Many CLI programs can be induced to print out a help message of some kind.
If the B<help> key is used, the value should be the CLI program option that
produces the help message.  CLI::Gwrap will add a 'Help' button to the GUI
which, when pressed, will create a text window of the output (from STDOUT
or STDERR).

=item persist => true

The GUI normally closes as soon as the 'Execute' button is pressed.
<persist> suppresses automatic closing - the user must press the 'Close'
button.

=item opts => [ I<common OPTIONS> ]

=item advanced => [ I<advanced OPTIONS> ]

The CLI program options are listed in these array references.  If
B<advanced> is included, the CLI::Gwrap adds an 'Advanced' button which
exposes the less common options (which are normally hidden).

The elements of these arrays are built by calling the OPTION FUNCTIONS (see
below).

=back

=back

=head1 OPTION FUNCTIONS

Option functions are used in the B<opts> and B<advanced> arguments to
B<new()> to populate the CLI program option fields in the GUI.

Option functions all take a NAME as the first argument, and a 'description'
as the second.  The description is typically displayed when the user hovers
the mouse over the option NAME or field.  Additional named options may
follow.  Named options include:

=over

=item state => 'initial state'
The initial state of the option, interpreted in the context of the option
(e.g: B<check> is true/false, B<string> is a string, B<radio> is one of the
choices).

=item label => 'override label'
A string to override the normal label derived from the NAME.  This can be
set (e.g) to the empty string to disply no label.

=item width => pixels
The number of pixels for the width of a B<string>, B<integer>, or
B<increment> widget.

=item choices => [ qw( array of choices ) ]
Passes a reference to an array of choices for a B<radio> option.

=item joiner => 'string'
The 'joiner' to use for the CLI command line between the option name and
the option value.  The default is for single-letter options to use a single
space:

    ... -x 4 ...

and for long options to use an equals sign:

    ... --long_opt=ABC

=back

The available option functions are:

=over

=item check( NAME, 'description', %opts )

Create a checkbox in the GUI for 'flag' type options. B<$opt->{state}> is
interpreted as true or false.

=item radio( NAME, 'description', %opts )

Create a radio button or drop-down combo box.  Set the choices with

    B<$opts->{choices} => [ qw( the array of choices ) ],

The first element of the arrayref must be the CLI program's default.

B<$opts->{state}>, if it exists, must be one of the choices.

If the default is selected, this NAME will not be explicitly called out.

=item string( NAME, 'description', %opts )

=item hash( NAME, 'description', %opts )

Create a text-entry widget.  B<$opts->{state}>, if it exists, is set to the
initial value.  $opts->{joiner} defaults to ' ' (space) for single letter
(short) options, and '=' (equals) for long options.

B<string> is for single-use options.

B<hash> is used for muliple-use options: the value is split into tokens (on
whitespace), and NAME is used once for each token.  For example, if the
user enters "AAA bbb    XyZ", the CLI program is called with:

        '... NAME=AAA NAME=bbb NAME=XyZ ...'

=item integer( NAME, 'description', %opts )

=item float( NAME, 'description', %opts )

Create an integer or floating point number entry.  <float> allows normal
perl floating point representations.

=item incremental( NAME, 'description', %opts )

Create an input that looks like an B<integer> entry, but when the CLI
program is called, CLI::Gwrap will specify NAME the number of times set in
the spinner.  For example, a multi-level verbose flag can be specified
with:

        incremental( [ 'v', 'verbose' ] )

If the user sets the value to 3, the CLI program is called with:

        '... -v -v -v ...'

=item label( NAME, 'description', %opts )

This is not actually an option, and no option is passed to the CLI program from a B<label>.  It is
used to create non-option tags and spacers in the GUI.

=back

=head1 EXAMPLE

Here is part of the gwrap_ls.pl example, the entire listing can be found in
the /bin directory of the distribution package:

 use CLI::Gwrap qw(check radio string hash integer float incremental);

 my $gwrap = CLI::Gwrap->new(
    command     => 'ls',
    description => 'list directory contents',
    columns     => 4,
    help        => '--help',
    persist     => 1,
    main_opt    => hash(
        [
            '',             # this option has no name
            'pattern(s)',   # alias (description)
        ],
        # 'hover' help
        qq[shell glob pattern(s) to match file or directory names],
    ),
    opts     => [
        check(
            'all',  # option name
            'do not ignore entries starting with .',
        ),

        check(
            [
                'C',        # option name
                'columns',  # either a long name or help for a short name
            ],
            'list entries by columns'
        ),
     .
     .
     .
    ],

    advanced    => [
        check(
            'almost-all',
            'do not list implied . and ..',
        ),

        radio(
            'color',
            qq[colorize the output. Defaults to 'always' or can be 'never' or 'auto'],
            choices => ['always', 'never', 'auto'], # the choices
        ),
    ]

 );

=head1 SEE ALSO

=head1 AUTHOR

Reid Augustin <reid@hellosix.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Reid Augustin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
