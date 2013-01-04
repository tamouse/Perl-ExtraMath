package ExtraMath;

use 5.014002;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use ExtraMath ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
min
max
sum
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
min
max
sum	
);

our $VERSION = '0.01';


sub min {
    unless (check_numeric(@_)) {
	warn "min only works on numeric arguments";
	return 0;
    }
    my ($start, $compare);
    $start = shift;
    while(@_) {
	$compare = shift;
	$start = $compare if $compare < $start;
    }
    return $start;
}

sub max {
    unless (check_numeric(@_)) {
	warn "max only works on numeric arguments";
	return 0;
    }
    my ($start, $compare);
    $start = shift;
    while(@_) {
	$compare = shift;
	$start = $compare if $compare > $start;
    }
    return $start;
}

sub sum {
    unless (check_numeric(@_)) {
	warn "sum requires numeric arguments";
	return 0;
    }
    my $start;
    $start = shift;
    while(@_) {
	$start += shift;
    }
    return $start;
}

sub check_numeric {
    for (my $i = 0; $i < $#_; $i++) {
	return 0 unless $_[$i] =~ /^\d+$/;
    }
    return 1;
}


1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

ExtraMath - Perl extension to provide some extra math functions

=head1 SYNOPSIS

  use ExtraMath;
  $a = min(1,2,3,4,5); # 1
  $b = max(1,2,3,4,5); # 5
  $c = sum(1,2,3,4); # 10

=head1 DESCRIPTION

Provide some rudimentary extra numeric methods.

=head2 EXPORT

None by default.

=head1 SEE ALSO



=head1 AUTHOR

Tamara Temple, E<lt>tamouse@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Tamara Temple

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
