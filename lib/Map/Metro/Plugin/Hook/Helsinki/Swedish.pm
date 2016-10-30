use 5.10.0;
use strict;
use warnings;

package Map::Metro::Plugin::Hook::Helsinki::Swedish;

# ABSTRACT: Use the Swedish station names
# AUTHORITY
our $VERSION = '0.1987';

use Moose;
use namespace::autoclean;
use Map::Metro::Hook;
use Encode qw/encode_utf8 decode_utf8/;
use utf8;

sub register {
    before_add_station => sub {

        my $self = shift;
        my $station = shift;
        $station->set_name($self->station_translation($station->name));

    };
}

sub station_translation {
    my $self = shift;
    my $name = shift;

    my $to_swedish = {
        'Ruoholahti' => 'Gräsviken',
        'Kamppi' => 'Kampen',
        'Rautatientori' => 'Järnvägstorget',
        'Kaisaniemi' => 'Kajsaniemi',
        'Hakaniemi' => 'Hagnäs',
        'Sörnälnen' => 'Sörnäs',
        'Kalasatama' => 'Fiskhamnen',
        'Kulosaari' => 'Brändö',
        'Herttoniemi' => 'Hertonäs',
        'Siilitie' => 'Igelkottsvägen',
        'Itäkeskus' => 'Östra centrum',
        'Myllypuro' => 'Kvarnbäcken',
        'Kontula' => 'Gårdsbacka',
        'Mellunmäki' => 'Mellungsbacka',
        'Puotila' => 'Botby gård',
        'Rastila' => 'Rastböle',
        'Vuosaari' => 'Nordsjö',
    };
    return $to_swedish->{ $name } // $name;
}

1;
