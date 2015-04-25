# NAME

Map::Metro::Plugin::Map::Helsinki - Map::Metro map for Helsinki

![Requires Perl 5.16+](https://img.shields.io/badge/perl-5.16+-brightgreen.svg) [![Travis status](https://api.travis-ci.org/Csson/p5-Map-Metro-Helsinki.svg?branch=master)](https://travis-ci.org/Csson/p5-Map-Metro-Helsinki)

# VERSION

Version 0.1985, released 2015-04-26.

# SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Helsinki')->parse;

    my $graph2 = Map::Metro->new('Helsinki', hooks => 'Helsinki::Swedish')->parse;
    # now the station names are in Swedish

# DESCRIPTION

See [Map::Metro](https://metacpan.org/pod/Map::Metro) for usage information.

This distribution also includes the `Map::Metro::Plugin::Hook::Helsinki::Swedish` hook, which if applied
translates all station names into Swedish.

# Status

See [Map::Metro::Plugin::Map::Helsinki::Lines](https://metacpan.org/pod/Map::Metro::Plugin::Map::Helsinki::Lines)

This map includes:

- The two branches of the Helsinki metro \[[wikipedia](https://en.wikipedia.org/wiki/Helsinki_Metro)\]

# SOURCE

[https://github.com/Csson/p5-Map-Metro-Helsinki](https://github.com/Csson/p5-Map-Metro-Helsinki)

# HOMEPAGE

[https://metacpan.org/release/Map-Metro-Plugin-Map-Helsinki](https://metacpan.org/release/Map-Metro-Plugin-Map-Helsinki)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
