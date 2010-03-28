package CatalystX::Debug::ResponseHeaders;
use Moose;
use namespace::autoclean;

our $VERSION = '0.001';

requires 'log_response_headers';

around log_response_headers => sub {
    my $orig    = shift;
    my $c       = shift;
    my $headers = shift;    # an HTTP::Headers instance

    return unless $c->debug;

    $c->log_headers('response', $headers);
};


1;

=head1 NAME

CatalystX::Debug::ResponseHeaders - 

=head1 DESCRIPTION

=head1 METHODS

=head1 BUGS

=head1 AUTHOR

=head1 COPYRIGHT & LICENSE

Copyright 2009 the above author(s).

This sofware is free software, and is licensed under the same terms as perl itself.

=cut

