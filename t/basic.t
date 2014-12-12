use strict;
use Test::More;

use Map::Metro;

my $graph = Map::Metro->new('Helsinki')->parse;
my $routing = $graph->routing_for(qw/Kaisaniemi Rastila/);

is $routing->get_route(0)->get_step(4)->origin_line_station->station->name, 'Kulosaari', 'Found step from Kulosaari';

done_testing;
