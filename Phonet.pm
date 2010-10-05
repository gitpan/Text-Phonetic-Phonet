# ============================================================================
package Text::Phonetic::Phonet;
# ============================================================================
use utf8;

use Moose;
extends qw(Text::Phonetic);

__PACKAGE__->meta->make_immutable;

our $VERSION = "1.0";

sub _predicates {
	return 'ccom';
}

sub _do_encode {
	my ($self,$string) = @_;
	return  ccom::phonet($string);
}

1;

=encoding utf8

=pod

=head1 NAME

Text::Phonetic::Phonet - Phonet algorithm

=head1 SYNOPSIS

	use Text::Phonetic::Phonet;

	my $phonetic = Text::Phonetic::Phonet->new();
	$encoded_string = $phonetic->encode($string);

	# See http://www.heise.de/ct/ftp/99/25/252/
	# Download for ccom:
	# ftp://ftp.heise.de/pub/ct/listings/9925-252.zip
	# ftp://ftp.heise.de/pub/ct/listings/phonet.zip
	# ftp://ftp.heise.de/pub/ct/listings/phonet.tgz

=head1 DESCRIPTION

The Phonet search algorithm is a phonetic algorithm.

=head1 AUTHOR

    Stefan Gipper <stefanos@cpan.org>, http://www.coder-world.de/

=head1 COPYRIGHT

Text::Phonetic::Phonet is Copyright (c) 2010 Stefan Gipper
All rights reserved.

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

=head1 SEE ALSO



=cut
