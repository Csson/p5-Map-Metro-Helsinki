use 5.16.0;
use strict;
use warnings;

package Map::Metro::Plugin::Map::Helsinki  {

    # VERSION
    # ABSTRACT: Map::Metro map for Helsinki

    use Moose;
    with 'Map::Metro::Plugin::Map';

    has '+mapfile' => (
        default => 'map-helsinki.metro',
    );
    sub map_version {
        return $VERSION;
    }
    sub map_package {
        return __PACKAGE__;
    }
}


1;

__END__

=encoding utf-8

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Helsinki')->parse;

    my $graph2 = Map::Metro->new('Helsinki', hooks => 'Helsinki::Swedish')->parse;
    # now the station names are in Swedish

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

This distribution also includes the C<Map::Metro::Plugin::Hook::Helsinki::Swedish> hook, which if applied
translates all station names into Swedish.

=head1 Status

See L<Map::Metro::Plugin::Map::Helsinki::Lines>

This map includes:

=for :list
* The two branches of the Helsinki metro [L<wikipedia|https://en.wikipedia.org/wiki/Helsinki_Metro>]

=for HTML <p><a href="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Helsinki/master/static/images/helsinki.png"><img src="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Helsinki/master/static/images/helsinki.png" style="max-width: 600px" /></a></p>

=cut
